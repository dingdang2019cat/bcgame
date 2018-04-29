package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.DrawHistory;

import java.util.Date;
import java.util.List;

public interface DrawHistoryManager {

    int insert(DrawHistory drawHistory);

    int update(DrawHistory drawHistory);

    List<DrawHistory> select(DrawHistory drawHistory, Integer from, Integer limit, Date startTime, Date endTime);

    int count(DrawHistory drawHistory, Date startTime, Date endTime);

    double sum(DrawHistory drawHistory, Date startTime, Date endTime);
}
