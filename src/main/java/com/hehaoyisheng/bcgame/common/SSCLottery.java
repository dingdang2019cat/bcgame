package com.hehaoyisheng.bcgame.common;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.MoneyHistory;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.manager.*;
import org.springframework.util.CollectionUtils;

import java.util.List;

public class SSCLottery implements Runnable{

    private BcLotteryOrderManager bcLotteryOrderManager;

    private UserManager userManager;

    private MoneyHistoryManager moneyHistoryManager;

    private List<BcLotteryOrder> bcLotteryOrders;

    private String looteryContent;

    private TraceManager traceManager;

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

    public SSCLottery(BcLotteryOrderManager bcLotteryOrderManager, TraceManager traceManager, UserManager userManager, MoneyHistoryManager moneyHistoryManager,  List<BcLotteryOrder> bcLotteryOrders, String looteryContent){
        this.bcLotteryOrderManager = bcLotteryOrderManager;
        this.bcLotteryOrders = bcLotteryOrders;
        this.moneyHistoryManager = moneyHistoryManager;
        this.looteryContent = looteryContent;
        this.userManager = userManager;
        this.traceManager = traceManager;
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
                }else if(playCode.contains("lhh")){
                    winCount = GameLottery.lhh(looteryContent, betNumber);
                }else {
                    winCount = GameLottery.sscFsLottery(looteryContent, betNumber, playCode);
                }
                int betCount = 0;
                if(BetCountData.hashmap.get(bcLotteryOrder.getPlayCode()) != null){
                    betCount = BetCountData.hashmap.get(bcLotteryOrder.getPlayCode());
                }
                if(bcLotteryOrder.getBuyZhuShu() < (betCount * 0.3)){
                    if((bcLotteryOrder.getOdds() * winCount * bcLotteryOrder.getMultiple() * (bcLotteryOrder.getMinBonusOdds() / 2)) > 20000){
                        bcLotteryOrder.setWinMoney(20000);
                    }else{
                        bcLotteryOrder.setWinMoney(bcLotteryOrder.getOdds() * winCount * bcLotteryOrder.getMultiple() * (bcLotteryOrder.getMinBonusOdds() / 2));
                    }
                }else{
                    bcLotteryOrder.setWinMoney(bcLotteryOrder.getOdds() * winCount * bcLotteryOrder.getMultiple() * (bcLotteryOrder.getMinBonusOdds() / 2));
                }
                bcLotteryOrder.setWinZhuShu(winCount);
                LotteryCommon.addMoneyAndHistory(winCount, bcLotteryOrderManager, traceManager, bcLotteryOrder, userManager, moneyHistoryManager);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }
}