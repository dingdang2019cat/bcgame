package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.RegistURLDAO;
import com.hehaoyisheng.bcgame.entity.RegistURL;
import com.hehaoyisheng.bcgame.manager.RegistURLManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class RegistURLManagerImpl implements RegistURLManager {
    private static final Logger logger = LoggerFactory.getLogger(RegistURLManagerImpl.class);

    @Resource
    private RegistURLDAO registURLDAO;

    public int insert(RegistURL registURL) {
        try {
            return registURLDAO.insert(registURL);
        }catch (Exception e){
            logger.error("", e);
        }
        return -1;
    }

    public int update(RegistURL registURL) {
        try {
            return registURLDAO.update(registURL);
        }catch (Exception e){
            logger.error("", e);
        }
        return -1;
    }

    public int delete(RegistURL registURL) {
        try {
            return registURLDAO.delete(registURL);
        }catch (Exception e){
            logger.error("", e);
        }
        return -1;
    }

    public List<RegistURL> seletc(RegistURL registURL) {
        try {
            return registURLDAO.select(registURL);
        }catch (Exception e){
            logger.error("", e);
        }
        return null;
    }
}
