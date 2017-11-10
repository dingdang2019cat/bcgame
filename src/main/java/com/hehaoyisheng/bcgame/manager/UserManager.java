package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.User;

import java.util.List;

public interface UserManager {
    int insert(User suer);
    int update(User user);
    int delete(int id);
    List<User> select(User user);
}
