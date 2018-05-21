package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.BcLotteryOrderDAO;
import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Component("bcLotteryOrderManager")
public class BcLotteryOrderManagerImpl implements BcLotteryOrderManager{

    private static final Logger logger = LoggerFactory.getLogger(BcLotteryOrderManagerImpl.class);

    @Resource
    private BcLotteryOrderDAO bcLotteryOrderDAO;

    public int insert(BcLotteryOrder bcLotteryOrder) {
        try {
            return bcLotteryOrderDAO.insert(bcLotteryOrder);
        }catch (Exception e){
            logger.error("insert Error:  ", e);
        }
        return -1;
    }

    public int update(BcLotteryOrder bcLotteryOrder) {
        try {
            return bcLotteryOrderDAO.update(bcLotteryOrder);
        }catch (Exception e){
            logger.error("update Error:  ", e);
        }
        return -1;
    }

    public List<BcLotteryOrder> select(BcLotteryOrder bcLotteryOrder, Integer from, Integer limit, Date startTime, Date endTime) {
        try {
             return bcLotteryOrderDAO.select(bcLotteryOrder, from, limit, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
            logger.error("insert Error: username:{}, ", e);
        }
        return null;
    }

    public int count(BcLotteryOrder bcLotteryOrder, Integer from, Integer limit, Date startTime, Date endTime) {
        try {
            return bcLotteryOrderDAO.count(bcLotteryOrder, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
            logger.error("insert Error: username:{}, ", e);
        }
        return 0;
    }

    public double sumBuyMoney(BcLotteryOrder bcLotteryOrder, Date startTime, Date endTime) {
        try {
            return bcLotteryOrderDAO.sumBuyMoney(bcLotteryOrder, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
            logger.error("insert Error: username:{}, ", e);
        }
        return 0;
    }

    public double sumWinMoney(BcLotteryOrder bcLotteryOrder, Date startTime, Date endTime) {
        try {
            return bcLotteryOrderDAO.sumWinMoney(bcLotteryOrder, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
            logger.error("insert Error: username:{}, ", e);
        }
        return 0;
    }
}
