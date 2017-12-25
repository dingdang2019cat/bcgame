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

    @Insert("insert into moneyHistory (account, accountId, afterMoney, bizDatetime, createDatetime, createUserId, money. orderId, remark, type, shangji) values (#{account}, #{accountId}, #{afterMoney}, #{bizDatetime}, #{createDatetime}, #{createUserId}, #{money}. #{orderId}, #{remark}, #{type}, #{shangji}, #{parentList})")
    int insert(MoneyHistory moneyHistory);

    @Select("<script> " +
            "select * " +
            "from moneyHistory" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"moneyHistory.account != null\"> AND account=#{moneyHistory.account}</if> " +
            " <if test=\"moneyHistory.parentList != null\"> AND parentList like #{moneyHistory.parentList}%</if> " +
            " <if test=\"startTime != null\"> AND<![CDATA[ createTime>#{startTime} AND createTime<${endTime} ]]></if> " +
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
            " <if test=\"startTime != null\"> AND<![CDATA[ createTime>#{startTime} AND createTime<${endTime} ]]></if> " +
            " </trim> " +
            " </script> ")
    int count(@Param("moneyHistory") MoneyHistory moneyHistory, @Param("startTime") Date startTime, @Param("endTime") Date endTime);
}

