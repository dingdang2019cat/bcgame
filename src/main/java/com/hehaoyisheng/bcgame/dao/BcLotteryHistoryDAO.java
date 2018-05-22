package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
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
            " <if test=\"bcLotteryHistory.lotteryType != null\"> AND bcLotteryHistory.lotteryType=#{bcLotteryHistory.lotteryType}</if> " +
            " <if test=\"bcLotteryHistory.seasonId != null\"> AND seasonId=#{bcLotteryHistory.seasonId}</if> " +
            " </trim> " +
            " order by seasonId desc limit #{from},#{limit}" +
            " </script> ")
    List<BcLotteryHistory> select(@Param("bcLotteryHistory") BcLotteryHistory bcLotteryHistory, @Param("from")Integer from, @Param("limit")Integer limit);

}
