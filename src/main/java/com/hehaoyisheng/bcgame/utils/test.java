package com.hehaoyisheng.bcgame.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.common.*;
import com.hehaoyisheng.bcgame.dao.*;
import com.hehaoyisheng.bcgame.entity.*;
import com.hehaoyisheng.bcgame.entity.vo.Province;
import com.hehaoyisheng.bcgame.entity.vo.Result;
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
        Date date1 = simpleDateFormat.parse("2018-05-26 08:46:15");
        String time1 = simpleDateFormat.format(date1);
        System.out.println(time1);
        Date date = simpleDateFormat.parse(time1.split(" ")[0] + " 00:00:00");
        String sss1 = ((date1.getTime() - date.getTime()) / 60000) + "";
        Long sss2 = ((System.currentTimeMillis() - date.getTime()) % 60000) / 1000;
        System.out.println(sss1 + "  " + sss2);
        */




        String result = HttpClientUtil.sendHttpGet("https://www.369kj.com/pks/getPksDoubleCount.do?date=&lotCode=10001");
        System.out.println(result);
        //ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        /*
        LotteryThread lotteryThread = (LotteryThread) applicationContext.getBean("lotteryThread");
        lotteryThread.lottery("txssc", "201805261170","0,5,2,0,7");
        */

        /*
        BcLotteryOrderManager bcLotteryOrderManager = (BcLotteryOrderManager)applicationContext.getBean("bcLotteryOrderManager");
        BcLotteryOrder bcLotteryOrder = new BcLotteryOrder();
        bcLotteryOrder.setOrderId("g15273345322640");
        List<BcLotteryOrder> list = bcLotteryOrderManager.select(bcLotteryOrder, null, null, null, null);

        list.get(0).setStatus(10);
        bcLotteryOrderManager.update(list.get(0));
        User u = new User();
        u.setUsername(user.getUsername());
        userManager.update(u, list.get(0).getBuyMoney());
        return Result.success("操作成功！");
        */



        /*
        String ss = HttpClientUtil.sendHttpGet("http://www.e3sh.com/txffc/");

        Document document = Jsoup.parse(ss);
        Elements elements = document.getElementsByTag("tr");
        for(int e = 3; e < elements.size(); e++){
            Element element = elements.get(e);
            String[] ee = element.text().split(" ");
            System.out.println(ee[0] + ee[2] + "   " + ee[3]);

        }
        */




        /*
        BcLotteryOrderManager bcLotteryOrderDAO = (BcLotteryOrderManager)applicationContext.getBean("bcLotteryOrderManager");
        TraceManager traceManager = (TraceManager)applicationContext.getBean("traceManager");
        UserManager userManager = (UserManager)applicationContext.getBean("userManager");
        MoneyHistoryManager moneyHistoryManager = (MoneyHistoryManager)applicationContext.getBean("moneyHistoryManager");
        BcLotteryOrder bcLotteryOrder1 = new BcLotteryOrder();
        bcLotteryOrder1.setOrderId("c15270943593810");
        BcLotteryOrder bcLotteryOrder = bcLotteryOrderDAO.select(bcLotteryOrder1, null, null, null, null).get(0);
        bcLotteryOrder.setWinMoney(bcLotteryOrder.getOdds() * 1 * bcLotteryOrder.getMultiple() * (bcLotteryOrder.getMinBonusOdds() / 2));
        bcLotteryOrder.setLotteryHaoMa("9,7,3,7,6");
        bcLotteryOrder.setWinZhuShu(1);
        bcLotteryOrderDAO.update(bcLotteryOrder);
        //LotteryCommon.addMoneyAndHistory(1, bcLotteryOrderDAO, traceManager, bcLotteryOrder, userManager, moneyHistoryManager);


        /*
        String s = simpleDateFormat.format(new Date()).split(" ")[0] + " 00:00:00";
        Date date = simpleDateFormat.parse(s);
        System.out.println((System.currentTimeMillis() - date.getTime()) / 60000);
        */

    }
}
