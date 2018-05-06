package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.User;

import java.util.Date;
import java.util.List;

public interface UserManager {
    int insert(User suer);
    int update(User user);
    int update(User user, double money);
    int updagteFandian(String username, Double fandian);
    int delete(int id);
    List<User> select(User user, Integer from, Integer limit, Date startTime, Date endTime, Double beginAmount, Double endAmount);
    int count(User user, Integer from, Integer limit, Date startTime, Date endTime, Double beginAmount, Double endAmount);
    double sum(String account);
}
