package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Maps;

import java.util.Map;

public class OnlineUser {
    public static Map<String, Long> online = Maps.newConcurrentMap();
}
