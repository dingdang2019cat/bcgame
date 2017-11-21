package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;

import java.util.Map;

public class GameData {
    /**
     * 游戏时间
     */
    public static Map<String, Long> gameTime = Maps.newConcurrentMap();

    /**
     * 游戏期号
     */
    public static Map<String, Long> gameSeasonId = Maps.newConcurrentMap();

    /**
     * 防止空指针，初始化彩票时间
     */
    static {
        gameTime.put("cqssc", 100L);
        gameTime.put("gd11x5", 100L);
        gameTime.put("pk10", 100L);
        gameTime.put("fc3d", 100L);
    }

    public static void main(String[] args){
        System.out.println("insert into bcLotteryOrder (account, accountId, buyMoney, buyZhuShu, haoMa, lotCode, lotName, lotType, multiple, playCode, playName, qiHao, minBonusOdds, shangji) values (#{account}, #{accountId}, #{buyMoney}, #{buyZhuShu}, #{haoMa}, #{lotCode}, #{lotName}, #{lotType}, #{multiple}, #{playCode}, #{playName}, #{qiHao}, #{minBonusOdds}, #{shangji})".substring(429, 1));
    }
}