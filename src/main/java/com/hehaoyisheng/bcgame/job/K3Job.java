package com.hehaoyisheng.bcgame.job;

import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class K3Job {
    private static DateFormat format = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
    private static DateFormat format1 = new SimpleDateFormat("yyyyMMdd");

    @Resource
    private BcLotteryHistoryManager bcLotteryHistoryManager;

    @Resource
    private LotteryThread lotteryThread;

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
        System.out.println("----------------------------------");
        System.out.println(format.format(new Date()) + "----" + type);
        if(bcLotteryHistoryManager == null){
            System.out.println("is null");
        }
        System.out.println("----------------------------------");
        String qiHao1 = GameData.gameSeasonId.get(type);
        Long longTime = 600000L;
        GameData.gameTime.put(type, System.currentTimeMillis() + longTime);
        Integer qiHaoInt = Integer.valueOf(qiHao1.substring(qiHao1.length() - 2, qiHao1.length()));
        String qiHao = qiHao1;
        if(qiHaoInt == 82){
            qiHao = format1.format(new Date(System.currentTimeMillis())) + "001";
        }else{
            qiHao = (Long.valueOf(qiHao) + 1) + "";
        }
        GameData.openCount.put(type, qiHaoInt);
        GameData.gameSeasonId.put(type, qiHao);
        while (true){
            try {
                String result = HttpClientUtil.sendHttpGet("http://pub.icaile.com/" + type + "jjg.php");

                Document document = Jsoup.parse(result);

                Elements elements = document.getElementsByClass("nth-child-1");
                Elements elements2 = document.getElementsByClass("nth-child-3");

                for(int i = 0; i < elements.size(); i++){
                    Element element = elements.get(i);
                    String qihao = element.text();
                    if(qihao.equals(qiHao1)){
                        String lotteryNum = "";
                        Elements elements1 = elements2.get(i).getElementsByClass("ball");
                        for(Element element1 : elements1){
                            lotteryNum += element1.text();
                        }
                        BcLotteryHistory bcLotteryHistory = new BcLotteryHistory();
                        bcLotteryHistory.setLotteryType(type);
                        bcLotteryHistory.setSeasonId(qihao);
                        bcLotteryHistory.setNums(lotteryNum);
                        bcLotteryHistoryManager.insert(bcLotteryHistory);
                        bcLotteryHistory.setOpenTime(new Date());
                        GameData.lastOpen.put(type, bcLotteryHistory);
                        lotteryThread.lottery(type, qihao, bcLotteryHistory.getNums());
                        break;
                    }
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
