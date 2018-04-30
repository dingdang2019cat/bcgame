package com.hehaoyisheng.bcgame.job;

import com.hehaoyisheng.bcgame.common.OnlineUser;
import com.hehaoyisheng.bcgame.entity.Recharge;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.manager.RechargeManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import com.hehaoyisheng.bcgame.pay.PayOrderList;

import javax.annotation.Resource;
import java.util.Map;

public class OnLineJob {

    @Resource
    private UserManager userManager;

    @Resource
    private RechargeManager rechargeManager;

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

        for(String s : PayOrderList.orderList.keySet()){
            Long payTime = PayOrderList.orderList.get(s);
            if((System.currentTimeMillis() - payTime) > 300000){
                PayOrderList.orderList.remove(s);
            }
        }

        for(String s : PayOrderList.payList.keySet()){
            Long payTime = PayOrderList.payList.get(s);
            if((System.currentTimeMillis() - payTime) > 300000){
                PayOrderList.payList.remove(s);
                Recharge recharge = new Recharge();
                recharge.setId(s);
                recharge.setStatus(3);
                rechargeManager.update(recharge);
            }
        }
    }
}
