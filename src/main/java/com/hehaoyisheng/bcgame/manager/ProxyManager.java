package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.Proxy;

import java.util.List;

public interface ProxyManager {
    int insert(Proxy user);

    int delete(int id);

    List<Proxy> select(Proxy user);
}
