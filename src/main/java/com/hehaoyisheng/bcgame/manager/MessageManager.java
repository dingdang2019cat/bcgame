package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.Message;

import java.util.List;

public interface MessageManager {
    int insert(Message message);

    int update(Message message);

    int delete(int id);

    List<Message> select(Message message);
}
