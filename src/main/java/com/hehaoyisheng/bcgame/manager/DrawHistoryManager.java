package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.DrawHistory;

import java.util.List;

public interface DrawHistoryManager {

    int insert(DrawHistory drawHistory);

    int update(DrawHistory drawHistory);

    List<DrawHistory> select(DrawHistory drawHistory);
}
