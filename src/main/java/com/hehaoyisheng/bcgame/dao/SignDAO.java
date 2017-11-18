package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Sign;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface SignDAO {

    @Insert("insert into sign (key, text, time) values (#{key}, #{text}, now())")
    int insert(Sign sign);

    @Update("update sign set text=#{text} where key=#{key}")
    int update(Sign sign);

    @Delete("delete from sign where key=#{key}")
    int delete(int id);

    @Select("<script>select * from sign <where> <if test=\"key != null\" >key=#{key}</if></where></script>")
    List<Sign> select(Sign sign);
}
