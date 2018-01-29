package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.BcLotteryOddsDAO;
import com.hehaoyisheng.bcgame.entity.BcLotteryOdds;
import com.hehaoyisheng.bcgame.manager.BcLotteryOddsManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class BcLotteryOddsManagerImpl implements BcLotteryOddsManager {

    @Resource
    private BcLotteryOddsDAO bcLotteryOddsDAO;

    public int insert(BcLotteryOdds bcLotteryOdds) {
        try {
            return bcLotteryOddsDAO.insert(bcLotteryOdds);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<BcLotteryOdds> select(String lottery, String playType, Integer bounsType) {
        try {
            return bcLotteryOddsDAO.select(lottery, playType, bounsType);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
