package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface BcLotteryHistoryDAO {
    @Insert("insert into bcLotteryHistory (lotteryType, nums, openTime, seasonId) values(#{lotteryType}, #{nums}, now(), #{seasonId})")
    int insert(BcLotteryHistory bcLotteryHistory);
    @Update("update bcLotteryHistory set nums=#{nums} where seasonId=#{seasonId} and lotteryType=#{lotteryType}")
    int update(BcLotteryHistory bcLotteryHistory);

    @Select("<script> " +
            "select * " +
            "from bcLotteryHistory" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"lotteryType != null\"> AND lotteryType=#{lotteryType}</if> " +
            " <if test=\"seasonId != null\"> AND seasonId=#{seasonId}</if> " +
            " </trim> " +
            " order by id desc limit 0,5" +
            " </script> ")
    List<BcLotteryHistory> select(BcLotteryHistory bcLotteryHistory);
}
