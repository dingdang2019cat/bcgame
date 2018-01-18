package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.Notice;

import java.util.List;

public interface NoticeManager {
    int insert(Notice notice);
    int update(Notice notice);
    int delete(Notice notice);
    List<Notice> select(Integer id, Integer from, Integer limit);
    int count();
}
