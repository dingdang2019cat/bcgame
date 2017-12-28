package com.hehaoyisheng.bcgame.job;


import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;
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
    private BcLotteryHistory bcLotteryHistory;

    private String type;
    private Long time;

    public DateFormat getFormat() {
        return format;
    }

    public void setFormat(DateFormat format) {
        this.format = format;
    }

    public BcLotteryHistory getBcLotteryHistory() {
        return bcLotteryHistory;
    }

    public void setBcLotteryHistory(BcLotteryHistory bcLotteryHistory) {
        this.bcLotteryHistory = bcLotteryHistory;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public void execute() throws JobExecutionException {
        System.out.println("----------------------------------");
        System.out.println(format.format(new Date()));
        if(bcLotteryHistory == null){
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
        GameData.gameTime.put(type, System.currentTimeMillis() + time);
        for(int i = 0; i < 60; i++){
            String html = HttpClientUtil.sendHttpGet("http://917500.cn/Home/Lottery/kaijianghao/lotid/" + type + ".html?page=1&nourl=1");
            String[] result = html.split("<td>");

            try {
                Thread.sleep(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
