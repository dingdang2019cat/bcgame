package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.SignDAO;
import com.hehaoyisheng.bcgame.entity.Sign;
import com.hehaoyisheng.bcgame.manager.SignManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class SignManagerImpl implements SignManager{

    private static final Logger logger = LoggerFactory.getLogger(SignManagerImpl.class);

    @Resource
    private SignDAO signDAO;

    public int insert(Sign sign) {
        try {
            return signDAO.insert(sign);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public int update(Sign sign) {
        try {
            return signDAO.update(sign);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public int delete(int id) {
        try {
            return signDAO.delete(id);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public List<Sign> select(Sign sign) {
        try {
            return signDAO.select(sign);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return null;
    }
}
