package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;

import java.util.Map;

public class BetCountData {
    public static Map<String, Integer> hashmap  = Maps.newHashMap();

    static {
        //  五星
        hashmap.put("ssc_star5",     100000);
        hashmap.put("ssc_star5_group5",     90);
        hashmap.put("ssc_star5_group10",     90);
        hashmap.put("ssc_star5_group20",     360);
        hashmap.put("ssc_star5_group30",     360);
        hashmap.put("ssc_star5_group60",     840);
        hashmap.put("ssc_star5_group120",     252);
        hashmap.put("ssc_star5_other1",     10);
        hashmap.put("ssc_star5_other2",     10);
        hashmap.put("ssc_star5_other3",     10);
        hashmap.put("ssc_star5_other4",     10);
        hashmap.put("ssc_star5_none1",     10);
        hashmap.put("ssc_star5_none2",     45);
        hashmap.put("ssc_star5_none3",     120);


// 前四
        hashmap.put("ssc_star4_front",     10000);
        hashmap.put("ssc_star4_front_group4",     90);
        hashmap.put("ssc_star4_front_group6",     45);
        hashmap.put("ssc_star4_front_group12",     360);
        hashmap.put("ssc_star4_front_group24",     210);
        hashmap.put("ssc_star4_front_none1",     10);
        hashmap.put("ssc_star4_front_none2",     45);

//后四
        hashmap.put("ssc_star4_last",     10000);
        hashmap.put("ssc_star4_last_group4",     90);
        hashmap.put("ssc_star4_last_group6",     45);
        hashmap.put("ssc_star4_last_group12",     360);
        hashmap.put("ssc_star4_last_group24",     210);
        hashmap.put("ssc_star4_last_none1",     10);
        hashmap.put("ssc_star4_last_none1",     45);


//前三，没有直选和值、组三单组六单、组选和值、混合组选
        hashmap.put("ssc_star3_front",     1000);
        hashmap.put("ssc_star3_front_kd",     1000);
        hashmap.put("ssc_star3_front_group3",     90);
        hashmap.put("ssc_star3_front_group6",     120);
        hashmap.put("ssc_star3_front_group_contains",     54);//包胆
        hashmap.put("ssc_star3_front_none1",     10);
        hashmap.put("ssc_star3_front_none2",     45);


//中三
        hashmap.put("ssc_star3_mid",     1000);
        hashmap.put("ssc_star3_mid_kd",     1000);
        hashmap.put("ssc_star3_mid_group3",     90);
        hashmap.put("ssc_star3_mid_group6",     120);
        hashmap.put("ssc_star3_mid_group_contains",     54);//包胆
        hashmap.put("ssc_star3_mid_none1",     10);
        hashmap.put("ssc_star3_mid_none2",     45);

//后三
        hashmap.put("ssc_star3_last",     1000);
        hashmap.put("ssc_star3_last_kd",     1000);
        hashmap.put("ssc_star3_last_group3",     90);
        hashmap.put("ssc_star3_last_group6",     120);
        hashmap.put("ssc_star3_last_group_contains",     54);//包胆
        hashmap.put("ssc_star3_last_none1",     10);
        hashmap.put("ssc_star3_last_none2",     45);

//前二，没有和值
        hashmap.put("ssc_star2_front",     100);
        hashmap.put("ssc_star2_front_kd",     100);
        hashmap.put("ssc_star2_front_group",     45);
        hashmap.put("ssc_star2_front_group_contains",     9);

//后二
        hashmap.put("ssc_star2_last",     100);
        hashmap.put("ssc_star2_last_kd",     100);
        hashmap.put("ssc_star2_last_group",     45);
        hashmap.put("ssc_star2_last_group_contains",     9);

//定位胆
        hashmap.put("ssc_star1_dwd",   50);

//任选，直选单式、组选单式、混合组选没有
        hashmap.put("ssc_star2_any",     1000);
        hashmap.put("ssc_star2_any_group",     450);
        hashmap.put("ssc_star3_any",     10000);
        hashmap.put("ssc_star3_any_group3",     900);
        hashmap.put("ssc_star3_any_group6",     1200);
        hashmap.put(" ssc_star4_any",     50000);

//龙虎和
        hashmap.put(" ssc_side_lhh",     10);

//微信特码
        hashmap.put(" ssc_side_tema",     10);


//广东十一选五

//选一
                hashmap.put(" n11x5_x1",     11);
        hashmap.put("n11x5_dwd",     55);
        hashmap.put("n11x5_front3_nx1",     11);
//选二
        hashmap.put("n11x5_x2",     55);
        hashmap.put("n11x5_x2_dt",     10);
        hashmap.put("n11x5_star2_front",     110);
        hashmap.put(" n11x5_star2_group",     55);
        hashmap.put("n11x5_star2_group_dt",     10);
//选三
        hashmap.put("n11x5_x3",     165);
        hashmap.put("n11x5_x3_dt",     45);
        hashmap.put("n11x5_star3_front",     990);
        hashmap.put("n11x5_star3_group",     165);
        hashmap.put("n11x5_star3_group_dt",     45);
//选四
        hashmap.put("n11x5_x4",     330);
        hashmap.put("n11x5_x4_dt",     120);
//选五
        hashmap.put("n11x5_x5",     462);
        hashmap.put("n11x5_x5_dt",     210);
//选六
        hashmap.put("n11x5_x6",     462);
        hashmap.put("n11x5_x6_dt",     252);
//选七
        hashmap.put("n11x5_x7",     330);
        hashmap.put("n11x5_x7_dt",     210);
//选八
        hashmap.put("n11x5_x8",     165);
        hashmap.put("n11x5_x8_dt",     120);

//pk10
//定位胆
                hashmap.put("pk10_star1_dwd",    50);
        hashmap.put("pk10_star1_dwd_last",     50);
//前二，没有冠亚和
        hashmap.put("pk10_star2",     90);
        hashmap.put("pk10_star2_dj",     90);
//前三
        hashmap.put("pk10_star3",     720);
        hashmap.put("pk10_star3_dj",     720);
//前四
        hashmap.put("pk10_star4",     5040);
        hashmap.put("pk10_star4_dj",     5040);
//前五
        hashmap.put("pk10_star5",     30240);
        hashmap.put("pk10_star5_dj",     30240);

    }
}
