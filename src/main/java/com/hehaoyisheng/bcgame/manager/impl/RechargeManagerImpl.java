package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.RechargeDAO;
import com.hehaoyisheng.bcgame.entity.Recharge;
import com.hehaoyisheng.bcgame.manager.RechargeManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Component
public class RechargeManagerImpl implements RechargeManager {

    @Resource
    private RechargeDAO rechargeDAO;

    public int insert(Recharge recharge) {
        try {
            return rechargeDAO.insert(recharge);
        }catch (Exception e){
        }
        return -1;
    }

    public int update(Recharge recharge) {
        try {
            return rechargeDAO.update(recharge);
        }catch (Exception e){
        }
        return -1;
    }

    public List<Recharge> select(Recharge recharge, Integer from, Integer limit, Date startTime, Date endTime) {
        try {
            return rechargeDAO.select(recharge, from, limit, startTime, endTime);
        }catch (Exception e){
        }
        return null;
    }

    public int count(Recharge recharge, Date startTime, Date endTime) {
        try {
            return rechargeDAO.count(recharge, startTime, endTime);
        }catch (Exception e){
        }
        return 0;
    }
}
