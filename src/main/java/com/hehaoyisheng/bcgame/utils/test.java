package com.hehaoyisheng.bcgame.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.common.BaseData;
import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.dao.BcLotteryOddsDAO;
import com.hehaoyisheng.bcgame.dao.SettingsDAO;
import com.hehaoyisheng.bcgame.dao.UserDAO;
import com.hehaoyisheng.bcgame.entity.*;
import com.hehaoyisheng.bcgame.entity.vo.Province;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import com.hehaoyisheng.bcgame.manager.YiLouManager;
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
        /*
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        YiLouManager yiLouManager = (YiLouManager) applicationContext.getBean("yiLouManager");
        BcLotteryHistoryManager bcLotteryHistoryManager = (BcLotteryHistoryManager) applicationContext.getBean("bcLotteryHistoryManager");
        YiLou yiLou1 = null;
        BcLotteryHistory bcLotteryHistory1 = new BcLotteryHistory();
        bcLotteryHistory1.setLotteryType("cqssc");
        String type = "gd11x5";
        List<BcLotteryHistory> bcLotteryHistories = bcLotteryHistoryManager.select(bcLotteryHistory1, 0, 150);
        for(int i = bcLotteryHistories.size() - 1; i >= 0; i--){
            BcLotteryHistory bcLotteryHistory = bcLotteryHistories.get(i);
            YiLou yiLou = null;
            if(yiLou1 != null){
                yiLou = yiLou1;
            }else {
                List<YiLou> yiLous = yiLouManager.select(type, 0, 1);
                if (CollectionUtils.isEmpty(yiLous)) {
                    yiLou = new YiLou();
                    yiLou.setType(type);
                    yiLou.setContent("0,0,0,0,0,0,0,0,0,0 0,0,0,0,0,0,0,0,0,0 0,0,0,0,0,0,0,0,0,0 0,0,0,0,0,0,0,0,0,0 0,0,0,0,0,0,0,0,0,0");
                } else {
                    yiLou = yiLous.get(0);
                }
            }
            String[] yiLouNums = yiLou.getContent().split(" ");
            String[] lotteryNums = bcLotteryHistory.getNums().split(",");
            yiLou1 = new YiLou();
            String sss = "";
            for(int l = 0; l < 5; l++){
                String[] yiLouNums1 = yiLouNums[l].split(",");
                Integer lotteryNumInteger = Integer.valueOf(lotteryNums[l]);
                if(!type.contains("ssc")){
                    lotteryNumInteger = lotteryNumInteger - 1;
                }
                for(int p  = 0 ; p < yiLouNums1.length; p++){
                    Integer yi = Integer.valueOf(yiLouNums1[p]);
                    yi = yi + 1;
                    if(p == lotteryNumInteger){
                        yi = 0;
                    }
                    sss += yi + ",";
                }
                sss = sss.substring(0, sss.length() - 1);
                sss += " ";
            }
            sss = sss.substring(0, sss.length() - 1);
            yiLou1.setSessionId(bcLotteryHistory.getSeasonId());
            yiLou1.setType(type);
            yiLou1.setContent(sss);
            yiLou1.setNums(bcLotteryHistory.getNums());
            yiLouManager.insert(yiLou1);
        }
        */

    }
}
