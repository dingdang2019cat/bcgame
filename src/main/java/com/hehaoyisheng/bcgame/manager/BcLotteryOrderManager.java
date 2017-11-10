package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;

import java.util.List;

public interface BcLotteryOrderManager {
    int insert(BcLotteryOrder bcLotteryOrder);

    int update(BcLotteryOrder bcLotteryOrder);

    List<BcLotteryOrder> select(BcLotteryOrder bcLotteryOrder, Integer start, Integer end);
}
