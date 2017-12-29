package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.MoneyHistory;
import com.hehaoyisheng.bcgame.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

public interface MoneyHistoryDAO {

    @Insert("insert into moneyHistory (account, amount, balance, createTime, changeType, userMark, seasonId. unit, parentList, lotteryName, playName) values (#{account}, #{amount}, #{balance}, now(), #{changeType}, #{userMark}, #{seasonId}, #{unit}, #{parentList}, #{lotteryName}, #{playName})")
    int insert(MoneyHistory moneyHistory);

    @Select("<script> " +
            "select * " +
            "from moneyHistory" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"moneyHistory.account != null\"> AND account=#{moneyHistory.account}</if> " +
            " <if test=\"moneyHistory.parentList != null\"> AND parentList like #{moneyHistory.parentList}%</if> " +
            " <if test=\"startTime != null\"><![CDATA[  AND createTime >=  DATE_FORMAT(#{startTime}, '%Y-%m-%d %H:%T:%s') AND createTime <= DATE_FORMAT(#{endTime}, '%Y-%m-%d %H:%T:%s')]]></if>" +
            " </trim> " +
            " order by id desc" +
            " <if test=\"from != null\"> limit #{from},#{limit} </if> " +
            " </script> ")
    List<MoneyHistory> select(@Param("moneyHistory") MoneyHistory moneyHistory, @Param("from") Integer from, @Param("limit") Integer limit, @Param("startTime") Date startTime, @Param("endTime") Date endTime);

    @Select("<script> " +
            "select count(*) " +
            "from moneyHistory" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"moneyHistory.account != null\"> AND account=#{moneyHistory.account}</if> " +
            " <if test=\"moneyHistory.parentList != null\"> AND parentList like #{moneyHistory.parentList},%</if> " +
            " <if test=\"startTime != null\"><![CDATA[  AND createTime >=  DATE_FORMAT(#{startTime}, '%Y-%m-%d %H:%T:%s') AND createTime <= DATE_FORMAT(#{endTime}, '%Y-%m-%d %H:%T:%s')]]></if>" +
            " </trim> " +
            " </script> ")
    int count(@Param("moneyHistory") MoneyHistory moneyHistory, @Param("startTime") Date startTime, @Param("endTime") Date endTime);
}

