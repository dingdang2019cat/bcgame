package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Recharge;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.Date;
import java.util.List;

public interface RechargeDAO {
    @Insert("insert into recharge (account, amount, bankName, bankNameCode, createTime, id, parentList, realAmount, status) values (#{account}, #{amount}, #{bankName}, #{bankNameCode}, now(), #{id}, #{parentList}, #{realAmount}, #{status})")
    int insert(Recharge recharge);

    @Update("update recharge set realAmount=#{realAmount}, status=#{status} where id=#{id}")
    int update(Recharge recharge);

    @Select("<script> " +
            "select * from recharge " +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"recharge.id != null\"> AND id=#{recharge.id}</if> " +
            " <if test=\"recharge.account != null\"> AND account=#{recharge.account}</if> " +
            " <if test=\"recharge.parentList != null\"> AND parentList like #{recharge.parentList}</if> " +
            " <if test=\"startTime != null\"><![CDATA[  AND createTime >=  DATE_FORMAT(#{startTime}, '%Y-%m-%d %H:%T:%s') AND createTime <= DATE_FORMAT(#{endTime}, '%Y-%m-%d %H:%T:%s')]]></if>" +
            " </trim> " +
            " order by id desc" +
            " <if test=\"from != null\"> limit #{from},#{limit} </if> " +
            " </script> ")
    List<Recharge> select(@Param("recharge") Recharge recharge, @Param("from") Integer from, @Param("limit") Integer limit, @Param("startTime") Date startTime, @Param("endTime") Date endTime);

    @Select("<script> " +
            "select count(*) from recharge " +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"recharge.account != null\"> AND account=#{recharge.account}</if> " +
            " <if test=\"recharge.parentList != null\"> AND parentList like #{recharge.parentList}</if> " +
            " <if test=\"startTime != null\"><![CDATA[  AND createTime >=  DATE_FORMAT(#{startTime}, '%Y-%m-%d %H:%T:%s') AND createTime <= DATE_FORMAT(#{endTime}, '%Y-%m-%d %H:%T:%s')]]></if>" +
            " </trim> " +
            " </script> ")
    int count(@Param("recharge") Recharge recharge, @Param("startTime") Date startTime, @Param("endTime") Date endTime);

    @Select("<script> " +
            "select sum(realAmount) from recharge " +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"recharge.account != null\"> AND account=#{recharge.account}</if> " +
            " <if test=\"recharge.parentList != null\"> AND parentList like #{recharge.parentList}</if> " +
            " <if test=\"startTime != null\"><![CDATA[  AND createTime >=  DATE_FORMAT(#{startTime}, '%Y-%m-%d %H:%T:%s') AND createTime <= DATE_FORMAT(#{endTime}, '%Y-%m-%d %H:%T:%s')]]></if>" +
            " </trim> " +
            " </script> ")
    double sum(@Param("recharge") Recharge recharge, @Param("startTime") Date startTime, @Param("endTime") Date endTime);
}
