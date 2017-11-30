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

        }catch (Exception e){

        }
        return -1;
    }

    public int update(RegistURL registURL) {
        return -1;
    }

    public int delete(RegistURL registURL) {
        return -1;
    }

    public List<RegistURL> seletc(RegistURL registURL) {
        return null;
    }
}
