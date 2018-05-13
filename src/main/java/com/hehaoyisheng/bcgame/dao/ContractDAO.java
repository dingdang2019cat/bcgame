package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Contract;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.Date;
import java.util.List;

public interface ContractDAO {
    @Insert("insert into contract (account, startDate, endDate, cumulativeSales, winMoney, gongzi, dividend, cumulativeProfit, dividendAmount, time, shangji, parentList) values (#{account}, #{startDate}, #{endDate}, #{cumulativeSales}, #{winMoney}, #{gongzi}, #{dividend}, #{cumulativeProfit}, #{dividendAmount}, now(), #{shangji}, #{parentList})")
    int insert(Contract contract);

    int update(Contract contract);

    @Delete("delete from contract where id = #{id}")
    int delete(int id);

    @Select("<script> " +
            "select * " +
            "from contract" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"contract.id != null\"> AND id=#{contract.id}</if> " +
            " <if test=\"contract.account != null\"> AND account=#{contract.account}</if> " +
            " <if test=\"contract.shangji != null\"> AND shangji=#{contract.shangji}</if> " +
            " <if test=\"contract.parentList != null\"> AND parentList like #{contract.parentList}</if> " +
            " <if test=\"startTime != null\"><![CDATA[  AND time >=  DATE_FORMAT(#{startTime}, '%Y-%m-%d %H:%T:%s') AND time <= DATE_FORMAT(#{endTime}, '%Y-%m-%d %H:%T:%s')]]></if>" +
            " </trim> " +
            " order by id desc" +
            " <if test=\"from != null\"> limit #{from},#{limit} </if> " +
            " </script> ")
    List<Contract> select(@Param("contract") Contract contract, @Param("from") Integer from, @Param("limit") Integer limit, @Param("startTime") Date startTime, @Param("endTime") Date endTime);

    @Select("<script> " +
            "select count(*) " +
            "from contract" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"contract.id != null\"> AND id=#{contract.id}</if> " +
            " <if test=\"contract.account != null\"> AND account=#{contract.account}</if> " +
            " <if test=\"contract.shangji != null\"> AND shangji=#{contract.shangji}</if> " +
            " <if test=\"contract.parentList != null\"> AND parentList like #{contract.parentList}</if> " +
            " <if test=\"startTime != null\"><![CDATA[  AND time >=  DATE_FORMAT(#{startTime}, '%Y-%m-%d %H:%T:%s') AND time <= DATE_FORMAT(#{endTime}, '%Y-%m-%d %H:%T:%s')]]></if>" +
            " </trim> " +
            " </script> ")
    int count(@Param("contract") Contract contract, @Param("startTime") Date startTime, @Param("endTime") Date endTime);
}
