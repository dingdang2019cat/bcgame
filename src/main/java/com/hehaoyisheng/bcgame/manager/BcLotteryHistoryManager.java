package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;

import java.util.List;

public interface BcLotteryHistoryManager {
    int insert(BcLotteryHistory bcLotteryHistory);
    int update(BcLotteryHistory bcLotteryHistory);
    List<BcLotteryHistory> select(BcLotteryHistory bcLotteryHistory);
}
