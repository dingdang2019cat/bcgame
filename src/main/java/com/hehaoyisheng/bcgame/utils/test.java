package com.hehaoyisheng.bcgame.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.common.BaseData;
import com.hehaoyisheng.bcgame.common.GameLottery;
import com.hehaoyisheng.bcgame.common.LotteryCommon;
import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.dao.*;
import com.hehaoyisheng.bcgame.entity.*;
import com.hehaoyisheng.bcgame.entity.vo.Province;
import com.hehaoyisheng.bcgame.job.BuchangJob;
import com.hehaoyisheng.bcgame.manager.*;
import com.hehaoyisheng.bcgame.pay.Pay;
import org.apache.http.Header;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.util.CollectionUtils;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class test {
    public static void main(String[] args) throws Exception {
        /*
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time1 = simpleDateFormat.format(new Date());
        Date date = simpleDateFormat.parse(time1.split(" ")[0] + " 00:00:00");
        String sss1 = ((System.currentTimeMillis() - date.getTime()) / 60000) + "";
        System.out.println(sss1);
        */

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");


        LotteryThread lotteryThread = (LotteryThread) applicationContext.getBean("lotteryThread");
        lotteryThread.lottery("txssc", "201805211440","8,7,4,6,3");




        /*
        BcLotteryOrderManager bcLotteryOrderDAO = (BcLotteryOrderManager)applicationContext.getBean("bcLotteryOrderManager");
        TraceManager traceManager = (TraceManager)applicationContext.getBean("traceManager");
        UserManager userManager = (UserManager)applicationContext.getBean("userManager");
        MoneyHistoryManager moneyHistoryManager = (MoneyHistoryManager)applicationContext.getBean("moneyHistoryManager");
        BcLotteryOrder bcLotteryOrder1 = new BcLotteryOrder();
        bcLotteryOrder1.setOrderId("c15269104033540");
        BcLotteryOrder bcLotteryOrder = bcLotteryOrderDAO.select(bcLotteryOrder1, null, null, null, null).get(0);
        bcLotteryOrder.setWinMoney(bcLotteryOrder.getOdds() * 1 * bcLotteryOrder.getMultiple() * (bcLotteryOrder.getMinBonusOdds() / 2));
        bcLotteryOrder.setLotteryHaoMa("7,6,6,4,2");
        bcLotteryOrder.setWinZhuShu(2);
        LotteryCommon.addMoneyAndHistory(2, bcLotteryOrderDAO, traceManager, bcLotteryOrder, userManager, moneyHistoryManager);


        /*
        String s = simpleDateFormat.format(new Date()).split(" ")[0] + " 00:00:00";
        Date date = simpleDateFormat.parse(s);
        System.out.println((System.currentTimeMillis() - date.getTime()) / 60000);
        */

    }
}
