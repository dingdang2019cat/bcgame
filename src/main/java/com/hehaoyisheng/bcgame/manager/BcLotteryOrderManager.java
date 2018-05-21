package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;

import java.util.Date;
import java.util.List;

public interface BcLotteryOrderManager {
    int insert(BcLotteryOrder bcLotteryOrder);

    int update(BcLotteryOrder bcLotteryOrder);

    List<BcLotteryOrder> select(BcLotteryOrder bcLotteryOrder, Integer from, Integer limit, Date startTime, Date endTime);

    int count(BcLotteryOrder bcLotteryOrder, Integer from, Integer limit, Date startTime, Date endTime);

    double sumBuyMoney(BcLotteryOrder bcLotteryOrder, Date startTime, Date endTime);

    double sumWinMoney(BcLotteryOrder bcLotteryOrder, Date startTime, Date endTime);
}
