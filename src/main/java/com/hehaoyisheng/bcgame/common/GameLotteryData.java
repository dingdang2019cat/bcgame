package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;

import java.util.Map;

public class GameLotteryData {

    public static Map<String, Integer[]> lotteryNumberCount = Maps.newHashMap();

    //大:56789 小:01234 单:13579 双:02468 大单:79 小单:13 大双:68 小双:24 和:05
    public static Map<String, String> dxdsLottery = Maps.newHashMap();

    static {
        dxdsLottery.put("大", "56789");
        dxdsLottery.put("小", "01234");
        dxdsLottery.put("单", "13579");
        dxdsLottery.put("双", "02468");
        dxdsLottery.put("大单", "79");
        dxdsLottery.put("小单", "13");
        dxdsLottery.put("大双", "68");
        dxdsLottery.put("小双", "24");
        dxdsLottery.put("和", "05");
    }
}
