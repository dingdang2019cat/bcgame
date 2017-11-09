package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDAO {

    @Insert("insert into user (username, password, drawFlag, createtime, ip, type, minBonusOdds, fandian, shangji, status) values (#{username}, #{password}, #{drawFlag}, #{createtime}, #{ip}, #{type}, #{minBonusOdds}, #{fandian}, #{shangji}, #{shangji} )")
    int insert(User user);

    @Update("<script> " +
            "update user " +
            "<trim prefix=\"set\" suffixOverrides=\",\">" +
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
            "from user " +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"id != null\"> AND id=#{id}</if> " +
            " <if test=\"username != null\"> AND username=#{username}</if> " +
            " <if test=\"name != null\"> AND name=#{name}</if> " +
            " <if test=\"online != null\"> AND online=#{online}</if> " +
            " <if test=\"type != null\"> AND type=#{type}</if> " +
            " <if test=\"nickName != null\"> AND nickName=#{nickName}</if> " +
            " </trim> " +
            " </script> ")
    List<User> select(User user);
}
