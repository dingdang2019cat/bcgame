package com.hehaoyisheng.bcgame.job;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.common.GameType;
import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.entity.YiLou;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.manager.YiLouManager;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class SSCJob {

    private static DateFormat format = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
    private static DateFormat format1 = new SimpleDateFormat("yyyyMMdd");

    @Resource
    private BcLotteryHistoryManager bcLotteryHistoryManager;

    @Resource
    private LotteryThread lotteryThread;

    @Resource
    private YiLouManager yiLouManager;

    private String type;

    public BcLotteryHistoryManager getBcLotteryHistoryManager() {
        return bcLotteryHistoryManager;
    }

    public void setBcLotteryHistoryManager(BcLotteryHistoryManager bcLotteryHistoryManager) {
        this.bcLotteryHistoryManager = bcLotteryHistoryManager;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void execute(){
        int count = 10;
        if(type.equals("cqssc")){
            count = 11;
        }
        System.out.println("----------------------------------");
        System.out.println(format.format(new Date()) + "----" + type);
        if(bcLotteryHistoryManager == null){
            System.out.println("is null");
        }
        System.out.println("----------------------------------");
        String qiHao1 = GameData.gameSeasonId.get(type);
        Long longTime = 600000L;
        Integer qiHaoInt = 0;
        if(type.contains("ssc")){
            qiHaoInt = Integer.valueOf(qiHao1.substring(8, count));
        }
        if(type.contains("11x5")){
            qiHaoInt = Integer.valueOf(qiHao1.substring(8, count));
        }
        GameData.openCount.put(type, qiHaoInt);
        //判断时间间隔
        if(type.equals("cqssc") && qiHaoInt < 24 || qiHaoInt > 96){
            longTime = 300000L;
        }else if(type.equals("cqssc") && qiHaoInt == 23){
            longTime = 28800000L;
        }else if(type.equals("xjssc") && qiHaoInt == 96){
            longTime = 24600000L;
        }else if(type.equals("tjssc") && qiHaoInt == 84){
            longTime = 46200000L;
        }else if(type.equals("pk10")){
            longTime = 300000L;
        }
        GameData.gameTime.put(type, System.currentTimeMillis() + longTime);
        String qiHao = qiHao1;
        //加期号
        if(type.equals("cqssc")){
            if(qiHaoInt == 120){
                qiHao = format1.format(new Date(System.currentTimeMillis() + 600000L)) + "001";
            }else{
                qiHao = (Long.valueOf(qiHao) + 1) + "";
            }
        }
        if(type.equals("xjssc")){
            if(qiHaoInt == 96){
                qiHao = format1.format(new Date(System.currentTimeMillis())) + "01";
            }else {
                qiHao = (Long.valueOf(qiHao) + 1) + "";
            }
        }
        if(type.equals("tjssc")){
            if(qiHaoInt == 84){
                qiHao = format1.format(new Date(System.currentTimeMillis() + 14400000L)) + "01";
            }else {
                qiHao = (Long.valueOf(qiHao) + 1) + "";
            }
        }
        if(type.equals("pk10")){
            qiHao = (Long.valueOf(qiHao) + 1) + "";
        }

        if(type.equals("gd11x5") || type.equals("jx11x5")){
            if(qiHaoInt == 84){
                qiHao = format1.format(new Date(System.currentTimeMillis())) + "01";
            }else{
                qiHao = (Long.valueOf(qiHao) + 1) + "";
            }
        }

        if(type.equals("sd11x5")){
            if(qiHaoInt == 87){
                qiHao = format1.format(new Date(System.currentTimeMillis())) + "01";
            }else{
                qiHao = (Long.valueOf(qiHao) + 1) + "";
            }
        }
        GameData.gameSeasonId.put(type, qiHao);
        for(int k = 0; k < 50; k++){
            try {
                String result = HttpClientUtil.sendHttpGet("http://ho.apiplus.net/newly.do?token=t9339fdff9c8fe887k&code=" + (type.endsWith("pk10") ? "bjpk10" : type) + "&format=json");
                JSONObject jsonObject = JSONObject.parseObject(result);
                JSONArray jsonArray = jsonObject.getJSONArray("data");
                for(int i = 0; i < jsonArray.size(); i++) {
                    JSONObject jsonObject1 = jsonArray.getJSONObject(i);
                    String qihao = jsonObject1.getString("expect");
                    if(qihao.equals(qiHao1)){
                        BcLotteryHistory bcLotteryHistory = new BcLotteryHistory();
                        bcLotteryHistory.setLotteryType(type);
                        bcLotteryHistory.setSeasonId(qihao);
                        List<BcLotteryHistory> bcLotteryHistoryList = bcLotteryHistoryManager.select(bcLotteryHistory, 0, 5);
                        if(CollectionUtils.isEmpty(bcLotteryHistoryList)){
                            bcLotteryHistory.setNums(jsonObject1.getString("opencode"));
                            bcLotteryHistoryManager.insert(bcLotteryHistory);
                            bcLotteryHistory.setOpenTime(new Date());
                            GameData.lastOpen.put(type, bcLotteryHistory);
                            try {
                                List<YiLou> yiLous = yiLouManager.select(type, 0, 1);
                                YiLou yiLou = yiLous.get(0);
                                String[] yiLouNums = yiLou.getContent().split(" ");
                                String[] lotteryNums = bcLotteryHistory.getNums().split(",");
                                String[] lotteryNums1 = yiLou.getNums().split(",");
                                YiLou yiLou1 = new YiLou();
                                String sss = "";
                                for(int l = 0; l < 5; l++){
                                    String[] yiLouNums1 = yiLouNums[l].split(",");
                                    Integer lotteryNumInteger = Integer.valueOf(lotteryNums[l]);
                                    Integer lotteryNumInteger1 = Integer.valueOf(lotteryNums1[l]);
                                    if(!type.contains("ssc")){
                                        lotteryNumInteger = lotteryNumInteger - 1;
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
                                yiLou1.setSessionId(qihao);
                                yiLou1.setType(type);
                                yiLou1.setContent(sss);
                                yiLou1.setNums(bcLotteryHistory.getNums());
                                yiLouManager.insert(yiLou1);
                            }catch (Exception e1){
                                e1.printStackTrace();
                            }

                            lotteryThread.lottery(type, qihao, bcLotteryHistory.getNums());
                            return;
                        }
                    }
                }
                /*
                String result= HttpClientUtil.sendHttpGet("http://917500.cn/Home/Lottery/kaijianghao/lotid/" + (type.endsWith("11x5") ? type.replace("11x5", "115") : type) + ".html?page=1&nourl=1");
                String[] results = result.split("<td>");
                String qihao = results[1].replace("</td>", "").substring(0, count);
                qihao = qihao.replace("\n", "");
                qihao = qihao.replace("\r", "");
                qihao = qihao.trim();
                BcLotteryHistory bcLotteryHistory = new BcLotteryHistory();
                bcLotteryHistory.setLotteryType(type);
                bcLotteryHistory.setSeasonId(qihao);
                List<BcLotteryHistory> bcLotteryHistoryList = bcLotteryHistoryManager.select(bcLotteryHistory, 0, 5);
                System.out.println(qihao + " .... " + qiHao1);
                System.out.println(qihao.equals(qiHao1));
                System.out.println(results[3]);
                if(CollectionUtils.isEmpty(bcLotteryHistoryList) && qihao.equals(qiHao1) && !results[3].contains("?") && !results[3].contains("正在")){
                    bcLotteryHistory.setNums(results[3].replace("<em style=\"font-size: 12px;\">", "").replace("<em >", "").replace("</em></td>", "").replace("\r", "").replace("\n", "").split(" ")[0]);
                    bcLotteryHistoryManager.insert(bcLotteryHistory);
                    bcLotteryHistory.setOpenTime(new Date());
                    GameData.lastOpen.put(type, bcLotteryHistory);
                    try {
                        List<YiLou> yiLous = yiLouManager.select(type, 0, 1);
                        YiLou yiLou = yiLous.get(0);
                        String[] yiLouNums = yiLou.getContent().split(" ");
                        String[] lotteryNums = bcLotteryHistory.getNums().split(",");
                        String[] lotteryNums1 = yiLou.getNums().split(",");
                        YiLou yiLou1 = new YiLou();
                        String sss = "";
                        for(int l = 0; l < 5; l++){
                            String[] yiLouNums1 = yiLouNums[l].split(",");
                            Integer lotteryNumInteger = Integer.valueOf(lotteryNums[l]);
                            Integer lotteryNumInteger1 = Integer.valueOf(lotteryNums1[l]);
                            if(!type.contains("ssc")){
                                lotteryNumInteger = lotteryNumInteger - 1;
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
                        yiLou1.setSessionId(qihao);
                        yiLou1.setType(type);
                        yiLou1.setContent(sss);
                        yiLou1.setNums(bcLotteryHistory.getNums());
                        yiLouManager.insert(yiLou1);
                    }catch (Exception e1){
                        e1.printStackTrace();
                    }

                    lotteryThread.lottery(type, qihao, bcLotteryHistory.getNums());
                    break;
                }
                */
                Thread.sleep(10000);
            }catch (Exception e){
                try {
                    Thread.sleep(10000);
                }catch (Exception e1){
                    e1.printStackTrace();
                }
                e.printStackTrace();
            }
        }
    }
}
