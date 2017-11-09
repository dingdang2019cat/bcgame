package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.BookCard;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookCardDAO {
    int insert(BookCard bookCard);

    int update(BookCard bookCard);

    int delete(int id);

    List<BookCard> select(BookCard bookCard);
}
