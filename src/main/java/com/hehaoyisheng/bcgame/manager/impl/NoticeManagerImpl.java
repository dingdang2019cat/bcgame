package com.hehaoyisheng.bcgame.manager.impl;

import com.hehaoyisheng.bcgame.dao.NoticeDAO;
import com.hehaoyisheng.bcgame.entity.Notice;
import com.hehaoyisheng.bcgame.manager.NoticeManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class NoticeManagerImpl implements NoticeManager {

    @Resource
    private NoticeDAO noticeDAO;

    public int insert(Notice notice) {
        try {
            return noticeDAO.insert(notice);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int update(Notice notice) {
        try {
            return noticeDAO.update(notice);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int delete(Notice notice) {
        try {
            return noticeDAO.delete(notice);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<Notice> select(Integer id, Integer from, Integer limit) {
        try {
            return noticeDAO.select(id, from, limit);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    public int count() {
        try {
            return noticeDAO.count();
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }
}
