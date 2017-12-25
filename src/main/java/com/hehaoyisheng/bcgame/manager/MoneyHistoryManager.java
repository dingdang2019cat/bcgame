package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.MoneyHistory;

import java.util.Date;
import java.util.List;

public interface MoneyHistoryManager {
    int insert(MoneyHistory moneyHistory);

    List<MoneyHistory> select(MoneyHistory moneyHistory, Integer from, Integer limit, Date startTime, Date endTime);

    int count(MoneyHistory moneyHistory, Date startTime, Date endTime);
}
