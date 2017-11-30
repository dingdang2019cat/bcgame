package com.hehaoyisheng.bcgame.manager;

import com.hehaoyisheng.bcgame.entity.RegistURL;

import java.util.List;

public interface RegistURLManager {
    int insert(RegistURL registURL);
    int update(RegistURL registURL);
    int delete(RegistURL registURL);
    List<RegistURL> seletc(RegistURL registURL);
}
