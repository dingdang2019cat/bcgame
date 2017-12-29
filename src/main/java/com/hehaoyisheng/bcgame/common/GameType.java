package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;

import java.util.Map;

public class GameType {
        public static Map<String, String> gameType = Maps.newHashMap();

        public static Map<String, String> playName = Maps.newHashMap();

        static {
            gameType.put("cqssc", "重庆时时彩");
            gameType.put("tjssc", "天津时时彩");
            gameType.put("xjssc", "新疆时时彩");
            gameType.put("pk10", "北京赛车");

            playName.put("ssc_star3_last", "后三直选复式");
        }
}
