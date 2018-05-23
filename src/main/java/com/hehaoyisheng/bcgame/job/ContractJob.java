package com.hehaoyisheng.bcgame.job;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.Contract;
import com.hehaoyisheng.bcgame.entity.Recharge;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import com.hehaoyisheng.bcgame.manager.ContractManager;
import com.hehaoyisheng.bcgame.manager.RechargeManager;
import com.hehaoyisheng.bcgame.manager.UserManager;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class ContractJob {

    private final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");

    private final SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Resource
    private UserManager userManager;

    @Resource
    private BcLotteryOrderManager bcLotteryOrderManager;

    @Resource
    private RechargeManager rechargeManager;

    @Resource
    private ContractManager contractManager;

    public void execute(){
        try {
            User user = new User();
            List<User> list = userManager.select(user, null, null, null, null, null, null);
            for (User user1 : list) {
                if (user1.getFandian() != 14.4) {
                    continue;
                }
                if (user1.getFenhong() == 0) {
                    continue;
                }
                double money = 0D;
                double winMoney = 0D;
                double gongzi = 0D;
                long sysTime = System.currentTimeMillis() - 86400000L;
                String s = simpleDateFormat.format(sysTime);
                Date startTime = simpleDateFormat1.parse(s + " 00:00:00");
                Date endTime = simpleDateFormat1.parse(s + " 23:59:59");
                BcLotteryOrder bcLotteryOrder = new BcLotteryOrder();
                bcLotteryOrder.setParentList(user1.getParentList() + "%");
                List<BcLotteryOrder> bcLotteryOrders = bcLotteryOrderManager.select(bcLotteryOrder, null, null, startTime, endTime);
                for(BcLotteryOrder bcLotteryOrder1 : bcLotteryOrders){
                    money += bcLotteryOrder1.getBuyMoney();
                    winMoney += bcLotteryOrder1.getWinMoney();
                }
                Recharge recharge = new Recharge();
                recharge.setParentList(user1.getParentList());
                List<Recharge> rechargeList = rechargeManager.select(recharge, null, null, startTime, endTime);
                for(Recharge recharge1 : rechargeList){
                    if(recharge1.getRechargeType() != null && recharge1.getRechargeType() == 1){
                        gongzi += recharge.getRealAmount();
                    }
                }
                double cumulativeProfit = money - winMoney - gongzi;

                Integer dividend = 10;
                double dividendAmount = 0D;
                if(cumulativeProfit < 0){
                    dividendAmount = 0;
                }else if(cumulativeProfit < 60000){
                    dividendAmount = cumulativeProfit * 0.1;
                }else if(cumulativeProfit < 100000){
                    dividendAmount = cumulativeProfit * 0.12;
                    dividend = 12;
                }else if(cumulativeProfit < 200000){
                    dividendAmount = cumulativeProfit * 0.15;
                    dividend = 15;
                }else if(cumulativeProfit < 300000){
                    dividendAmount = cumulativeProfit * 0.18;
                    dividend = 18;
                }else if(cumulativeProfit < 500000){
                    dividendAmount = cumulativeProfit * 0.21;
                    dividend = 21;
                } else{
                    dividendAmount = cumulativeProfit * 0.26;
                    dividend = 26;
                }
                Contract contract = new Contract();
                contract.setAccount(user1.getUsername());
                contract.setCumulativeSales(money);
                contract.setWinMoney(winMoney);
                contract.setGongzi(gongzi);
                contract.setCumulativeProfit(cumulativeProfit);
                contract.setDividend(dividend);
                contract.setDividendAmount(dividendAmount);

            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
