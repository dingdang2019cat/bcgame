package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Contract;
import org.apache.ibatis.annotations.Insert;

import java.util.Date;
import java.util.List;

public interface ContractDAO {
    @Insert("insert into (account, startDate, endDate, cumulativeSales, winMoney, gongzi, dividend, cumulativeProfit, dividendAmount, time, status) values (account, startDate, endDate, cumulativeSales, winMoney, gongzi, dividend, cumulativeProfit, dividendAmount, time, status)")
    int insert(Contract contract);
    int update(Contract contract);
    int delete(int id);
    List<Contract> select(Contract contract, Integer from, Integer limit, Date startTime, Date endTime);
    int count(Contract contract, Date startTime, Date endTime);
}
