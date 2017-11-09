package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.MoneyHistory;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MoneyHistoryDAO {

    @Insert("insert into moneyHistory (account, accountId, afterMoney, bizDatetime, createDatetime, createUserId, money. orderId, remark, type, shangji) values (#{account}, #{accountId}, #{afterMoney}, #{bizDatetime}, #{createDatetime}, #{createUserId}, #{money}. #{orderId}, #{remark}, #{type}, #{shangji})")
    int insert(MoneyHistory moneyHistory);

    @Select("<script>" +
            "select * from moneyHistory " +
            "<trim prefix=\"where\" prefixOverrides=\"AND |OR \"> " +
            "<if test=\"account != null\"> AND account=#{account}</if> " +
            "<if test=\"accountId != null\"> AND accountId=#{accountId}</if> " +
            "<trim> " +
            "order by id desc" +
            "<script>")
    List<MoneyHistory> select(MoneyHistory moneyHistory, Integer start, Integer end);
}
