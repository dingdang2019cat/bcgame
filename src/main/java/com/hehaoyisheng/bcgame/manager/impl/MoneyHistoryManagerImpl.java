package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.MoneyHistoryDAO;
import com.hehaoyisheng.bcgame.entity.MoneyHistory;
import com.hehaoyisheng.bcgame.manager.MoneyHistoryManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Component("moneyHistoryManager")
public class MoneyHistoryManagerImpl implements MoneyHistoryManager{

    @Resource
    private MoneyHistoryDAO moneyHistoryDAO;

    public int insert(MoneyHistory moneyHistory) {
        try {
            return moneyHistoryDAO.insert(moneyHistory);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<MoneyHistory> select(MoneyHistory moneyHistory, Integer from, Integer limit, Date startTime, Date endTime) {
        try {
            return moneyHistoryDAO.select(moneyHistory, from, limit, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    public int count(MoneyHistory moneyHistory, Date startTime, Date endTime) {
        try {
            return moneyHistoryDAO.count(moneyHistory, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public double sumFandin(MoneyHistory moneyHistory, Date startTime, Date endTime) {
        try {
            return moneyHistoryDAO.sumFandin(moneyHistory, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }
}
