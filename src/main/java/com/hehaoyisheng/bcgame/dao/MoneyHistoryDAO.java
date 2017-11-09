package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.MoneyHistory;

import java.util.List;

public interface MoneyHistoryDAO {

    int insert(MoneyHistory moneyHistory);

    List<MoneyHistory> select(MoneyHistory moneyHistory);
}
