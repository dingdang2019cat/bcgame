package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.DrawHistory;
import com.hehaoyisheng.bcgame.entity.Recharge;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

public interface DrawHistoryDAO {

    @Insert("insert into drawHistory (account, card, amount, createTime, bankCode, bankName, lastOperator, lastTime, parentList) values (#{account}, #{card}, #{amount}, now(), #{bankCode}, #{bankName}, #{lastOperator}, now(), #{parentList})")
    int insert(DrawHistory drawHistory);

    @Update("update drawHistory set status=#{status},remark=#{remark}")
    int update(DrawHistory drawHistory);

    @Select("<script> " +
            "select * from drawHistory " +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"drawHistory.account != null\"> AND account=#{drawHistory.account}</if> " +
            " <if test=\"drawHistory.parentList != null\"> AND parentList like #{drawHistory.parentList}%</if> " +
            " </trim> " +
            " order by id desc" +
            " <if test=\"from != null\"> limit #{from},#{limit} </if> " +
            " </script> ")
    List<DrawHistory> select(@Param("drawHistory") DrawHistory drawHistory, @Param("from") Integer from, @Param("limit") Integer limit, @Param("startTime") Date startTime, @Param("endTime") Date endTime);

    @Select("<script> " +
            "select count(*) from drawHistory " +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"drawHistory.account != null\"> AND account=#{drawHistory.account}</if> " +
            " <if test=\"drawHistory.parentList != null\"> AND parentList like #{drawHistory.parentList}%</if> " +
            " </trim> " +
            " order by id desc" +
            " </script> ")
    int count(@Param("drawHistory") DrawHistory drawHistory, @Param("startTime") Date startTime, @Param("endTime") Date endTime);
}
