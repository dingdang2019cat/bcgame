package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Trace;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.Date;
import java.util.List;

public interface TraceDAO {
    @Insert("")
    int insert(Trace trace);

    @Update("")
    int update(Trace trace);

    @Select("")
    List<Trace> select(Trace trace, int from, int limit, Date startTime, Date endTime);
}
