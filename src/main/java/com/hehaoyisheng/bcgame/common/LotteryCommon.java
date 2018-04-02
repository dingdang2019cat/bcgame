package com.hehaoyisheng.bcgame.common;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.MoneyHistory;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import com.hehaoyisheng.bcgame.manager.MoneyHistoryManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import org.springframework.util.CollectionUtils;

import java.util.List;

public class LotteryCommon {
    public synchronized static void addMoneyAndHistory(int winCount, BcLotteryOrderManager bcLotteryOrderManager, BcLotteryOrder bcLotteryOrder, UserManager userManager, MoneyHistoryManager moneyHistoryManager){
        User u = new User();
        u.setUsername(bcLotteryOrder.getAccount());
        List<User> list = userManager.select(u, null, null, null, null, null, null);
        if(CollectionUtils.isEmpty(list)){
            return;
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
            //TODO
            double money = bcLotteryOrder.getBuyMoney() * bcLotteryOrder.getGaofan();
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
    }
}
