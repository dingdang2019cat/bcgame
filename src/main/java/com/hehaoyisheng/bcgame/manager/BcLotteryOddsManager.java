package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.BcLotteryOdds;

import java.util.List;

public interface BcLotteryOddsManager {
    List<BcLotteryOdds> select( String lottery, String playType, Integer bounsType);

}
