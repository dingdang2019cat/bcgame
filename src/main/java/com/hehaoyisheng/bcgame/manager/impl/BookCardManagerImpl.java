package com.hehaoyisheng.bcgame.manager.impl;

import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.dao.BookCardDAO;
import com.hehaoyisheng.bcgame.entity.BookCard;
import com.hehaoyisheng.bcgame.manager.BookCardManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

@Component
public class BookCardManagerImpl implements BookCardManager{

    @Resource
    private BookCardDAO bookCardDAO;

    public int insert(BookCard bookCard) {
        try {
            return bookCardDAO.insert(bookCard);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int update(BookCard bookCard) {
        try {
            return bookCardDAO.update(bookCard);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public int delete(int id) {
        try {
            return bookCardDAO.delete(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return -1;
    }

    public List<BookCard> select(BookCard bookCard) {
        try {
            return bookCardDAO.select(bookCard);
        }catch (Exception e){
            e.printStackTrace();
        }
        return Lists.newArrayList();
    }

    public BookCard select(Integer id) {
        try {
            return bookCardDAO.selectById(id);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
