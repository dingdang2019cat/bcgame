package com.hehaoyisheng.bcgame.common;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;
import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

import java.util.Date;
import java.util.Map;

public class GameThread {

    //http://blog.csdn.net/yuebinghaoyuan/article/details/9045471

    public GameThread() {
        super();
        initData("cqssc");
    }

    public void initData(String type) {
        try {
            Map<String, String> map = Maps.newHashMap();
            map.put("nourl", "1");
            map.put("lotid", type);
            map.put("uid", "");
            String result = HttpClientUtil.sendHttpPost("http://917500.cn/Home/Article/timelimit.html", map);
            JSONObject jsonObject = JSONObject.parseObject(result);
            String qiHao = jsonObject.getString("issue");
            System.out.println(result);
            Long time = jsonObject.getLong("lefttime");
            GameData.gameSeasonId.put(type, qiHao);
            GameData.gameTime.put(type, System.currentTimeMillis() + (time * 1000));
            SchedulerFactory schedulerfactory = new StdSchedulerFactory();
            Scheduler scheduler = schedulerfactory.getScheduler();
            JobDetail job = JobBuilder.newJob(SSCJob.class).withIdentity("cqssc", "ssc").build();
            Trigger trigger = TriggerBuilder.newTrigger().withIdentity("cqsscTrigger", "sscTrigger")
                    .withSchedule(CronScheduleBuilder.cronSchedule("0 0/5 14,22 * * ?")).startAt(new Date(System.currentTimeMillis() + (time * 1000))).build();
            scheduler.scheduleJob(job, trigger);
            scheduler.start();
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
    }
}
