package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.Settings;

import java.util.List;

public interface SettingsManager {
    int insert(Settings settings);

    int update(Settings settings);

    int delete(int id);

    List<Settings> select(Settings settings);
}
