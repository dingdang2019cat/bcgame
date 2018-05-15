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
import com.hehaoyisheng.bcgame.pay.Pay;
import org.apache.http.Header;
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
import java.util.Map;

public class test {
    public static void main(String[] args) throws Exception {

        /*
        List<YiLou> yiLous = yiLouManager.select(type, 0, 1);
        YiLou yiLou = yiLous.get(0);
        String[] yiLouNums = yiLou.getContent().split(" ");
        String[] lotteryNums = bcLotteryHistory.getNums().split(",");
        YiLou yiLou1 = new YiLou();
        String sss = "";
        for(int l = 0; l < 5; l++){
            String[] yiLouNums1 = yiLouNums[l].split(",");
            Integer lotteryNumInteger = Integer.valueOf(lotteryNums[l]);
            if(!type.contains("ssc")){
                lotteryNumInteger = lotteryNumInteger - 1;
            }
            for(int p  = 0 ; p < yiLouNums1.length; p++){
                Integer yi = Integer.valueOf(yiLouNums[p]);
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
        yiLou1.setSessionId(qihao);
        yiLou1.setType(type);
        yiLou1.setContent(sss);
        yiLou1.setNums(bcLotteryHistory.getNums());
        yiLouManager.insert(yiLou1);
        */
    }
}
