package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.BcLotteryOdds;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface BcLotteryOddsDAO {

    @Insert("insert bcLotteryOdds (lotteryType, playType, odds, bounsType) values (#{lotteryType}, #{playType}, #{odds}, #{bounsType})")
    int insert(BcLotteryOdds bcLotteryOdds);

    @Select("<script> " +
            "select * " +
            "from bcLotteryOdds" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"lottery != null\"> AND lotteryType=#{lottery}</if> " +
            " <if test=\"playType != null\"> AND playType=#{playType}</if> " +
            " <if test=\"bounsType != null\"> AND bounsType=#{bounsType}</if> " +
            " </trim> " +
            " </script> ")
    List<BcLotteryOdds> select(@Param("lottery") String lottery, @Param("playType") String playType, @Param("bounsType") Integer bounsType);
}
