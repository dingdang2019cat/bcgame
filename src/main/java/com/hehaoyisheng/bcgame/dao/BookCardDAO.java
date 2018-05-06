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

    @Insert("insert into bookcard (account, niceName, card, createTime, parentAccount, userMark, bankNameId, bankName) values (#{account}, #{niceName}, #{card}, now(), #{parentAccount}, #{userMark}, #{bankNameId}, #{bankName})")
    int insert(BookCard bookCard);

    @Update("update bookcard set status=#{status} where id=#{id}")
    int update(BookCard bookCard);

    @Delete("delete from bookcard where id=#{id}")
    int delete(int id);

    @Select("select * from bookcard where account=#{account}")
    List<BookCard> select(BookCard bookCard);

    @Select("select * from bookcard where id=#{id}")
    BookCard selectById(Integer id);
}
