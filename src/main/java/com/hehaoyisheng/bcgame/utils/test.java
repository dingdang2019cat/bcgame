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
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class test {
    public static void main(String[] args) throws Exception {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        BcLotteryOrderManager bcLotteryOrderManager = (BcLotteryOrderManager) applicationContext.getBean("bcLotteryOrderManager");
        UserManager userManager = (UserManager) applicationContext.getBean("userManager");
        MoneyHistoryManager moneyHistoryManager = (MoneyHistoryManager) applicationContext.getBean("moneyHistoryManager");
        TraceManager traceManager = (TraceManager) applicationContext.getBean("traceManager");
        BcLotteryOrder bcLotteryOrder1 = new BcLotteryOrder();
        bcLotteryOrder1.setOrderId("c15263594539930");
        List<BcLotteryOrder> bcLotteryOrders = bcLotteryOrderManager.select(bcLotteryOrder1, null, null, null, null);
        BcLotteryOrder bcLotteryOrder = bcLotteryOrders.get(0);
        bcLotteryOrder.setLotteryHaoMa("4,0,7,7,4");
        bcLotteryOrder.setWinMoney(bcLotteryOrder.getOdds() * 1 * bcLotteryOrder.getMultiple() * (bcLotteryOrder.getMinBonusOdds() / 2));
        bcLotteryOrder.setWinZhuShu(1);
        LotteryCommon.addMoneyAndHistory(1, bcLotteryOrderManager, traceManager, bcLotteryOrder, userManager, moneyHistoryManager);
    }
}
