package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.UserDAO;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.manager.UserManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Component
public class UserManagerImpl implements UserManager {

    private static final Logger logger = LoggerFactory.getLogger(UserManagerImpl.class);

    @Resource
    private UserDAO userDAO;

    public int insert(User user) {
        try {
            return userDAO.insert(user);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public int update(User user) {
        try {
            if(user.getMoney() != null){
                BigDecimal bg = new BigDecimal(user.getMoney());
                double f1 = bg.setScale(4, BigDecimal.ROUND_HALF_UP).doubleValue();
                user.setMoney(f1);
            }
            return userDAO.update(user);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public int update(User user, double money) {
        try {
            BigDecimal bg = new BigDecimal(money);
            double f1 = bg.setScale(4, BigDecimal.ROUND_HALF_UP).doubleValue();
            if(money > 0)
                return userDAO.updateMoney(user, f1);
            else
                return userDAO.kouqian(user, 0 - f1);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public int updagteFandian(String username, Double fandian){
        try {
            BigDecimal bg = new BigDecimal(fandian);
            double f1 = bg.setScale(1, BigDecimal.ROUND_HALF_UP).doubleValue();
            return userDAO.updagteFandian(username, f1);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public int delete(int id) {
        try {
            return userDAO.delete(id);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;
    }

    public List<User> select(User user, Integer from, Integer limit, Date startTime, Date endTime, Double beginAmount, Double endAmount) {
        try {
            return userDAO.select(user, from, limit, startTime, endTime, beginAmount, endAmount);
        }catch (Exception e){
            e.printStackTrace();
            logger.error("insert Error: username:{}, ", e);
        }
        return null;
    }

    public int count(User user, Integer from, Integer limit, Date startTime, Date endTime, Double beginAmount, Double endAmount) {
        try {
            return userDAO.count(user, from, limit, startTime, endTime, beginAmount, endAmount);
        }catch (Exception e){
            e.printStackTrace();
            logger.error("insert Error: username:{}, ", e);
        }
        return 0;
    }

    public double sum(String account) {
        try {
            return userDAO.sum(account);
        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return 0;
    }
}
/*
    try {

        }catch (Exception e){
            logger.error("insert Error: username:{}, ", e);
        }
        return -1;


* */