package com.hehaoyisheng.bcgame.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.common.BaseData;
import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.dao.BcLotteryOddsDAO;
import com.hehaoyisheng.bcgame.dao.SettingsDAO;
import com.hehaoyisheng.bcgame.dao.UserDAO;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.entity.BcLotteryOdds;
import com.hehaoyisheng.bcgame.entity.Settings;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.vo.Province;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import com.hehaoyisheng.bcgame.pay.Pay;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

public class test {
    public static void main(String[] args) throws Exception {

        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        //LotteryThread lotteryThread = (LotteryThread) applicationContext.getBean("lotteryThread");
        //lotteryThread.lottery("cqssc", "20180121024", "0,0,0,1,0");
        //BcLotteryOddsDAO bcLotteryOddsDAO = (BcLotteryOddsDAO) applicationContext.getBean("bcLotteryOddsDAO");

        UserManager userDAO = (UserManager) applicationContext.getBean("userManagerImpl");

        User user = new User();

        List<User> list = userDAO.select(user, null, null, null, null, null, null);


        for(User user1 : list){
            User user2 = new User();
            user2.setId(user1.getId());
            if(user1.getFandian() == 14.4 || user1.getFandian() == 14.5){
                user2.setFenhong(1);
            }else{
                user2.setFenhong(0);
            }
            userDAO.update(user2);
        }
        /*
        SettingsDAO settingsDAO = (SettingsDAO) applicationContext.getBean("settingsDAO");

        Document document = Jsoup.parse(new File("C:\\Users\\lnzyz\\IdeaProjects\\bcgame\\src\\main\\webapp\\help.jsp"), "utf-8");

        Elements elements = document.getElementsByClass("nav");
        for(Element element : elements){
            //System.out.println(element.attr("data-id"));
            Settings settings = new Settings();
            settings.setKey(element.attr("data-id"));
            List<Settings> list = settingsDAO.select(settings);

            settings.setVaule(list.get(0).getVaule().replace("鼎汇·万客", "金牌娱乐"));

            settingsDAO.update(settings);
            Thread.sleep(500);
        }*/

        /*
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
        */



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
