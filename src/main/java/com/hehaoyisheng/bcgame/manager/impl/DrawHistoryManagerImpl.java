package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.DrawHistoryDAO;
import com.hehaoyisheng.bcgame.entity.DrawHistory;
import com.hehaoyisheng.bcgame.manager.DrawHistoryManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Component
public class DrawHistoryManagerImpl implements DrawHistoryManager{

    @Resource
    private DrawHistoryDAO drawHistoryDAO;

    public int insert(DrawHistory drawHistory) {
        try {
            return drawHistoryDAO.insert(drawHistory);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int update(DrawHistory drawHistory) {
        try {
            return drawHistoryDAO.update(drawHistory);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<DrawHistory> select(DrawHistory drawHistory, Integer from, Integer limit, Date startTime, Date endTime) {
        try {
            return drawHistoryDAO.select(drawHistory, from, limit, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    public int count(DrawHistory drawHistory, Date startTime, Date endTime) {
        try {
            return drawHistoryDAO.count(drawHistory, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public double sum(DrawHistory drawHistory, Date startTime, Date endTime) {
        try {
            return drawHistoryDAO.sum(drawHistory, startTime, endTime);
        }catch (Exception e){
            e.printStackTrace();
        }
        return 01;
    }
}
