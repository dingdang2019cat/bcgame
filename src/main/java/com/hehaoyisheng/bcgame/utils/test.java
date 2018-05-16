package com.hehaoyisheng.bcgame.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.common.BaseData;
import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.dao.*;
import com.hehaoyisheng.bcgame.entity.*;
import com.hehaoyisheng.bcgame.entity.vo.Province;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
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
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        LotteryThread lotteryThread = (LotteryThread) applicationContext.getBean("lotteryThread");
        BcLotteryHistoryDAO bcLotteryHistoryDAO = (BcLotteryHistoryDAO) applicationContext.getBean("bcLotteryHistoryDAO");
        BcLotteryHistory bcLotteryOrder = new BcLotteryHistory();
        bcLotteryOrder.setLotteryType("cqssc");
        List<BcLotteryHistory> lotteryOrders = bcLotteryHistoryDAO.select(bcLotteryOrder, 0, 100);
        for(BcLotteryHistory bcLotteryHistory1 : lotteryOrders){
            lotteryThread.lottery("cqssc", bcLotteryHistory1.getSeasonId(), bcLotteryHistory1.getNums());
        }
    }
}
