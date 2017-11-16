package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.entity.Message;
import com.hehaoyisheng.bcgame.manager.MessageManager;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MessageManagerImpl implements MessageManager{

    public int insert(Message message) {
        return 0;
    }

    public int update(Message message) {
        return 0;
    }

    public int delete(int id) {
        return 0;
    }

    public List<Message> select(Message message) {
        return null;
    }
}
