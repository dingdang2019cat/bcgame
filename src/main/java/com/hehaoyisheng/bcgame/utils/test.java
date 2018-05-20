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
        YiLouManager yiLouManager = (YiLouManager)applicationContext.getBean("yiLouManager");
        String type = "txssc";
        BcLotteryHistoryDAO bcLotteryHistoryDAO = (BcLotteryHistoryDAO) applicationContext.getBean("bcLotteryHistoryDAO");
        BcLotteryHistory bcLotteryHistory1 = new BcLotteryHistory();
        bcLotteryHistory1.setLotteryType("txssc");
        List<BcLotteryHistory> bcLotteryHistories = bcLotteryHistoryDAO.select(bcLotteryHistory1, 0, 150);
        for(int i = bcLotteryHistories.size() - 1; i >= 0; i--){
            BcLotteryHistory bcLotteryHistory = bcLotteryHistories.get(i);
            try {
                List<YiLou> yiLous = yiLouManager.select(type, 0, 1);
                YiLou yiLou = yiLous.get(0);
                String[] yiLouNums = yiLou.getContent().split(" ");
                String[] lotteryNums = bcLotteryHistory.getNums().split(",");
                System.out.println("----------------------" + yiLou.getNums() + "--------------------------");
                String[] lotteryNums1 = yiLou.getNums().split(",");
                YiLou yiLou1 = new YiLou();
                String sss = "";
                for(int l = 0; l < 5; l++){
                    String[] yiLouNums1 = yiLouNums[l].split(",");
                    Integer lotteryNumInteger = Integer.valueOf(lotteryNums[l]);
                    Integer lotteryNumInteger1 = Integer.valueOf(lotteryNums1[l]);
                    if(!type.contains("ssc")){
                        lotteryNumInteger1 = lotteryNumInteger1 - 1;
                    }
                    for(int p  = 0 ; p < yiLouNums1.length; p++){
                        Integer yi = Integer.valueOf(yiLouNums1[p]);
                        yi = yi + 1;
                        if(p == lotteryNumInteger1){
                            yi = 1;
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
            }catch (Exception e1){
                e1.printStackTrace();
            }
        }

    }
}
