package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.BcLotteryHistoryDAO;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class BcLotteryHistoryManagerImpl implements BcLotteryHistoryManager{

    @Resource
    private BcLotteryHistoryDAO bcLotteryHistoryDAO;

    public int insert(BcLotteryHistory bcLotteryHistory) {
        try {
            return bcLotteryHistoryDAO.insert(bcLotteryHistory);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int update(BcLotteryHistory bcLotteryHistory) {
        try {
            return bcLotteryHistoryDAO.update(bcLotteryHistory);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<BcLotteryHistory> select(BcLotteryHistory bcLotteryHistory) {
        try {
            return bcLotteryHistoryDAO.select(bcLotteryHistory);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
