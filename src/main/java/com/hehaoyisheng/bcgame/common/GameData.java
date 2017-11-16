package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;

import java.util.Map;

public class GameData {
    public static Map<String, Long> gameTime = Maps.newHashMap();

    /**
     * 防止空指针，初始化彩票时间
     */
    static {
        gameTime.put("cqssc", 0L);
        gameTime.put("gd11x5", 0L);
        gameTime.put("pk10", 0L);
        gameTime.put("3d", 0L);
    }
}
