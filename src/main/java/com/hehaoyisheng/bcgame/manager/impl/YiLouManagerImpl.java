package com.hehaoyisheng.bcgame.manager.impl;

import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.dao.YiLouDAO;
import com.hehaoyisheng.bcgame.entity.YiLou;
import com.hehaoyisheng.bcgame.manager.YiLouManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component("yiLouManager")
public class YiLouManagerImpl implements YiLouManager {

    @Resource
    private YiLouDAO yiLouDAO;

    public int insert(YiLou yiLou) {
        try {
            return yiLouDAO.insert(yiLou);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<YiLou> select(String type, Integer from, Integer limit) {
        try {
            return yiLouDAO.select(type, from, limit);
        }catch (Exception e){
            e.printStackTrace();
        }
        return Lists.newArrayList();
    }
}
