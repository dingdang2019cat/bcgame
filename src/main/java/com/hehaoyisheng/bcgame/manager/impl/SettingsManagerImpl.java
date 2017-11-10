package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.SettingsDAO;
import com.hehaoyisheng.bcgame.entity.Settings;
import com.hehaoyisheng.bcgame.manager.SettingsManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class SettingsManagerImpl  implements SettingsManager{

    private static final Logger logger = LoggerFactory.getLogger(SettingsManagerImpl.class);

    @Resource
    private SettingsDAO settingsDAO;


    public int insert(Settings settings) {
        try {
            return settingsDAO.insert(settings);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public int update(Settings settings) {
        try {
            return settingsDAO.update(settings);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public int delete(int id) {
        try {
            return settingsDAO.delete(id);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public List<Settings> select(Settings settings) {
        try {
            return settingsDAO.select(settings);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return null;
    }
}
