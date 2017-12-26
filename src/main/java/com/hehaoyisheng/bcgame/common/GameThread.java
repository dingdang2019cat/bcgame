package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;

import java.util.Map;

public class GameThread {

    //http://blog.csdn.net/yuebinghaoyuan/article/details/9045471

    public GameThread(){
        super();
        Map<String , String> map = Maps.newHashMap();
        map.put("nourl", "1");
        map.put("lotid", "cqssc");
        map.put("uid", "");
        String cqssc = HttpClientUtil.sendHttpPost("http://917500.cn/Home/Article/timelimit.html", map);

    }

}
