package com.hehaoyisheng.bcgame.pay;

import java.util.concurrent.ConcurrentHashMap;

public class PayOrderList {
    public static ConcurrentHashMap<String, Long> orderList = new ConcurrentHashMap<String, Long>();
}
