package com.hehaoyisheng.bcgame.entity.transfar;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.vo.LotteryOrder;
import com.hehaoyisheng.bcgame.entity.vo.Order;

public class OrderTransfar {

    /**
     * 投注转换
     * @param order
     * @param orderId
     * @return
     */
    public static BcLotteryOrder orderToBcLotteryOrder(Order order, String orderId){
        return null;
    }

    /**
     * 查询转换
     */
    public static LotteryOrder bcLotteryToLottery(BcLotteryOrder bcLotteryOrder){
        LotteryOrder lotteryOrder = new LotteryOrder();
        lotteryOrder.setAccount(bcLotteryOrder.getAccount());
        lotteryOrder.setAmount(bcLotteryOrder.getBuyMoney());
        lotteryOrder.setBetCount(bcLotteryOrder.getBuyZhuShu());
        lotteryOrder.setBonusType(bcLotteryOrder.getMultiple());
        lotteryOrder.setContent(bcLotteryOrder.getHaoMa());
        lotteryOrder.setCreateTime(bcLotteryOrder.getCreateTime());
        lotteryOrder.setGroupName(bcLotteryOrder.getLotName());
        lotteryOrder.setId(bcLotteryOrder.getOrderId());
        lotteryOrder.setIsTrace(Integer.valueOf(bcLotteryOrder.getZhuiHao()));
        lotteryOrder.setLastTime(bcLotteryOrder.getCreateTime());
        lotteryOrder.setLotteryId(bcLotteryOrder.getLotCode());
        lotteryOrder.setLotteryName(bcLotteryOrder.getLotName());
        lotteryOrder.setOpenNum(bcLotteryOrder.getLotteryHaoMa());
        lotteryOrder.setPlayerId(bcLotteryOrder.getPlayCode());
        lotteryOrder.setPlayName(bcLotteryOrder.getPlayName());
        lotteryOrder.setWin(bcLotteryOrder.getWinMoney());
        return lotteryOrder;
    }
}
