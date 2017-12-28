package com.hehaoyisheng.bcgame.common;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;

import java.util.Map;

public class GameThread {

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

    }
}
