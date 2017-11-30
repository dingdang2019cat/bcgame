package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.RegistURL;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface RegistURLDAO {
    @Insert("insert into registurl (code, createTime, extAddress, flag, rebateRatio, registAddress, userType, validTime, account) values (#{code}, now(), #{extAddress}, #{flag}, #{rebateRatio}, #{registAddress}, #{userType}, #{validTime}, #{account})")
    int insert(RegistURL registURL);

    @Update("update registurl set registNum = #{registNum} where code=#{code}")
    int update(RegistURL registURL);

    @Delete("delete from registurl where code=#{code}")
    int delete(RegistURL registURL);

    @Select("<script> " +
            "select * " +
            "from registurl" +
            " <trim prefix=\"where\" prefixOverrides=\"AND |OR \">" +
            " <if test=\"account != null\"> AND account=#{account}</if> " +
            " <if test=\"code != null\"> AND code=#{code}</if> " +
            " </trim> " +
            " order by id desc" +
            " </script> ")
    List<RegistURL> select(RegistURL registURL);
}
