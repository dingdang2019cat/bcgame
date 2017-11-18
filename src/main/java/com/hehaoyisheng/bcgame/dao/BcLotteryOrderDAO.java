package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

public interface BcLotteryOrderDAO {

    @Insert("insert into bcLotteryOrder (account, accountId, buyMoney, buyZhuShu, haoMa, lotCode, lotName, lotType, multiple, playCode, playName, qiHao, minBonusOdds, shangji) values (#{account}, #{accountId}, #{buyMoney}, #{buyZhuShu}, #{haoMa}, #{lotCode}, #{lotName}, #{lotType}, #{multiple}, #{playCode}, #{playName}, #{qiHao}, #{minBonusOdds}, #{shangji} )")
    int insert(BcLotteryOrder bcLotteryOrder);

    @Update("update bcLotteryOrder set status=#{status}")
    int update(BcLotteryOrder bcLotteryOrder);

    @Select("<script> " +
            "select * from bcLotteryOrder " +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"bcLotteryOrder.id != null\"> AND id=#{bcLotteryOrder.id}</if> " +
            " <if test=\"bcLotteryOrder.status != null\"> AND status=#{bcLotteryOrder.status}</if> " +
            " <if test=\"bcLotteryOrder.accountId != null\"> AND accountId=#{bcLotteryOrder.accountId}</if> " +
            " <if test=\"bcLotteryOrder.lotCode != null\"> AND lotCode=#{bcLotteryOrder.lotCode}</if> " +
            " <if test=\"bcLotteryOrder.qiHao != null\"> AND qiHao=#{bcLotteryOrder.qiHao}</if> " +
            " <if test=\"startTime != null\"> AND<![CDATA[ createTime>#{startTime} AND createTime<${endTime} ]]></if> " +
            " </trim> " +
            " order by id desc" +
            " <if test=\"from != null\"> limit #{from},#{limit} </if> " +
            " </script> ")
    List<BcLotteryOrder> select(@Param("bcLotteryOrder") BcLotteryOrder bcLotteryOrder, @Param("from") Integer from, @Param("limit") Integer limit, @Param("startTime") Date startTime, @Param("endTime") Date endTime);
}
