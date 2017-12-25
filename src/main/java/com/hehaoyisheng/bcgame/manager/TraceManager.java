package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.Trace;

import java.util.Date;
import java.util.List;

public interface TraceManager {
    int insert(Trace trace);
    int update(Trace trace);
    List<Trace> select(Trace trace, int from, int limit, Date startTime, Date endTime);
    int count(Trace trace, Date startTime, Date endTime);
}
