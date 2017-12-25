package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Trace;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.Date;
import java.util.List;

//TODO
public interface TraceDAO {
    @Insert("insert into trace values (#{id}, #{account}, #{createTime}, #{isWinStop}, #{lotteryId}, #{lotteryName}, #{startSeason}, #{traceAmount}, #{traceNum})")
    int insert(Trace trace);

    @Update("update trace set winAmount=#{winAmount} where id=#{id}")
    int update(Trace trace);

    //@Select("")
    List<Trace> select(Trace trace, int from, int limit, Date startTime, Date endTime);

    //@Select("")
    int count(Trace trace, int from, int limit, Date startTime, Date endTime);
}
