package com.hehaoyisheng.bcgame.utils;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.common.BaseData;
import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.dao.BcLotteryOddsDAO;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.entity.BcLotteryOdds;
import com.hehaoyisheng.bcgame.entity.vo.Province;
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
import java.util.List;

public class test {
    public static void main(String[] args) throws Exception {

        //ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        //LotteryThread lotteryThread = (LotteryThread) applicationContext.getBean("lotteryThread");
        //lotteryThread.lottery("cqssc", "20180121024", "0,0,0,1,0");
        //BcLotteryOddsDAO bcLotteryOddsDAO = (BcLotteryOddsDAO) applicationContext.getBean("bcLotteryOddsDAO");

        for(Province province : BaseData.province){
            String result = HttpClientUtil.sendHttpGet("http://vanke55.com/info/getCity?provinceId=" + province.getProvid(), "JSESSIONID=DF1F5CE087987290ED6370A28DB030476632E32F; openSwitching=n195");
            JSONObject jsonObject = JSONObject.parseObject(result);
            System.out.println("List<String> cityList" + province.getProvid() + " = Lists.newArrayList();");
            for(String s : jsonObject.getJSONArray("content").toJavaList(String.class)){
                JSONObject jsonObject1 = JSONObject.parseObject(s);
                String cityName = jsonObject1.getString("cityname");
                System.out.println("cityList" + province.getProvid() + ".add(\"" + cityName + "\");");
            }
            System.out.println("cityList.put(" + province.getProvid() + ", cityList" + province.getProvid() + ");");
            Thread.sleep(1000);
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
