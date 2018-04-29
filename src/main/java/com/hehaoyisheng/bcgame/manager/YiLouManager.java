package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.YiLou;

import java.util.List;

public interface YiLouManager {
    int insert(YiLou yiLou);
    List<YiLou> select(String type, Integer from, Integer limit);
}
