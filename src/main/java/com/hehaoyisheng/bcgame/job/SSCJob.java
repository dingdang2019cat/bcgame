package com.hehaoyisheng.bcgame.job;


import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.common.GameType;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class SSCJob {

    private static DateFormat format = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
    private static DateFormat format1 = new SimpleDateFormat("yyyyMMdd");

    @Resource
    private BcLotteryHistoryManager bcLotteryHistoryManager;

    private String type;

    public BcLotteryHistoryManager getBcLotteryHistoryManager() {
        return bcLotteryHistoryManager;
    }

    public void setBcLotteryHistoryManager(BcLotteryHistoryManager bcLotteryHistoryManager) {
        this.bcLotteryHistoryManager = bcLotteryHistoryManager;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void execute(){
        int count = 10;
        if(type.equals("cqssc")){
            count = 11;
        }
        System.out.println("----------------------------------");
        System.out.println(format.format(new Date()) + "----" + type);
        if(bcLotteryHistoryManager == null){
            System.out.println("is null");
        }
        System.out.println("----------------------------------");
        String qiHao1 = GameData.gameSeasonId.get(type);
        Long longTime = 600000L;
        Integer qiHaoInt = Integer.valueOf(qiHao1.substring(8, count));
        GameData.openCount.put(type, qiHaoInt);
        //判断时间间隔
        if(type.equals("cqssc") && qiHaoInt < 24 || qiHaoInt > 96){
            longTime = 300000L;
        }else if(type.equals("cqssc") && qiHaoInt == 23){
            longTime = 28800000L;
        }else if(type.equals("xjssc") && qiHaoInt == 96){
            longTime = 24600000L;
        }else if(type.equals("tjssc") && qiHaoInt == 84){
            longTime = 46200000L;
        }
        GameData.gameTime.put(type, System.currentTimeMillis() + longTime);
        String qiHao = qiHao1;
        //加期号
        if(type.equals("cqssc")){
            if(qiHaoInt == 120){
                qiHao = format1.format(new Date(System.currentTimeMillis() + 600000L)) + "001";
            }else{
                qiHao = (Long.valueOf(qiHao) + 1) + "";
            }
        }
        if(type.equals("xjssc")){
            if(qiHaoInt == 96){
                qiHao = format1.format(new Date(System.currentTimeMillis())) + "001";
            }else {
                qiHao = (Long.valueOf(qiHao) + 1) + "";
            }
        }
        if(type.equals("tjssc")){
            if(qiHaoInt == 84){
                qiHao = format1.format(new Date(System.currentTimeMillis() + 14400000L)) + "001";
            }else {
                qiHao = (Long.valueOf(qiHao) + 1) + "";
            }
        }
        System.out.println(qiHao + "    " + type);
        GameData.gameSeasonId.put(type, qiHao);
        while (true){
            try {
                String result= HttpClientUtil.sendHttpGet("http://917500.cn/Home/Lottery/kaijianghao/lotid/" + type + ".html?page=1&nourl=1");
                String[] results = result.split("<td>");
                String qihao = results[1].replace("</td>", "").substring(0, count);
                BcLotteryHistory bcLotteryHistory = new BcLotteryHistory();
                bcLotteryHistory.setLotteryType(type);
                bcLotteryHistory.setSeasonId(qihao);
                List<BcLotteryHistory> bcLotteryHistoryList = bcLotteryHistoryManager.select(bcLotteryHistory);
                System.out.println(qiHao);
                if(CollectionUtils.isEmpty(bcLotteryHistoryList) && qihao.equals(qiHao1) && !results[3].contains("?") && !results[3].contains("正在")){
                    bcLotteryHistory.setNums(results[3].replace("<em >", "").replace("</em></td>", "").substring(0, 9));
                    bcLotteryHistoryManager.insert(bcLotteryHistory);
                    bcLotteryHistory.setOpenTime(new Date());
                    GameData.lastOpen.put(type, bcLotteryHistory);
                    break;
                }
                Thread.sleep(10000);
            }catch (Exception e){
                try {
                    Thread.sleep(10000);
                }catch (Exception e1){
                    e1.printStackTrace();
                }
                e.printStackTrace();
            }
        }
    }
}
