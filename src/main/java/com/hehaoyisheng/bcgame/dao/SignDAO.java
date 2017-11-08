package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Sign;

import java.util.List;

public interface SignDAO {
    int insert(Sign user);

    int update(Sign user);

    int delete(int id);

    List<Sign> select(Sign user);
}
