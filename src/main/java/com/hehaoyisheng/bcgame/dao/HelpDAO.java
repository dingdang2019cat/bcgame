package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Help;
import com.hehaoyisheng.bcgame.entity.Notice;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface HelpDAO {

    @Insert("insert into help (title, content, createTime) values (#{title}, #{content}, now())")
    int insert(Help help);

    @Update("update help set title=#{title} where id=#{id}")
    int update(Help help);

    @Delete("delete from help where id=#{id}")
    int delete(Help help);

    @Select("<script> " +
            "select * " +
            "from help" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"id != null\"> AND id=#{id}</if> " +
            " </trim> " +
            " order by id desc" +
            " <if test=\"from != null\"> limit #{from},#{limit} </if> " +
            " </script> ")
    List<Help> select(@Param("id") Integer id, @Param("from") Integer from, @Param("limit") Integer limit);

    @Select("<script> " +
            "select count(*) " +
            "from help" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"id != null\"> AND id=#{id}</if> " +
            " </trim> " +
            " </script> ")
    int count(@Param("from") Integer from, @Param("limit") Integer limit);
}
