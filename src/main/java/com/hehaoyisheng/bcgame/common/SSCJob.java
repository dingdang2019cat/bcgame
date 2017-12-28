package com.hehaoyisheng.bcgame.common;


import com.hehaoyisheng.bcgame.utils.HttpClientUtil;
import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SSCJob implements Job {

    DateFormat format = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");

    public void execute(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        JobDataMap dataMap = jobExecutionContext.getJobDetail().getJobDataMap();
        String type = dataMap.getString("type");
        String time = dataMap.getString("time");
        GameData.gameTime.put(type, System.currentTimeMillis() + Long.valueOf(time));
        System.out.println("----------------------------------");
        System.out.println(format.format(new Date()));
        System.out.println("----------------------------------");
        /*for(int i = 0; i < 60; i++){
            String html = HttpClientUtil.sendHttpGet("http://917500.cn/Home/Lottery/kaijianghao/lotid/" + type + ".html?page=1&nourl=1");
            String[] result = html.split("<td>");
            String qiHao = result[1];

            try {
                Thread.sleep(10000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }*/
    }
}
