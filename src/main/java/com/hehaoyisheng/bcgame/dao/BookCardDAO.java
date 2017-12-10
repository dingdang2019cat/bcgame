package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.BookCard;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

//TODO
public interface BookCardDAO {

    @Insert("insert into bookcard (account, niceName, card, createTime, parentAccount, userMark, bankNameId) values (#{account}, #{niceName}, #{card}, now(), #{parentAccount},, #{userMark}, #{bankNameId})")
    int insert(BookCard bookCard);

    @Update("update bookcard set ")
    int update(BookCard bookCard);

    @Delete("")
    int delete(int id);

    @Select("")
    List<BookCard> select(BookCard bookCard);
}
