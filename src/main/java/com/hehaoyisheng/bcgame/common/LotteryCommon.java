package com.hehaoyisheng.bcgame.common;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.MoneyHistory;
import com.hehaoyisheng.bcgame.entity.Trace;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import com.hehaoyisheng.bcgame.manager.MoneyHistoryManager;
import com.hehaoyisheng.bcgame.manager.TraceManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import java.util.List;

public class LotteryCommon {
    public synchronized static void addMoneyAndHistory(int winCount, BcLotteryOrderManager bcLotteryOrderManager, TraceManager traceManager, BcLotteryOrder bcLotteryOrder, UserManager userManager, MoneyHistoryManager moneyHistoryManager){
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
        bcLotteryOrderManager.update(bcLotteryOrder);


        if(bcLotteryOrder.getGaofan() > 0){
            //TODO
            double money = bcLotteryOrder.getBuyMoney() * bcLotteryOrder.getGaofan() / 100;
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
            userManager.update(u, money);
        }

        /*
        double fandian = list.get(0).getFandian();
        String[] ss = bcLotteryOrder.getParentList().split(",");
        for(int i = ss.length - 1; i >= 0; i--){
            if(ss[i].equals(bcLotteryOrder.getAccount()) || StringUtils.isEmpty(ss[i])){
                continue;
            }
            User u1 = new User();
            u1.setUsername(ss[i]);
            List<User> list1 = userManager.select(u1, null, null, null, null, null, null);
            System.out.println("-------------------------------------------------" + list1.get(0).getFandian() + "------------------------" + fandian);
            double fandian1 = list1.get(0).getFandian() - fandian;
            fandian = list1.get(0).getFandian();
            double money = bcLotteryOrder.getBuyMoney() * fandian1 / 100;
            System.out.println("-------------------------------------------------" + bcLotteryOrder.getBuyMoney() + "------------------------" + money);

            MoneyHistory moneyHistory = new MoneyHistory();
            moneyHistory.setAccount(ss[i]);
            moneyHistory.setBalance(list1.get(0).getMoney() + money);
            moneyHistory.setAmount(money);
            moneyHistory.setParentList(list1.get(0).getParentList());
            moneyHistory.setSeasonId(bcLotteryOrder.getQiHao());
            moneyHistory.setLotteryName(bcLotteryOrder.getLotName());
            moneyHistory.setPlayName(bcLotteryOrder.getPlayName());
            moneyHistory.setChangeType("下级投注返现");
            moneyHistoryManager.insert(moneyHistory);
            System.out.println("-------------------------------------------------" + u1.getUsername() + "------------------------" + money);
            userManager.update(u1, money);
        }


        //追单取消
        if(StringUtils.isEmpty(bcLotteryOrder.getTraceId())){
           return;
        }
        Trace trace = new Trace();
        trace.setId(bcLotteryOrder.getTraceId());
        List<Trace> list1 = traceManager.select(trace, null, null, null, null);
        if(CollectionUtils.isEmpty(list1)){
            return;
        }
        if(list1.get(0).getIsWinStop() == 0){
            Trace trace1 = new Trace();
            trace1.setId(list1.get(0).getId());
            trace1.setId(list1.get(0).getId());
            return;
        }
        list1.get(0).setStatus(1);
        */
    }
}
