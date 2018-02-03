package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;

import java.util.Map;

public class GameData {
    /**
     * 游戏时间
     */
    public static Map<String, Long> gameTime = Maps.newConcurrentMap();

    /**
     * 游戏期号
     */
    public static Map<String, String> gameSeasonId = Maps.newConcurrentMap();

    /**
     * 最后开奖
     */
    public static Map<String, BcLotteryHistory> lastOpen = Maps.newConcurrentMap();

    /**
     * 总期数
     */
    public static Map<String, Integer> seasonCount = Maps.newConcurrentMap();

    /**
     * 已开期数
     */
    public static Map<String, Integer> openCount = Maps.newConcurrentMap();

    /**
     * 赔率
     */
    public static Map<String, Double> oddsMap = Maps.newHashMap();

    /**
     * 防止空指针，初始化彩票时间
     */
    static {
        gameTime.put("cqssc", 100L);
        gameTime.put("gd11x5", 100L);
        gameTime.put("pk10", 100L);
        gameTime.put("fc3d", 100L);

        seasonCount.put("cqssc", 120);
        seasonCount.put("xjssc", 96);

        lastOpen.put("cqssc", new BcLotteryHistory());

        openCount.put("cqssc", 0);
        openCount.put("tjssc", 0);
        openCount.put("xjssc", 0);
        openCount.put("pk10", 0);
    }

    public static void main(String[] args){
        System.out.println("insert into bcLotteryOrder (account, accountId, buyMoney, buyZhuShu, haoMa, lotCode, lotName, lotType, multiple, playCode, playName, qiHao, minBonusOdds, shangji) values (#{account}, #{accountId}, #{buyMoney}, #{buyZhuShu}, #{haoMa}, #{lotCode}, #{lotName}, #{lotType}, #{multiple}, #{playCode}, #{playName}, #{qiHao}, #{minBonusOdds}, #{shangji})".substring(429, 1));
    }
}