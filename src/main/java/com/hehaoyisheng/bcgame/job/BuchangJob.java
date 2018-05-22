package com.hehaoyisheng.bcgame.job;

import com.hehaoyisheng.bcgame.common.LotteryThread;
import com.hehaoyisheng.bcgame.entity.BcLotteryHistory;
import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.manager.BcLotteryHistoryManager;
import com.hehaoyisheng.bcgame.utils.HttpClientUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;


/**
 * 补偿机制
 */
public class BuchangJob {
    private static volatile Long qihao = 0L;

    @Resource
    private BcLotteryHistoryManager bcLotteryHistoryManager;

    @Resource
    private LotteryThread lotteryThread;

    public void execute(){
        //腾讯分分彩的补偿机制
        String result = HttpClientUtil.sendHttpGet("http://www.off0.com/fenfencai.php");
        Document document = Jsoup.parse(result);
        Elements  elements = document.getElementsByTag("tr");
        int i = 0;
        for(Element element : elements){
            if(i == 0){
                i++;
                continue;
            }
            String[] ss = element.text().split(" ");
            System.out.println(ss[1] + "  " + ss[5]);
            if(Long.valueOf(ss[1].replace("-", "")) > qihao){
                BcLotteryHistory bcLotteryHistory = new BcLotteryHistory();
                bcLotteryHistory.setLotteryType("txssc");
                bcLotteryHistory.setSeasonId(ss[1].replace("-", ""));
                if(CollectionUtils.isEmpty(bcLotteryHistoryManager.select(bcLotteryHistory, 0, 5))){
                    System.out.println(123);
                    bcLotteryHistory.setNums(ss[5]);
                    bcLotteryHistoryManager.insert(bcLotteryHistory);
                }
                lotteryThread.lottery("txssc", ss[1], ss[5]);
                qihao = Long.valueOf(ss[1].replace("-", ""));
            }
        }
    }
}
