package com.hehaoyisheng.bcgame.job;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.entity.YiLou;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.manager.YiLouManager;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class TxSSCJob {
    private static DateFormat format = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
    private static DateFormat format1 = new SimpleDateFormat("yyyyMMdd");

    @Resource
    private BcLotteryHistoryManager bcLotteryHistoryManager;

    @Resource
    private LotteryThread lotteryThread;

    @Resource
    private YiLouManager yiLouManager;

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
        try {
            System.out.println("-------------------------------------------");
            System.out.println("-------------------------------------------");
            System.out.println("--------------------txssc--------------");
            System.out.println("-------------------------------------------");
            System.out.println("-------------------------------------------");
            Long time = 60000L;
            GameData.gameTime.put(type, System.currentTimeMillis() + time);
            String qihao = GameData.gameSeasonId.get(type);
            System.out.println(qihao);
            Integer qiHaoInt = Integer.valueOf(qihao.substring(qihao.length() - 4, qihao.length()));
            GameData.openCount.put(type, qiHaoInt);
            String qiHao = (Long.valueOf(qihao) + 1) + "";
            GameData.gameSeasonId.put(type, qiHao);
            for(int i = 0; i < 100; i++){
                System.out.println("-------------------------------------------begin");
                String result = HttpClientUtil.sendHttpGet("https://www.369kj.com/txffc/kj/txffc.php");
                JSONObject json = JSON.parseObject(result);
                JSONArray jsonArray = json.getJSONArray("list");
                for(int k = 0; k < jsonArray.size(); k++){
                    JSONObject jsonObject = jsonArray.getJSONObject(k);
                    if(qihao.equals(jsonObject.getString("period"))){
                        BcLotteryHistory bcLotteryHistory = new BcLotteryHistory();
                        bcLotteryHistory.setLotteryType(type);
                        bcLotteryHistory.setSeasonId(qihao);
                        bcLotteryHistory.setNums(jsonObject.getString("result"));
                        bcLotteryHistory.setOpenTime(new Date());
                        bcLotteryHistoryManager.insert(bcLotteryHistory);
                        GameData.lastOpen.put(type, bcLotteryHistory);
                        try {
                            List<YiLou> yiLous = yiLouManager.select(type, 0, 1);
                            YiLou yiLou = yiLous.get(0);
                            String[] yiLouNums = yiLou.getContent().split(" ");
                            String[] lotteryNums = bcLotteryHistory.getNums().split(",");
                            String[] lotteryNums1 = yiLou.getNums().split(",");
                            YiLou yiLou1 = new YiLou();
                            String sss = "";
                            for(int l = 0; l < 5; l++){
                                String[] yiLouNums1 = yiLouNums[l].split(",");
                                Integer lotteryNumInteger = Integer.valueOf(lotteryNums[l]);
                                Integer lotteryNumInteger1 = Integer.valueOf(lotteryNums1[l]);
                                if(!type.contains("ssc")){
                                    lotteryNumInteger = lotteryNumInteger - 1;
                                    lotteryNumInteger1 = lotteryNumInteger1 - 1;
                                }
                                for(int p  = 0 ; p < yiLouNums1.length; p++){
                                    Integer yi = Integer.valueOf(yiLouNums1[p]);
                                    yi = yi + 1;
                                    if(p == lotteryNumInteger1){
                                        yi = 1;
                                    }
                                    sss += yi + ",";
                                }
                                sss = sss.substring(0, sss.length() - 1);
                                sss += " ";
                            }
                            sss = sss.substring(0, sss.length() - 1);
                            yiLou1.setSessionId(qihao);
                            yiLou1.setType(type);
                            yiLou1.setContent(sss);
                            yiLou1.setNums(bcLotteryHistory.getNums());
                            yiLouManager.insert(yiLou1);
                        }catch (Exception e1){
                            e1.printStackTrace();
                        }
                        lotteryThread.lottery(type, qihao, bcLotteryHistory.getNums());
                        return;
                    }
                }
                Thread.sleep(3000);
            }
        }catch (Exception e){
            e.printStackTrace();
            try {
                Thread.sleep(3000);
            }catch (Exception e1){
                e1.printStackTrace();
            }
        }
    }
}
