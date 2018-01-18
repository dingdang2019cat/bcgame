package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Notice;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface NoticeDAO {

    @Insert("insert into notice (title, content, createTime) values (#{title}, #{content}, now())")
    int insert(Notice notice);

    @Update("update notice set title=#{title} where id=#{id}")
    int update(Notice notice);

    @Delete("delete from notice where id=#{id}")
    int delete(Notice notice);

    @Select("<script> " +
            "select * " +
            "from notice" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"id != null\"> AND id=#{id}</if> " +
            " </trim> " +
            " order by id desc" +
            " <if test=\"from != null\"> limit #{from},#{limit} </if> " +
            " </script> ")
    List<Notice> select(@Param("id") Integer id, @Param("from") Integer from, @Param("limit") Integer limit);

    @Select("<script> " +
            "select count(*) " +
            "from notice" +
            " </script> ")
    int count();
}
