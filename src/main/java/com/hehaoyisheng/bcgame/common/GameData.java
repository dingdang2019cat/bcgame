package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class GameData {

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

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
        gameTime.put("xjssc", 100L);
        gameTime.put("tjssc", 100L);
        gameTime.put("jx11x5", 100L);
        gameTime.put("sd11x5", 100L);
        gameTime.put("jsk3", 100L);
        gameTime.put("shk3", 100L);

        String time = simpleDateFormat.format(new Date());

        String timePl = time.split(" ")[0] + " 19:55:00";
        String time3d = time.split(" ")[0] + " 21:10:00";

        Date pl = null;
        Date fc3d = null;

        try {
            pl = simpleDateFormat.parse(timePl);
            fc3d = simpleDateFormat.parse(timePl);
        }catch (Exception e){
            e.printStackTrace();
        }


        gameTime.put("pl3", pl.getTime());
        gameTime.put("pl5", pl.getTime());
        gameTime.put("3d", fc3d.getTime());

        seasonCount.put("cqssc", 120);
        seasonCount.put("xjssc", 96);
        seasonCount.put("tjssc", 84);
        seasonCount.put("pk10", 179);
        seasonCount.put("gd11x5", 84);
        seasonCount.put("jx11x5", 84);
        seasonCount.put("sd11x5", 87);
        seasonCount.put("jsk3", 82);
        seasonCount.put("shk3", 82);
        seasonCount.put("pl3", 1);
        seasonCount.put("pl5", 1);
        seasonCount.put("3d", 1);
        //seasonCount.put("11x5", 84);

        lastOpen.put("cqssc", new BcLotteryHistory());
        lastOpen.put("xjssc", new BcLotteryHistory());
        lastOpen.put("tjssc", new BcLotteryHistory());
        lastOpen.put("pk10", new BcLotteryHistory());
        lastOpen.put("gd11x5", new BcLotteryHistory());
        lastOpen.put("jx11x5", new BcLotteryHistory());
        lastOpen.put("sd11x5", new BcLotteryHistory());
        lastOpen.put("jsk3", new BcLotteryHistory());
        lastOpen.put("shk3", new BcLotteryHistory());
        lastOpen.put("pl3", new BcLotteryHistory());
        lastOpen.put("pl5", new BcLotteryHistory());
        lastOpen.put("3d", new BcLotteryHistory());

        openCount.put("cqssc", 0);
        openCount.put("tjssc", 0);
        openCount.put("xjssc", 0);
        openCount.put("pk10", 0);
        openCount.put("gd11x5", 0);
        openCount.put("jx11x5", 0);
        openCount.put("sd11x5", 0);
        openCount.put("jsk3", 0);
        openCount.put("shk3", 0);
        openCount.put("pl3", 0);
        openCount.put("pl5", 0);
        openCount.put("3d", 0);
    }

    public static void main(String[] args){
        System.out.println("insert into bcLotteryOrder (account, accountId, buyMoney, buyZhuShu, haoMa, lotCode, lotName, lotType, multiple, playCode, playName, qiHao, minBonusOdds, shangji) values (#{account}, #{accountId}, #{buyMoney}, #{buyZhuShu}, #{haoMa}, #{lotCode}, #{lotName}, #{lotType}, #{multiple}, #{playCode}, #{playName}, #{qiHao}, #{minBonusOdds}, #{shangji})".substring(429, 1));
    }
}