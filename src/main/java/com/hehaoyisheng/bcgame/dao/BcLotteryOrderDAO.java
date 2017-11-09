package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BcLotteryOrderDAO {
    int insert(BcLotteryOrder bcLotteryOrder);

    int update(BcLotteryOrder bcLotteryOrder);

    List<BcLotteryOrder> select(BcLotteryOrder bcLotteryOrder, Integer start, Integer end);
}
