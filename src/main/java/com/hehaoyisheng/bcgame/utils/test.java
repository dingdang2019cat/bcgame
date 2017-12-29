package com.hehaoyisheng.bcgame.utils;

import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
    public static void main(String[] args) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        BcLotteryHistoryManager bcLotteryHistoryManager = (BcLotteryHistoryManager)applicationContext.getBean("bcLotteryHistoryManager");
        BcLotteryHistory bcLotteryHistory = new BcLotteryHistory();
        bcLotteryHistory.setLotteryType("test");
        bcLotteryHistory.setNums("test");
        bcLotteryHistory.setSeasonId("test");
        bcLotteryHistoryManager.select(bcLotteryHistory);
        System.out.println(123456789);
    }
}
