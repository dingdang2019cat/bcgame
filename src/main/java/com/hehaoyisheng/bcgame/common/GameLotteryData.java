package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;

import java.util.Map;

public class GameLotteryData {

    //1,2,3,4,5
    public static Map<String, Integer[]> lotteryNumberCount = Maps.newHashMap();

    //大:56789 小:01234 单:13579 双:02468 大单:79 小单:13 大双:68 小双:24 和:05
    public static Map<String, String> dxdsLottery = Maps.newHashMap();

    public static Map<String, Lottery> gameData = Maps.newHashMap();

    static {
        lotteryNumberCount.put("ssc_star5_group5", new Integer[]{0, 9, 4, 1});
        lotteryNumberCount.put("ssc_star5_group10", new Integer[]{0, 9, 3, 2});
        lotteryNumberCount.put("ssc_star5_group20", new Integer[]{0, 9, 3, 1, 1});
        lotteryNumberCount.put("ssc_star5_group30", new Integer[]{0, 9, 2, 2, 1});
        lotteryNumberCount.put("ssc_star5_group60", new Integer[]{0, 9, 2, 1, 1, 1});
        lotteryNumberCount.put("ssc_star5_group120", new Integer[]{0, 9, 1, 1, 1, 1, 1});
        lotteryNumberCount.put("ssc_star5_none1", new Integer[]{0, 9, 1});
        lotteryNumberCount.put("ssc_star5_none2", new Integer[]{0, 9, 2});
        lotteryNumberCount.put("ssc_star5_none3", new Integer[]{0, 9, 3});
        lotteryNumberCount.put("ssc_star4_front", new Integer[]{0, 7});
        lotteryNumberCount.put("ssc_star4_front_group4", new Integer[]{0, 7, 3, 1});
        lotteryNumberCount.put("ssc_star4_front_group6", new Integer[]{0, 7, 2, 2});
        lotteryNumberCount.put("ssc_star4_front_group12", new Integer[]{0, 7, 2, 1, 1});
        lotteryNumberCount.put("ssc_star4_front_group24", new Integer[]{0, 7, 1, 1, 1, 1});
        lotteryNumberCount.put("ssc_star4_front_none1", new Integer[]{0, 7, 1});
        lotteryNumberCount.put("ssc_star4_front_none2", new Integer[]{0, 7, 2});
        lotteryNumberCount.put("ssc_star4_last", new Integer[]{2, 9});
        lotteryNumberCount.put("ssc_star4_last_group4", new Integer[]{2, 9, 3, 1});
        lotteryNumberCount.put("ssc_star4_last_group6", new Integer[]{2, 9, 2, 2});
        lotteryNumberCount.put("ssc_star4_last_group12", new Integer[]{2, 9, 2, 1, 1});
        lotteryNumberCount.put("ssc_star4_last_group24", new Integer[]{2, 9, 1, 1, 1, 1});
        lotteryNumberCount.put("ssc_star4_last_none1", new Integer[]{2, 9, 1});
        lotteryNumberCount.put("ssc_star4_last_none2", new Integer[]{2, 9, 2});
        lotteryNumberCount.put("ssc_star3_front", new Integer[]{0, 5});
        lotteryNumberCount.put("ssc_star3_front_and", new Integer[]{0, 5});
        lotteryNumberCount.put("ssc_star3_front_kd", new Integer[]{0, 5});
        lotteryNumberCount.put("ssc_star3_front_group_and", new Integer[]{0, 5});
        lotteryNumberCount.put("ssc_star3_front_group_contains", new Integer[]{0, 5});
        lotteryNumberCount.put("ssc_star3_front_group3", new Integer[]{0, 5, 1, 1});
        lotteryNumberCount.put("ssc_star3_front_group6", new Integer[]{0, 5, 1, 1, 1});
        lotteryNumberCount.put("ssc_star3_front_none1", new Integer[]{0, 5, 1});
        lotteryNumberCount.put("ssc_star3_front_none2", new Integer[]{0, 5, 2});
        lotteryNumberCount.put("ssc_star3_mid", new Integer[]{2, 7});
        lotteryNumberCount.put("ssc_star3_mid_and", new Integer[]{2, 7});
        lotteryNumberCount.put("ssc_star3_mid_kd", new Integer[]{2, 7});
        lotteryNumberCount.put("ssc_star3_midssc_star3_mid_kd", new Integer[]{2, 7});
        lotteryNumberCount.put("ssc_star3_mid_group_and", new Integer[]{2, 7});
        lotteryNumberCount.put("ssc_star3_mid_group_contains", new Integer[]{2, 7});
        lotteryNumberCount.put("ssc_star3_mid_group3", new Integer[]{2, 7, 1, 1});
        lotteryNumberCount.put("ssc_star3_mid_group6", new Integer[]{2, 7, 1, 1, 1});
        lotteryNumberCount.put("ssc_star3_mid_none1", new Integer[]{2, 7, 1});
        lotteryNumberCount.put("ssc_star3_mid_none2", new Integer[]{2, 7, 2});
        lotteryNumberCount.put("ssc_star3_last", new Integer[]{4, 9});
        lotteryNumberCount.put("ssc_star3_last_and", new Integer[]{4, 9});
        lotteryNumberCount.put("ssc_star3_last_kd", new Integer[]{4, 9});
        lotteryNumberCount.put("ssc_star3_last_group_and", new Integer[]{4, 9});
        lotteryNumberCount.put("ssc_star3_last_group_contains", new Integer[]{4, 9});
        lotteryNumberCount.put("ssc_star3_last_group3", new Integer[]{4, 9, 1, 1});
        lotteryNumberCount.put("ssc_star3_last_group6", new Integer[]{4, 9, 1, 1, 1});
        lotteryNumberCount.put("ssc_star3_last_none1", new Integer[]{4, 9, 1});
        lotteryNumberCount.put("ssc_star3_last_none2", new Integer[]{4, 9, 2});
        lotteryNumberCount.put("ssc_star2_front", new Integer[]{0, 3});


        //lotteryNumberCount.put("pk10_star1_dwd", new Integer[]{0, 9, 2});


        dxdsLottery.put("大", "56789");
        dxdsLottery.put("小", "01234");
        dxdsLottery.put("单", "13579");
        dxdsLottery.put("双", "02468");
        dxdsLottery.put("大单", "79");
        dxdsLottery.put("小单", "13");
        dxdsLottery.put("大双", "68");
        dxdsLottery.put("小双", "24");
        dxdsLottery.put("和", "05");

        gameData.put("cqssc", Lottery.create());
        gameData.put("tjssc", Lottery.create());
        gameData.put("xjssc", Lottery.create());
        gameData.put("pk10", Lottery.create());
        gameData.put("ffpk10", Lottery.create());
        gameData.put("f3pk10", Lottery.create());
        gameData.put("f5pk10", Lottery.create());
        gameData.put("shk3", Lottery.create());
        gameData.put("ahk3", Lottery.create());
        gameData.put("jsk3", Lottery.create());
        gameData.put("f3_11x5", Lottery.create());
        gameData.put("gd11x5", Lottery.create());
        gameData.put("ah11x5", Lottery.create());
        gameData.put("f1_11x5", Lottery.create());
        gameData.put("sd11x5", Lottery.create());
        gameData.put("pl3", Lottery.create());
        gameData.put("pl5", Lottery.create());
    }

    public static void main(String[] args) {
        System.out.println("1,2,3,4,5".substring(4, 9));
    }
}
class Lottery{
    private Lottery qiHao;
    private boolean open;
    private Long time;
    private Lottery content;

    public Lottery getQiHao() {
        return qiHao;
    }

    public void setQiHao(Lottery qiHao) {
        this.qiHao = qiHao;
    }

    public boolean isOpen() {
        return open;
    }

    public void setOpen(boolean open) {
        this.open = open;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public Lottery getContent() {
        return content;
    }

    public void setContent(Lottery content) {
        this.content = content;
    }

    private Lottery(){
    }

    public static Lottery create(){
        Lottery lottery = new Lottery();
        return lottery;
    }
}
