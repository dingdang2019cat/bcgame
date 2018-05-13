package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.Contract;

import java.util.Date;
import java.util.List;

public interface ContractManager {
    int insert(Contract contract);

    int update(Contract contract);

    int delete(int id);

    List<Contract> select( Contract contract, Integer from, Integer limit, Date startTime, Date endTime);

    int count( Contract contract, Date startTime, Date endTime);

}
