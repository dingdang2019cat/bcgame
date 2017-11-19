package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

public interface UserDAO {

    @Insert("insert into user (username, password, drawFlag, createtime, ip, type, minBonusOdds, fandian, shangji, status) values (#{username}, #{password}, #{drawFlag}, #{createtime}, #{ip}, #{type}, #{minBonusOdds}, #{fandian}, #{shangji}, #{status} )")
    int insert(User user);

    @Update("<script> " +
            "update user " +
            "<trim prefix=\"set\" suffixOverrides=\",\"> " +
            "<if test=\"password != null\" >password=#{password},</if>" +
            "<if test=\"drawFlag != null\" >drawFlag=#{drawFlag},</if>" +
            "<if test=\"ip != null\" >ip=#{ip},</if>" +
            "<if test=\"fandian != null\" >fandian=#{fandian},</if>" +
            "<if test=\"status != null\" >status=#{status},</if>" +
            "<if test=\"money != null\" >money=#{money},</if>" +
            "<if test=\"touzhuFlag != null\" >touzhuFlag=#{touzhuFlag},</if>" +
            "<if test=\"time != null\" >time=#{time},</if>" +
            "<if test=\"online != null\" >online=#{online},</if>" +
            "<if test=\"drawPwd != null\" >drawPwd=#{drawPwd},</if>" +
            "<if test=\"name != null\" >name=#{name},</if>" +
            "<if test=\"nickName != null\" >nickName=#{nickName},</if>" +
            "<if test=\"cradNo != null\" >cradNo=#{cradNo},</if>" +
            "<if test=\"bankName != null\" >bankName=#{bankName},</if>" +
            "</trim>" +
            " where id=#{id} " +
            " </script> ")
    int update(User user);

    @Delete("delete from user where id=#{id}")
    int delete(int id);

    @Select("<script> " +
            "select * " +
            "from user" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"user.id != null\"> AND id=#{user.id}</if> " +
            " <if test=\"user.username != null\"> AND username=#{user.username}</if> " +
            " <if test=\"user.name != null\"> AND name=#{user.name}</if> " +
            " <if test=\"user.online != null\"> AND online=#{user.online}</if> " +
            " <if test=\"user.type != null\"> AND type=#{user.type}</if> " +
            " <if test=\"user.nickName != null\"> AND nickName=#{user.nickName}</if> " +
            " <if test=\"startTime != null\"> AND<![CDATA[ createTime>#{startTime} AND createTime<${endTime} ]]></if> " +
            " </trim> " +
            " order by id desc" +
            " <if test=\"from != null\"> limit #{from},#{limit} </if> " +
            " </script> ")
    List<User> select(@Param("user") User user, @Param("from") Integer from, @Param("limit") Integer limit, @Param("startTime") Date startTime, @Param("endTime") Date endTime);

    @Select("<script> " +
            "select count(*) " +
            "from user" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"user.id != null\"> AND id=#{user.id}</if> " +
            " <if test=\"user.username != null\"> AND username=#{user.username}</if> " +
            " <if test=\"user.name != null\"> AND name=#{user.name}</if> " +
            " <if test=\"user.online != null\"> AND online=#{user.online}</if> " +
            " <if test=\"user.type != null\"> AND type=#{user.type}</if> " +
            " <if test=\"user.nickName != null\"> AND nickName=#{user.nickName}</if> " +
            " <if test=\"startTime != null\"> AND<![CDATA[ createTime>#{startTime} AND createTime<${endTime} ]]></if> " +
            " </trim> " +
            " order by id desc" +
            " <if test=\"from != null\"> limit #{from},#{limit} </if> " +
            " </script> ")
    int count(@Param("user") User user, @Param("from") Integer from, @Param("limit") Integer limit, @Param("startTime") Date startTime, @Param("endTime") Date endTime);
}