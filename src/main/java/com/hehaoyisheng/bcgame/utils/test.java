package com.hehaoyisheng.bcgame.utils;

import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
    public static void main(String[] args) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        LotteryThread lotteryThread = (LotteryThread) applicationContext.getBean("lotteryThread");
        lotteryThread.lottery("cqssc", "20180121024", "0,0,0,1,0");
    }
}
