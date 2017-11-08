package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.User;

import java.util.List;

public interface UserDAO {

    int insert(User user);

    int update(User user);

    int delete(int id);

    List<User> select(User user);
}
