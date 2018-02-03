package com.hehaoyisheng.bcgame.controller;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.common.GameThread;
import com.hehaoyisheng.bcgame.common.GameType;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.Trace;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.transfar.OrderTransfar;
import com.hehaoyisheng.bcgame.entity.vo.LotteryOrder;
import com.hehaoyisheng.bcgame.entity.vo.LotteryTime;
import com.hehaoyisheng.bcgame.entity.vo.Result;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import com.hehaoyisheng.bcgame.manager.TraceManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@SessionAttributes("user")
public class IndexController {

    @Resource
    private TraceManager traceManager;

    @Resource
    private BcLotteryOrderManager bcLotteryOrderManager;

    @Resource
    private UserManager userManager;

    @Resource
    private BcLotteryHistoryManager bcLotteryHistoryManager;

    @RequestMapping(value = "/login", method = {RequestMethod.GET})
    public String login(){
        return "login";
    }

    /**
     * 首页几个彩票的倒计时
     * @return
     */
    @RequestMapping("info")
    public Result info(){
        List<LotteryTime> list = Lists.newArrayList();
        list.add(new LotteryTime("cqssc", (GameData.gameTime.get("cqssc") - System.currentTimeMillis()) / 1000));
        System.out.println(GameData.gameTime.get("cqssc") - System.currentTimeMillis());
        list.add(new LotteryTime("gd11x5", GameData.gameTime.get("gd11x5")));
        list.add(new LotteryTime("pk10", GameData.gameTime.get("pk10")));
        list.add(new LotteryTime("3d", GameData.gameTime.get("3d")));
        return Result.success(list);
    }

    @RequestMapping("/lotts/{gameType}/index")
    //TODO
    public String gamePage(@ModelAttribute("user") User user, @PathVariable String gameType, Model model){
        List<User> users = userManager.select(user, null, null, null, null, null, null);
        //开奖图片

        //最近开奖
        BcLotteryHistory bcLotteryHistory = new BcLotteryHistory();
        bcLotteryHistory.setLotteryType(gameType);
        List<BcLotteryHistory> bcLotteryHistories = bcLotteryHistoryManager.select(bcLotteryHistory);
        //最近中奖
        BcLotteryOrder bcLotteryOrder = new BcLotteryOrder();
        bcLotteryOrder.setStatus(1);
        List<BcLotteryOrder> bcLotteryOrderList = bcLotteryOrderManager.select(bcLotteryOrder, 0, 15, null, null);
        //最近投注
        BcLotteryOrder bcLotteryOrder1 = new BcLotteryOrder();
        bcLotteryOrder1.setAccount(user.getUsername());
        List<BcLotteryOrder> bcLotteryOrderList1 = bcLotteryOrderManager.select(bcLotteryOrder1, 0, 5, null, null);
        //最近追号
        Trace trace = new Trace();
        trace.setAccount(user.getUsername());
        List<Trace> traceList = traceManager.select(trace, 0, 5, null, null);
        bcLotteryHistories = bcLotteryHistories == null ? new ArrayList<BcLotteryHistory>() : bcLotteryHistories;
        bcLotteryOrderList = bcLotteryOrderList == null ? new ArrayList<BcLotteryOrder>() : bcLotteryOrderList;
        bcLotteryOrderList1 = bcLotteryOrderList1 == null ? new ArrayList<BcLotteryOrder>() : bcLotteryOrderList1;
        traceList = traceList == null ? new ArrayList<Trace>() : traceList;
        //传值
        model.addAttribute("saleSeasonId1", GameData.gameSeasonId.get(gameType));
        model.addAttribute("saleAllSecond", (GameData.gameTime.get(gameType) - System.currentTimeMillis()) / 1000);
        model.addAttribute("openSeasonId", GameData.lastOpen.get(gameType).getSeasonId());
        model.addAttribute("allCount", GameData.seasonCount.get(gameType));
        model.addAttribute("openCount", GameData.openCount.get(gameType));
        model.addAttribute("remainCount", GameData.seasonCount.get(gameType) - GameData.openCount.get(gameType));
        //model.addAttribute("openSeasonId", GameData.lastOpen.get(gameType).getSeasonId());
        model.addAttribute("username", user.getUsername());
        model.addAttribute("recentOpen", bcLotteryHistories);
        model.addAttribute("recentWin", bcLotteryOrderList);
        model.addAttribute("recentBet", bcLotteryOrderList1);
        model.addAttribute("recentTrace", traceList);
        model.addAttribute("nickName", users.get(0).getNickName());
        model.addAttribute("amount", users.get(0).getMoney());
        model.addAttribute("account", users.get(0).getUsername());
        if(gameType.endsWith("k3")){
            return "k3";
        }else if(gameType.endsWith("pk10")){
            return "bjsc";
        }else if(gameType.endsWith("ssc")){
            return "ssc";
        }
        return null;
    }

    @RequestMapping("/lotts/{gameType}/info")
    @ResponseBody
    //TODO
    public Result info(@ModelAttribute("user") User user, @PathVariable String gameType){
        Map<String, Object> resultMap = Maps.newHashMap();
        //剩余时间(s)
        resultMap.put("allSecond", (GameData.gameTime.get(gameType) - System.currentTimeMillis()) / 1000);
        System.out.println(" --------------------------------------------------------- ");
        System.out.println(GameData.gameTime.get(gameType));
        System.out.println(System.currentTimeMillis());
        System.out.println((GameData.gameTime.get(gameType) - System.currentTimeMillis()));
        System.out.println(" --------------------------------------------------------- ");
        //余额
        User user1 = new User();
        user1.setUsername(user.getUsername());
        List<User> users = userManager.select(user1, null,null,null,null,null,null);
        resultMap.put("amount", users.get(0).getMoney());
        //最近投注
        BcLotteryOrder bcLotteryOrder1 = new BcLotteryOrder();
        bcLotteryOrder1.setAccount(user.getUsername());
        List<BcLotteryOrder> bcLotteryOrderList1 = bcLotteryOrderManager.select(bcLotteryOrder1, 0, 5, null, null);
        List<LotteryOrder> lotteryOrderList = Lists.newArrayList();
        for(BcLotteryOrder bcLotteryOrder : bcLotteryOrderList1){
            LotteryOrder lotteryOrder = OrderTransfar.bcLotteryToLottery(bcLotteryOrder);
            lotteryOrderList.add(lotteryOrder);
        }
        resultMap.put("bets", lotteryOrderList);
        //最后开奖
        Map<String, Object> lastOpen = Maps.newHashMap();
        lastOpen.put("seasonId", GameData.lastOpen.get(gameType).getSeasonId());
        //lastOpen.put("seasonId", GameData.lastOpen.get(gameType).getOpenTime().getTime());
        lastOpen.put("nums", GameData.lastOpen.get(gameType).getNums().split(","));
        resultMap.put("lastOpen", lastOpen);
        //开奖号码下文字显示
        String[] numStatus = {"前三：<span style='color: green'>组六</span>", "中三：<span style='color: purple'>组三</span>", "后三：<span style='color: purple'>组三</span>"};
        resultMap.put("numStatus", numStatus);
        //最近开奖
        BcLotteryHistory bcLotteryHistory = new BcLotteryHistory();
        bcLotteryHistory.setLotteryType(gameType);
        List<BcLotteryHistory> bcLotteryHistories = bcLotteryHistoryManager.select(bcLotteryHistory);
        resultMap.put("opens", bcLotteryHistories);
        //期号统计
        Map<String, Integer> seasonCount = Maps.newHashMap();
        seasonCount.put("allCount", GameData.seasonCount.get(gameType));
        seasonCount.put("openCount", GameData.openCount.get(gameType));
        resultMap.put("seasonCount", seasonCount);
        //期号
        resultMap.put("seasonId", GameData.gameSeasonId.get(gameType));
        //最近追号
        Trace trace = new Trace();
        trace.setAccount(user.getUsername());
        List<Trace> traces = traceManager.select(trace, 0, 5, null, null);
        resultMap.put("traces", traces);
        return Result.success(resultMap);
    }

    @RequestMapping("/init/Data")
    @ResponseBody
    public String initData(){
        try {
            GameThread gameThread = new GameThread();
            gameThread.initData("cqssc");
            Thread.sleep(1000);
            gameThread.initData("xjssc");
            Thread.sleep(1000);
            gameThread.initData("tjssc");
            Thread.sleep(1000);
            gameThread.initData("pk10");
        }catch (Exception e){
            e.printStackTrace();
        }
        return "初始化完成！";
    }
}
