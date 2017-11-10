package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.MoneyHistory;

import java.util.List;

public interface MoneyHistoryManager {
    int insert(MoneyHistory moneyHistory);


    List<MoneyHistory> select(MoneyHistory moneyHistory, Integer start, Integer end);
}
