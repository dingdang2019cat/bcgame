package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface BcLotteryHistoryDAO {
    @Insert("insert into bcLotteryHistory values(#{lotteryType}, #{nums}, #{openTime}, #{seasonId})")
    int insert(BcLotteryHistory bcLotteryHistory);
    @Update("update bcLotteryHistory set nums=#{nums} where seasonId=#{seasonId} and lotteryType=#{lotteryType}")
    int update(BcLotteryHistory bcLotteryHistory);
    @Select("select * from bcLotteryHistory where lotteryType=#{lotteryType} order by id desc limit 0,5")
    List<BcLotteryHistory> select(BcLotteryHistory bcLotteryHistory);
}
