package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.BookCard;

import java.util.List;

public interface BookCardManager {
    int insert(BookCard bookCard);

    int update(BookCard bookCard);

    int delete(int id);

    List<BookCard> select(BookCard bookCard);
}
