package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.Recharge;

import java.util.Date;
import java.util.List;

public interface RechargeManager {
    int insert(Recharge recharge);
    int update(Recharge recharge);
    List<Recharge> select(Recharge recharge, Integer from, Integer limit, Date startTime, Date endTime);
    int count(Recharge recharge, Date startTime, Date endTime);
    double sum(Recharge recharge, Date startTime, Date endTime);
}
