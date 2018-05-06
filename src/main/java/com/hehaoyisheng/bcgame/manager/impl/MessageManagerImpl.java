package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.MessageDAO;
import com.hehaoyisheng.bcgame.entity.Message;
import com.hehaoyisheng.bcgame.manager.MessageManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class MessageManagerImpl implements MessageManager{

    @Resource
    private MessageDAO messageDAO;

    public int insert(Message message) {
        try {
            return messageDAO.insert(message);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int update(Message message) {
        try {
            return messageDAO.update(message);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int delete(int id) {
        try {
            return messageDAO.delete(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<Message> select(Message message) {
        try {
            return messageDAO.select(message);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    public Message selectById(Integer id) {
        try {
            return messageDAO.selectById(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
