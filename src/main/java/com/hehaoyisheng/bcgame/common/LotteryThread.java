package com.hehaoyisheng.bcgame.common;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.MoneyHistory;
import com.hehaoyisheng.bcgame.entity.Trace;
import com.hehaoyisheng.bcgame.manager.*;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Component("lotteryThread")
public class LotteryThread {

    //线程池
    private static ExecutorService cachedThreadPool = Executors.newCachedThreadPool();

    @Resource
    private BcLotteryOrderManager bcLotteryOrderManager;

    @Resource
    private UserManager userManager;

    @Resource
    private MoneyHistoryManager moneyHistoryManager;

    @Resource
    private TraceManager traceManager;


    public ExecutorService getCachedThreadPool() {
        return cachedThreadPool;
    }

    public void setCachedThreadPool(ExecutorService cachedThreadPool) {
        this.cachedThreadPool = cachedThreadPool;
    }

    public BcLotteryOrderManager getBcLotteryOrderManager() {
        return bcLotteryOrderManager;
    }

    public void setBcLotteryOrderManager(BcLotteryOrderManager bcLotteryOrderManager) {
        this.bcLotteryOrderManager = bcLotteryOrderManager;
    }

    /**
     * 分配开奖线程
     * @param lotteryType
     * @param seasonId
     * @param looteryContent
     */
    public synchronized void lottery(String lotteryType, String seasonId, String looteryContent){
        System.out.println("begin");
        BcLotteryOrder bcLotteryOrder = new BcLotteryOrder();
        bcLotteryOrder.setLotType(lotteryType);
        bcLotteryOrder.setQiHao(seasonId);
        bcLotteryOrder.setStatus(0);
        List<BcLotteryOrder> list = bcLotteryOrderManager.select(bcLotteryOrder, null, null, null, null);
        System.out.println(list.size());
        Runnable runnable = null;
        if(lotteryType.contains("ssc")){
            runnable = new SSCLottery(bcLotteryOrderManager, traceManager, userManager, moneyHistoryManager, list, looteryContent);
        }else if(lotteryType.contains("pk10")){
            runnable = new PK10Lottery(bcLotteryOrderManager, traceManager, userManager, moneyHistoryManager, list, looteryContent);
        }else if(lotteryType.contains("11x5")){
            runnable = new BC11x5Lottery(bcLotteryOrderManager, traceManager, userManager, moneyHistoryManager, list, looteryContent);
        }
        cachedThreadPool.execute(runnable);
    }
}