package com.hehaoyisheng.bcgame.common;

import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import org.springframework.util.CollectionUtils;

import java.util.List;

public class SSCLottery implements Runnable{

    private BcLotteryOrderManager bcLotteryOrderManager;

    private List<BcLotteryOrder> bcLotteryOrders;

    private String looteryContent;

    public List<BcLotteryOrder> getBcLotteryOrders() {
        return bcLotteryOrders;
    }

    public void setBcLotteryOrders(List<BcLotteryOrder> bcLotteryOrders) {
        this.bcLotteryOrders = bcLotteryOrders;
    }


    public String getLooteryContent() {
        return looteryContent;
    }

    public void setLooteryContent(String looteryContent) {
        this.looteryContent = looteryContent;
    }

    public void run() {
        if(CollectionUtils.isEmpty(bcLotteryOrders)){
            return;
        }
        for(BcLotteryOrder bcLotteryOrder : bcLotteryOrders){
            bcLotteryOrder.setLotteryHaoMa(looteryContent);
            String playCode = bcLotteryOrder.getPlayCode();
            String betNumber = bcLotteryOrder.getHaoMa();
            int winCount = 0;
            if(playCode.contains("dwd")){
                winCount = GameLottery.sscDwdLottery(looteryContent, betNumber);
            }else if(playCode.contains("group")){
                winCount = GameLottery.sscZxLottery(looteryContent, betNumber, playCode);
            }else if(playCode.contains("none")){
                winCount = GameLottery.sscNotDwdLottery(looteryContent, betNumber, playCode);
            }else if(playCode.contains("and")){
                winCount = GameLottery.sscHzLottery(looteryContent, betNumber, playCode);
            }else if(playCode.contains("kd")){
                winCount = GameLottery.sscKdLottery(looteryContent, betNumber, playCode);
            }else if(playCode.contains("tema")){
                winCount = GameLottery.sscTmLottery(looteryContent, betNumber);
            }else if(playCode.contains("dxds")){
                winCount = GameLottery.sscDxdsLottery(looteryContent, betNumber);
            }else {
                winCount = GameLottery.sscFsLottery(looteryContent, betNumber, playCode);
            }

            if(winCount > 0){
                bcLotteryOrder.setStatus(1);
            }else {
                bcLotteryOrder.setStatus(2);
            }

            bcLotteryOrder.setWinMoney(bcLotteryOrder.getMinBonusOdds() * winCount);
        }
    }
}