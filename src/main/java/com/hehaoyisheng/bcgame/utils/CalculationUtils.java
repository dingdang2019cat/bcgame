package com.hehaoyisheng.bcgame.utils;


public class CalculationUtils {

    /**
     * 追号列表计算
     * @param qihao
     * @param gameType
     * @return
     */
    public static Long traceList(Long qihao, String gameType){
        if(gameType.contains("cqssc")){
            if(qihao.toString().endsWith("120")){
                return qihao + 1;
            }
        }
        return qihao + 1;
    }

    public static String lotteryTime(Long qihao, String gameType){
        return null;
    }
}
