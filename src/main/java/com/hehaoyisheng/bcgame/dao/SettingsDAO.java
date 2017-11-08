package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Settings;

import java.util.List;

public interface SettingsDAO {
    int insert(Settings user);

    int update(Settings user);

    int delete(int id);

    List<Settings> select(Settings user);
}
