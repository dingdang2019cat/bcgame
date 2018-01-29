package com.hehaoyisheng.bcgame.utils;

import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.dao.BcLotteryOddsDAO;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.entity.BcLotteryOdds;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
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
        Document document = Jsoup.parse(new File("C:\\Users\\Administrator\\IdeaProjects\\bcgame\\src\\main\\resources\\ssc.jsp"), "utf-8");
        Elements elements = document.getElementsByClass("lottTypeDetail");
        for(Element element : elements){
            String dataShow = element.attr("data-show").replace("#", "");
            String dataTitle = element.attr("data-title");
            System.out.println("playName.put(\"" + dataShow + "\", \"" + dataTitle + "\");");

        }
        System.out.println(elements.size());
    }
}
