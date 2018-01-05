package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.entity.Message;
import com.hehaoyisheng.bcgame.manager.MessageManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class MessageManagerImpl implements MessageManager{

    @Resource
    private MessageManager messageManager;

    public int insert(Message message) {
        try {
            return messageManager.insert(message);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int update(Message message) {
        try {
            return messageManager.update(message);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int delete(int id) {
        try {
            return messageManager.delete(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<Message> select(Message message) {
        try {
            return messageManager.select(message);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
