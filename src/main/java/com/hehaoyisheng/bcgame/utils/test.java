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

        //ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        //LotteryThread lotteryThread = (LotteryThread) applicationContext.getBean("lotteryThread");
        //lotteryThread.lottery("cqssc", "20180121024", "0,0,0,1,0");
        //BcLotteryOddsDAO bcLotteryOddsDAO = (BcLotteryOddsDAO) applicationContext.getBean("bcLotteryOddsDAO");
        String result = HttpClientUtil.sendHttpGet("http://www.off0.com/index.php");
        Document document = Jsoup.parse(result);
        //Element element = document.getElementById("cpdata");
        //Elements elements = document.getElementsByTag("tr");

        for(Element element1 : document.getElementsByTag("tr")){
            Elements elements = element1.getElementsByTag("td");
            if(elements.size() > 5){
                System.out.println(elements.get(1).text() + "  " + elements.get(4).text());
            }
            System.out.println();
        }


        //System.out.println(elements.size());

        //Pay.b2cPay(100D, "", null, System.currentTimeMillis() + "");


        /*
        String result = HttpClientUtil.sendHttpGet("http://caipiao.163.com/award/jskuai3/");

        Document document = Jsoup.parse(result);

        Elements elements = document.getElementsByClass("start");

        for(int i = 0; i < elements.size(); i++){
            if(elements.get(i).text().contains("期号")){
                continue;
            }
            System.out.println(elements.get(i).text() + "    (" + elements.get(i).attr("data-win-number") + ")");
        }
        */
        //System.out.println(MD5Util.encode("AA123456"));


    }
}
