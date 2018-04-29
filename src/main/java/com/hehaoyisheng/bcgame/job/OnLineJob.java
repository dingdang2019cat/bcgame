package com.hehaoyisheng.bcgame.job;

import com.hehaoyisheng.bcgame.common.OnlineUser;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.manager.UserManager;

import javax.annotation.Resource;
import java.util.Map;

public class OnLineJob {

    @Resource
    private UserManager userManager;

    public void execute(){
        for(String s : OnlineUser.online.keySet()){
            Long time = OnlineUser.online.get(s);
            if((System.currentTimeMillis() - time) > 300000){
                User user = new User();
                user.setUsername(s);
                user.setOnline(1);
                userManager.update(user);
                OnlineUser.online.remove(s);
            }
        }
    }
}
