package com.hehaoyisheng.bcgame.utils;

import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.dao.BcLotteryOddsDAO;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.entity.BcLotteryOdds;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.pay.Pay;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.File;
import java.io.IOException;

public class test {
    public static void main(String[] args) throws IOException {

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        //LotteryThread lotteryThread = (LotteryThread) applicationContext.getBean("lotteryThread");
        //lotteryThread.lottery("cqssc", "20180121024", "0,0,0,1,0");
        BcLotteryOddsDAO bcLotteryOddsDAO = (BcLotteryOddsDAO) applicationContext.getBean("bcLotteryOddsDAO");
        Document document = Jsoup.parse(new File("Z:\\bcgame\\bcgame\\src\\main\\webapp\\k3.jsp"), "utf-8");
        Elements elements = document.getElementsByClass("lottTypeDetail");
        for(Element element : elements){
            String playCode = element.attr("data-show").replace("#", "");
            String playName = element.attr("data-title");
            System.out.println("playName.put(\"" + playCode + "\", \"" + playName + "\");");
            /*
            String max = element.attr("data-maxbonus");
            String bouns = element.attr("data-bonus");
            BcLotteryOdds bcLotteryOdds = new BcLotteryOdds();
            BcLotteryOdds bcLotteryOdds1 = new BcLotteryOdds();
            bcLotteryOdds.setLotteryType("ssc");
            bcLotteryOdds1.setLotteryType("ssc");
            bcLotteryOdds.setPlayType(playCode);
            bcLotteryOdds1.setPlayType(playCode);
            if(max.contains("-")){
                bcLotteryOdds.setBounsType(0);
                bcLotteryOdds.setCount(1);
                bcLotteryOdds.setOdds(Double.valueOf(max.split(" ")[0]));

                bcLotteryOdds1.setBounsType(1);
                bcLotteryOdds1.setCount(1);
                bcLotteryOdds1.setOdds(Double.valueOf(bouns.split(" ")[0]));
            }else {
                bcLotteryOdds.setBounsType(0);
                bcLotteryOdds.setCount(1);
                bcLotteryOdds.setOdds(Double.valueOf(max));

                bcLotteryOdds1.setBounsType(1);
                bcLotteryOdds1.setCount(1);
                bcLotteryOdds1.setOdds(Double.valueOf(bouns));
            }

            bcLotteryOddsDAO.insert(bcLotteryOdds);
            bcLotteryOddsDAO.insert(bcLotteryOdds1);
            */

        }
        System.out.println(elements.size());

        //Pay.b2cPay(100D, "", null, System.currentTimeMillis() + "");


        /*
        String result = HttpClientUtil.sendHttpGet("http://pub.icaile.com/jsk3kjjg.php");

        Document document = Jsoup.parse(result);

        Elements elements = document.getElementsByClass("nth-child-1");
        Elements elements1 = document.getElementsByClass("nth-child-3");

        for(int i = 0; i < elements.size(); i++){
            System.out.println(elements.get(i).text() + "    " + elements1.get(i).text());
        }
        */
    }
}
