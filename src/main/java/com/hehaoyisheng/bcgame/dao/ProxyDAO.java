package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Proxy;

import java.util.List;

public interface ProxyDAO {
    int insert(Proxy user);

    int update(Proxy user);

    int delete(int id);

    List<Proxy> select(Proxy user);
}
