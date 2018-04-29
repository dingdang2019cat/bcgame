package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.YiLou;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface YiLouDAO {
    @Insert("insert into (sessionId, type, content, nums) values (#{sessionId}, #{type}, #{content}, #{nums})")
    int insert(YiLou yiLou);

    @Select("select * from yilou where type=#{type} order by sessionId desc limit #{from},#{limit}")
    List<YiLou> select(@Param("type") String type, @Param("from") Integer from, @Param("limit") Integer limit);
}
