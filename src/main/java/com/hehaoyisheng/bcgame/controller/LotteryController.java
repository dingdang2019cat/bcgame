package com.hehaoyisheng.bcgame.controller;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.transfar.OrderTransfar;
import com.hehaoyisheng.bcgame.entity.vo.Order;
import com.hehaoyisheng.bcgame.entity.vo.Result;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/lotts")
public class LotteryController {

    @Resource
    private UserManager userManager;

    @Resource
    private BcLotteryOrderManager bcLotteryOrderManager;

    /**
     * 投注
     * @param isTrace       是否追号
     * @param traceWinStop  追号赢了是否停止
     * @param bounsType     赔率类型
     * @param order         订单集合
     * @param amount        总价
     * @param count         总数量
     * @return              返回基类
     */
    @RequestMapping("/{gameType}/bet")
    @ResponseBody
    public Result doBet(@ModelAttribute("userId") User user, @PathVariable String gameType, int isTrace, int traceWinStop, int bounsType, List<Order> order, double amount, double count){
        //判断余额
        user = userManager.select(user).get(0);
        if(user.getMoney() < amount){
            //余额不足
        }
        //获取期号
        //扣减余额
        User updateUser = new User();
        updateUser.setId(user.getId());
        updateUser.setMoney(user.getMoney() - amount);
        userManager.update(updateUser);
        //生成订单号
        String orderId = gameType.substring(0, 1) + System.currentTimeMillis();
        //下单
        for(int i = 0; i < order.size(); i++){
            Order o = order.get(i);
            BcLotteryOrder bcLotteryOrder = OrderTransfar.orderToBcLotteryOrder(o, orderId + i);
            bcLotteryOrderManager.insert(bcLotteryOrder);
        }
        return Result.success(null);
    }

}
