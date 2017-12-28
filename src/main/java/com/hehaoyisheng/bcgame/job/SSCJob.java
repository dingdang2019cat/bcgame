package com.hehaoyisheng.bcgame.job;


import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
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

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SSCJob {

    DateFormat format = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");

    @Resource
    private BcLotteryHistoryManager bcLotteryHistoryManager;

    private String type;

    public DateFormat getFormat() {
        return format;
    }

    public void setFormat(DateFormat format) {
        this.format = format;
    }

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

    public void execute() throws JobExecutionException {
        System.out.println("----------------------------------");
        System.out.println(format.format(new Date()));
        if(bcLotteryHistoryManager == null){
            System.out.println("is null");
        }
        System.out.println("----------------------------------");
        String qiHao = GameData.gameSeasonId.get(type);
        Long longTime = 600L;
        int qiHaoInt = Integer.valueOf(qiHao.substring(8, 11));
        //判断时间间隔
        if(type.equals("cqssc") && qiHaoInt < 24 || qiHaoInt > 96){
            longTime = 300L;
        }
        if(qiHaoInt == 23){
            longTime = 28800000L;
        }
        GameData.gameTime.put(type, System.currentTimeMillis() + longTime);
        for(int i = 0; i < 60; i++){
            try {
                String result= HttpClientUtil.sendHttpGet("http://917500.cn/Home/Lottery/kaijianghao/lotid/" + type + ".html?page=1&nourl=1");
                Document document = Jsoup.parse(result);
                Elements elements = document.getElementsByTag("tr");
                for(Element element : elements){
                    Elements elements1 = element.getElementsByTag("td");
                    for(Element element1 : elements1){
                        System.out.println(element1.val());
                    }
                }
                Thread.sleep(1000);
            }catch (Exception e){
                try {
                    Thread.sleep(1000);
                }catch (Exception e1){
                    e1.printStackTrace();
                }
                e.printStackTrace();
            }
        }
    }
}
