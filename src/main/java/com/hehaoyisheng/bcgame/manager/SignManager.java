package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.Sign;

import java.util.List;

public interface SignManager {
    int insert(Sign sign);

    int update(Sign sign);

    int delete(int id);

    List<Sign> select(Sign sign);
}
