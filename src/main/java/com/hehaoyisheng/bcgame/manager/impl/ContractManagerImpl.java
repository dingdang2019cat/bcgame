package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.ContractDAO;
import com.hehaoyisheng.bcgame.entity.Contract;
import com.hehaoyisheng.bcgame.manager.ContractManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Component
public class ContractManagerImpl implements ContractManager {

    @Resource
    private ContractDAO contractDAO;

    public int insert(Contract contract) {
        try {
            return contractDAO.insert(contract);
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }

    public int update(Contract contract) {
        return 0;
    }

    public int delete(int id) {
        return 0;
    }

    public List<Contract> select(Contract contract, Integer from, Integer limit, Date startTime, Date endTime) {
        return null;
    }

    public int count(Contract contract, Date startTime, Date endTime) {
        return 0;
    }
}
