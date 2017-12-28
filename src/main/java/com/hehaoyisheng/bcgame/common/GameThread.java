package com.hehaoyisheng.bcgame.common;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.job.SSCJob;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;
import org.quartz.*;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;
import org.springframework.scheduling.quartz.SimpleTriggerFactoryBean;

import javax.annotation.Resource;
import java.util.Date;
import java.util.Map;

public class GameThread {

    //http://blog.csdn.net/yuebinghaoyuan/article/details/9045471

    private SchedulerFactoryBean schedulerfactory;

    private Map<String, SimpleTriggerFactoryBean> triggers;

    public GameThread() {
        super();
        initData("cqssc");
    }

    public void initData(String type) {
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
        triggers.get(type).setStartTime(new Date(System.currentTimeMillis() + (time * 1000)));

            /*
            Scheduler scheduler = schedulerfactory.getScheduler();
            JobDetail job = JobBuilder.newJob(SSCJob.class).withIdentity("cqssc", "ssc").build();
            job.getJobDataMap().put("type", type);
            job.getJobDataMap().put("time", longTime);
            Trigger trigger = TriggerBuilder.newTrigger().withIdentity("cqsscTrigger", "sscTrigger")
                    .withSchedule(SimpleScheduleBuilder.repeatSecondlyForever(Integer.valueOf(longTime.toString())).repeatForever()).startAt(new Date(System.currentTimeMillis() + (time * 1000))).build();
            scheduler.scheduleJob(job, trigger);*/
        schedulerfactory.start();
        //new Date(System.currentTimeMillis() + (time * 1000))
    }
}
