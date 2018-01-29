package com.hehaoyisheng.bcgame.common;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.MoneyHistory;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.manager.BcLotteryOddsManager;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import com.hehaoyisheng.bcgame.manager.MoneyHistoryManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import org.springframework.util.CollectionUtils;

import java.util.List;

public class SSCLottery implements Runnable{

    private BcLotteryOrderManager bcLotteryOrderManager;

    private UserManager userManager;

    private MoneyHistoryManager moneyHistoryManager;

    private List<BcLotteryOrder> bcLotteryOrders;

    private String looteryContent;

    public List<BcLotteryOrder> getBcLotteryOrders() {
        return bcLotteryOrders;
    }

    public void setBcLotteryOrders(List<BcLotteryOrder> bcLotteryOrders) {
        this.bcLotteryOrders = bcLotteryOrders;
    }

    public String getLooteryContent() {
        return looteryContent;
    }

    public void setLooteryContent(String looteryContent) {
        this.looteryContent = looteryContent;
    }

    public SSCLottery(BcLotteryOrderManager bcLotteryOrderManager, UserManager userManager, MoneyHistoryManager moneyHistoryManager,  List<BcLotteryOrder> bcLotteryOrders, String looteryContent){
        this.bcLotteryOrderManager = bcLotteryOrderManager;
        this.bcLotteryOrders = bcLotteryOrders;
        this.moneyHistoryManager = moneyHistoryManager;
        this.looteryContent = looteryContent;
        this.userManager = userManager;
    }

    public void run() {
        if(CollectionUtils.isEmpty(bcLotteryOrders)){
            return;
        }
        for(BcLotteryOrder bcLotteryOrder : bcLotteryOrders){
            try {
                bcLotteryOrder.setLotteryHaoMa(looteryContent);
                String playCode = bcLotteryOrder.getPlayCode();
                String betNumber = bcLotteryOrder.getHaoMa();
                int winCount = 0;
                if(playCode.contains("dwd")){
                    winCount = GameLottery.sscDwdLottery(looteryContent, betNumber);
                }else if(playCode.contains("group")){
                    winCount = GameLottery.sscZxLottery(looteryContent, betNumber, playCode);
                }else if(playCode.contains("none")){
                    winCount = GameLottery.sscNotDwdLottery(looteryContent, betNumber, playCode);
                }else if(playCode.contains("and")){
                    winCount = GameLottery.sscHzLottery(looteryContent, betNumber, playCode);
                }else if(playCode.contains("kd")){
                    winCount = GameLottery.sscKdLottery(looteryContent, betNumber, playCode);
                }else if(playCode.contains("tema")){
                    winCount = GameLottery.sscTmLottery(looteryContent, betNumber);
                }else if(playCode.contains("dxds")){
                    winCount = GameLottery.sscDxdsLottery(looteryContent, betNumber);
                }else {
                    winCount = GameLottery.sscFsLottery(looteryContent, betNumber, playCode);
                }
                bcLotteryOrder.setWinMoney(bcLotteryOrder.getOdds() * winCount * (bcLotteryOrder.getMinBonusOdds() / 2));
                bcLotteryOrder.setWinZhuShu(winCount);
                User u = new User();
                u.setUsername(bcLotteryOrder.getAccount());
                List<User> list = userManager.select(u, null, null, null, null, null, null);
                if(CollectionUtils.isEmpty(list)){
                    continue;
                }
                if(winCount > 0){
                    bcLotteryOrder.setStatus(1);
                    userManager.update(u, bcLotteryOrder.getWinMoney());
                    MoneyHistory moneyHistory = new MoneyHistory();
                    moneyHistory.setAccount(bcLotteryOrder.getAccount());
                    moneyHistory.setBalance(list.get(0).getMoney());
                    moneyHistory.setAmount(bcLotteryOrder.getWinMoney());
                    moneyHistory.setParentList(list.get(0).getParentList());
                    moneyHistory.setSeasonId(bcLotteryOrder.getQiHao());
                    moneyHistory.setLotteryName(bcLotteryOrder.getLotName());
                    moneyHistory.setPlayName(bcLotteryOrder.getPlayName());
                    moneyHistory.setChangeType("中奖返现");
                    moneyHistoryManager.insert(moneyHistory);
                }else {
                    bcLotteryOrder.setStatus(2);
                }

                if(bcLotteryOrder.getBounsType() == 1){
                    double money = bcLotteryOrder.getBuyMoney() * 0.125;
                    userManager.update(u, money);
                    MoneyHistory moneyHistory = new MoneyHistory();
                    moneyHistory.setAccount(bcLotteryOrder.getAccount());
                    moneyHistory.setBalance(list.get(0).getMoney() + money);
                    moneyHistory.setAmount(money);
                    moneyHistory.setParentList(list.get(0).getParentList());
                    moneyHistory.setSeasonId(bcLotteryOrder.getQiHao());
                    moneyHistory.setLotteryName(bcLotteryOrder.getLotName());
                    moneyHistory.setPlayName(bcLotteryOrder.getPlayName());
                    moneyHistory.setChangeType("高返返现");
                    moneyHistoryManager.insert(moneyHistory);
                }
                bcLotteryOrderManager.update(bcLotteryOrder);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}