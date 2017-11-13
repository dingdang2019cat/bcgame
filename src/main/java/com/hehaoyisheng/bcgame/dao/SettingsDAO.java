package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Settings;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface SettingsDAO {
    @Insert("insert into settings (key, value) values (#{key}, #{value})")
    int insert(Settings settings);

    @Update("update settings set value=#{value} where key=#{key}")
    int update(Settings settings);

    @Delete("delete from settings where key=#{key}")
    int delete(int id);

    @Select("<script>select * from settings <where> <if test=\"key != null\" >key=#{key}</if></where></script>")
    List<Settings> select(Settings settings);
}
