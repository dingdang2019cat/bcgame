package com.hehaoyisheng.bcgame.controller;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.common.GameType;
import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.Trace;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.transfar.OrderTransfar;
import com.hehaoyisheng.bcgame.entity.vo.*;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import com.hehaoyisheng.bcgame.manager.TraceManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import com.hehaoyisheng.bcgame.utils.CalculationUtils;
import com.mysql.jdbc.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/lotts")
public class LotteryController {

    @Resource
    private UserManager userManager;

    @Resource
    private BcLotteryOrderManager bcLotteryOrderManager;

    @Resource
    private TraceManager traceManager;

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
    public Result doBet(@ModelAttribute("user") User user, @PathVariable String gameType, int isTrace, Integer traceWinStop, Integer bounsType, OrderModel order, double amount, int count, int force, TraceModel traceOrders){
        List<Order> orders = order.getOrder();
        List<TraceOrder> traces = traceOrders.getTraceOrders();
        //获取期号
        String sessionId = GameData.gameSeasonId.get(gameType);
        //生成追单号
        String traceId = gameType.substring(0, 1) + System.currentTimeMillis();

        if(isTrace == 1){
            //如果是追号
            for(TraceOrder traceOrder : traces){
                Order o = orders.get(0).clone(traceOrder.getSeasonId(), traceOrder.getPrice());
                orders.add(o);
            }
        }
        //计算总额
        double buyMoney = 0;
        for(Order o : orders){
            buyMoney += o.getBetCount() * o.getPrice() * o.getUnit();
            if(o.getSeasonId() == null){
                o.setSeasonId(sessionId);
            }
        }
        //判断余额
        user = userManager.select(user, null, null, null, null, null, null).get(0);
        if(user.getMoney() < buyMoney){
            //余额不足
            return Result.faild("余额不足", 501);
        }
        //扣减余额
        User updateUser = new User();
        updateUser.setId(user.getId());
        updateUser.setMoney(user.getMoney() - amount);
        userManager.update(updateUser);
        //追单
        if(isTrace == 1){
            Trace trace = new Trace();
            trace.setAccount(user.getUsername());
            trace.setStartSeason(sessionId);
            trace.setIsWinStop(traceWinStop);
            trace.setLotteryId(gameType);
            //trace.setLotteryName();
            trace.setTraceAmount(buyMoney);
            traceManager.insert(trace);
        }
        //生成订单号
        String orderId = gameType.substring(0, 1) + System.currentTimeMillis();
        List<LotteryOrder> resultList = Lists.newArrayList();
        //下单
        for(int i = 0; i < orders.size(); i++){
            Order o = orders.get(i);
            BcLotteryOrder bcLotteryOrder = new BcLotteryOrder();
            bcLotteryOrder.setAccount(user.getUsername());
            bcLotteryOrder.setParentList(user.getParentList());
            bcLotteryOrder.setLotCode(gameType);
            bcLotteryOrder.setOrderId(orderId + i);
            bcLotteryOrder.setTraceId(traceId);
            bcLotteryOrder.setBuyZhuShu(o.getBetCount());
            bcLotteryOrder.setMultiple(o.getPrice());
            bcLotteryOrder.setMinBonusOdds(o.getUnit());
            bcLotteryOrder.setBuyMoney(o.getBetCount() * o.getPrice() * o.getUnit());
            bcLotteryOrder.setPlayCode(o.getPlayId());
            bcLotteryOrder.setQiHao(o.getSeasonId());
            bcLotteryOrder.setHaoMa(o.getContent());
            bcLotteryOrder.setQiHao(sessionId);
            bcLotteryOrder.setLotName(GameType.gameType.get(gameType));
            bcLotteryOrder.setZhuiHao(isTrace + "");
            System.out.println("---------------------------------");
            System.out.println(bcLotteryOrder.getAccount());
            System.out.println("---------------------------------");
            bcLotteryOrderManager.insert(bcLotteryOrder);
            resultList.add(OrderTransfar.bcLotteryToLottery(bcLotteryOrder));
        }
        return Result.success(resultList);
    }

    /**
     * 生成追号计划
     * @return
     */
    @RequestMapping("/{gameType}/listTraceSeasonId")
    @ResponseBody
    public Result listTraceSeasonId(@PathVariable String gameType, int count){
        List<Map<String, String>> resultList = Lists.newArrayList();
        Long qihao = Long.valueOf(GameData.gameSeasonId.get(gameType));
        for(int i = 0; i < count; i++){
            Map<String, String> map = Maps.newHashMap();
            map.put("seasonId", qihao.toString());
            String time = CalculationUtils.lotteryTime(qihao, gameType);
            map.put("openTime", time);
            resultList.add(map);
            qihao =  CalculationUtils.traceList(qihao, gameType);
        }
        return Result.success(resultList);
    }

}