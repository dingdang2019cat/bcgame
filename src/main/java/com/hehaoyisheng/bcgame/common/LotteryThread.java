package com.hehaoyisheng.bcgame.common;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Component
public class LotteryThread {

    //线程池
    private static ExecutorService cachedThreadPool = Executors.newCachedThreadPool();

    @Resource
    private BcLotteryOrderManager bcLotteryOrderManager;

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

    public synchronized void lottery(String lotteryType, String seasonId, String looteryContent){
        BcLotteryOrder bcLotteryOrder = new BcLotteryOrder();
        bcLotteryOrder.setLotType(lotteryType);
        bcLotteryOrder.setQiHao(seasonId);
        bcLotteryOrder.setStatus(0);
        List<BcLotteryOrder> list = bcLotteryOrderManager.select(bcLotteryOrder, null, null, null, null);
        Runnable runnable = null;
        if(lotteryType.contains("ssc")){
            runnable = new SSCLottery(bcLotteryOrderManager, list, looteryContent);
        }
        cachedThreadPool.execute(runnable);
    }
}