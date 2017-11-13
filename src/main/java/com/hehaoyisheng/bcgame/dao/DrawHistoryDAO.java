package com.hehaoyisheng.bcgame.dao;

import com.hehaoyisheng.bcgame.entity.DrawHistory;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

public interface DrawHistoryDAO {

    @Insert("insert into txHistory (accountId, account, money, time, name, bankName, cardNo, status, orderid, shangji, remark) values (#{accountId, #{account}, #{money}, #{time}, #{name}, #{bankName}, #{cardNo}, #{status}, #{orderid}, #{shangji}, #{remark})")
    int insert(DrawHistory drawHistory);

    @Update("update txHistory set status=#{status},remark=#{remark}")
    int update(DrawHistory drawHistory);
}
