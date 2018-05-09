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

    }
}
