package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Message;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface MessageDAO {

    @Insert("insert into message (account, title, text, status, readTime, createTime, author) values (#{account}, #{title}, #{text}, #{status}, #{readTime}, now(), #{author})")
    int insert(Message message);

    @Update("update message set status=#{status},readTime=#{readTime} where id=#{id}")
    int update(Message message);

    @Delete("delete from message where id=#{id}")
    int delete(int id);

    @Select("<script> select * from message <where> <if test=\"account != null\"> account=#{account} or author=#{account}</if></where> order by id desc </script> ")
    List<Message> select(Message message);

    @Select("<script> select * from message <where> <if test=\"id != null\"> id=#{id}</if></where> order by id desc </script> ")
    Message selectById(@Param("id") Integer id);
}