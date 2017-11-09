package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.Proxy;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProxyDAO {

    @Insert("insert into Daili (shangji, xiaji) values (#{shangji}, #{xiaji})")
    int insert(Proxy user);

    @Delete("delete from Daili where shangji=#{shangji} and xiaji=#{xiaji}")
    int delete(int id);

    @Select("select * from Daili where shangji=#{shangji}")
    List<Proxy> select(Proxy user);
}
