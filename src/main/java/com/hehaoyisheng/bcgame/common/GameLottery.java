package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Lists;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Nonnull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;


public class GameLottery {

    private static final Logger logger = LoggerFactory.getLogger(GameLottery.class);

    //12345,12345,12345,12345,12345     1,2,3,4,5


    /**
     * 复式开奖
     * @param lotteryNumber 开奖号码
     * @param betNumber     投注号码
     * @param playCode      玩法code
     * @return              中奖注数
     */
    public static int sscFsLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber, @Nonnull String playCode){
        //根据复式种类切割开奖数据
        Integer[] lotteryNumberCount = GameLotteryData.lotteryNumberCount.get(playCode);
        System.out.println(lotteryNumberCount[0] + "   " + lotteryNumberCount[1]);
        System.out.println(lotteryNumber);
        lotteryNumber = lotteryNumber.substring(lotteryNumberCount[0], lotteryNumberCount[1]);
        System.out.println("lotteryNumber " + lotteryNumber);
        //将投注开奖数字转化为数组
        String[] lotteryNumbers = lotteryNumber.split(",");
        betNumber = betNumber.replace("-,", "");
        String[] betNumbers = betNumber.split(",");
        if(lotteryNumbers.length != betNumbers.length){
            logger.error("lottery error! the lotteryNumber.length != betNumbers.length, lotteryNumber={}, betNumber={}, playCode is " + playCode, lotteryNumber, betNumber);
        }
        //如果复式命中的位数是全部投注的位数即为中奖
        int winCount = 0;
        for(int i = 0; i < lotteryNumbers.length; i++){
            System.out.println(betNumbers[i] + "---" + lotteryNumbers[i]);
            if(betNumbers[i].contains(lotteryNumbers[i])){
                winCount++;
            }
        }
        return winCount == lotteryNumbers.length ? 1 : 0;
    }


    /**
     * 定位胆开奖
     * @param lotteryNumber 开奖号码
     * @param betNumber     投注号码
     * @return              中奖注数
     */
    public static int sscDwdLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber){
        //将投注开奖数字转化为数组
        String[] lotteryNumbers = lotteryNumber.split(",");
        String[] betNumbers = betNumber.split(",");
        if(lotteryNumbers.length != betNumbers.length){
            logger.error("lottery error! the lotteryNumber.length != betNumbers.length, lotteryNumber={}, betNumber={}", lotteryNumber, betNumber);
        }
        int winCount = 0;
        for (int i = 0; i < lotteryNumbers.length; i++) {
            if(betNumbers[i].equals("-")){
                continue;
            }
            if(betNumbers[i].contains(lotteryNumbers[i])){
                winCount++;
            }
        }
        return winCount;
    }

    /**
     * 组选开奖
     * @param lotteryNumber 开奖号码
     * @param betNumber     投注号码
     * @param playCode      玩法code
     * @return              中奖注数
     */
    public static int sscZxLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber, @Nonnull String playCode){
        //根据复式种类切割开奖数据
        Integer[] lotteryNumberCount = GameLotteryData.lotteryNumberCount.get(playCode);
        lotteryNumber = lotteryNumber.substring(lotteryNumberCount[0], lotteryNumberCount[1]);
        //将投注开奖数字转化为数组
        String[] lotteryNumbers = lotteryNumber.split(",");
        betNumber = betNumber.replace("-,", "");
        //betNumber = betNumber.replace(",-", "");
        String[] betNumbers = betNumber.split(",");
        boolean flag = false;
        for(int i = 0; i < betNumbers.length; i++){
            if(i > 0 && !flag){
                return 0;
            }
            for(String betNumberOne : betNumbers[i].split("")){
                flag = false;
                int repeatCount = 0;
                if("".equals(betNumberOne)){
                    continue;
                }
                for(String lotteryNumberOne : lotteryNumbers){
                    if(lotteryNumberOne.equals(betNumberOne)){
                        repeatCount++;
                    }
                }
                if(repeatCount >= lotteryNumberCount[i + 2]){
                    flag = true;
                    break;
                }
            }
        }
        return flag ? 1 : 0;
    }

    /**
     * 不定位胆开奖
     * @param lotteryNumber 开奖号码
     * @param betNumber     投注号码
     * @param playCode      玩法code
     * @return              中奖注数
     */
    public static int sscNotDwdLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber, @Nonnull String playCode){
        //根据复式种类切割开奖数据
        Integer[] lotteryNumberCount = GameLotteryData.lotteryNumberCount.get(playCode);
        lotteryNumber = lotteryNumber.substring(lotteryNumberCount[0], lotteryNumberCount[1]);
        //将投注开奖数字转化为数组
        String[] betNumbers = betNumber.split(",");
        //不定位胆长度
        int length = lotteryNumberCount[2];
        List<String> betNumberOne = combine(betNumbers, length);
        int winCount = 0;
        int winCountOne = 0;
        for(String betNumberOneOnly : betNumberOne){
            winCountOne = 0;
            for(String s : betNumberOneOnly.split("")){
                if(lotteryNumber.contains(s)){
                    winCountOne++;
                }
            }
            if(winCountOne == length){
                winCount++;
            }
        }
        return winCount;
    }

    /**
     * 跨度开奖
     * @param lotteryNumber 开奖号码
     * @param betNumber     投注号码
     * @param playCode      玩法code
     * @return              中奖注数
     */
    public static int sscKdLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber, @Nonnull String playCode){
        //根据复式种类切割开奖数据
        Integer[] lotteryNumberCount = GameLotteryData.lotteryNumberCount.get(playCode);
        lotteryNumber = lotteryNumber.substring(lotteryNumberCount[0], lotteryNumberCount[1]);
        //将投注开奖数字转化为数组
        String[] lotteryNumbers = lotteryNumber.split(",");
        List<String> lotteryNumbersList = Lists.newArrayList(lotteryNumbers);
        Collections.sort(lotteryNumbersList);
        int max = Integer.valueOf(lotteryNumbersList.get(lotteryNumbersList.size() - 1));
        int min = Integer.valueOf(lotteryNumbersList.get(0));
        int count = max - min;
        return betNumber.contains(count + "") ? 1 : 0;
    }

    /**
     * 和值开奖
     * @param lotteryNumber 开奖号码
     * @param betNumber     投注号码
     * @param playCode      玩法code
     * @return              中奖注数
     */
    public static int sscHzLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber, @Nonnull String playCode){
    //根据复式种类切割开奖数据
        Integer[] lotteryNumberCount = GameLotteryData.lotteryNumberCount.get(playCode);
        lotteryNumber = lotteryNumber.substring(lotteryNumberCount[0], lotteryNumberCount[1]);
        System.out.println(lotteryNumber);
        //将投注开奖数字转化为数组
        String[] lotteryNumbers = lotteryNumber.split(",");
        int max = 0;
        for(String s : lotteryNumbers){
            max += Integer.valueOf(s);
        }
        System.out.println(max);
        return betNumber.contains(max + "") ? 1 : 0;
    }

    /**
     * 龙虎和
     * @return
     */
    public static int lhh(@Nonnull String lotteryNumber, @Nonnull String betNumber){
        int winCount = 0;
        String[] lotteryNumbers = lotteryNumber.split(",");
        String[] betNumbers = betNumber.split(",");
        for(int i = 0; i < betNumbers.length; i++){
            if(betNumbers[i].contains("-")){
                continue;
            }
            String weishu = betNumbers[i].substring(1, 3);
            List<Integer> list = Lists.newArrayList();
            for(String s : weishu.split("")){
                if(s.equals("")){
                    continue;
                }
                if(s.equals("万")){
                    list.add(Integer.valueOf(lotteryNumbers[0]));
                }
                if(s.equals("千")){
                    list.add(Integer.valueOf(lotteryNumbers[1]));
                }
                if(s.equals("个")){
                    list.add(Integer.valueOf(lotteryNumbers[2]));
                }
                if(s.equals("十")){
                    list.add(Integer.valueOf(lotteryNumbers[3]));
                }
                if(s.equals("百")){
                    list.add(Integer.valueOf(lotteryNumbers[4]));
                }
            }
            if(betNumbers[i].contains("龙") && list.get(0) > list.get(1)){
                winCount++;
            }
            if(betNumbers[i].contains("虎") && list.get(0) < list.get(1)){
                winCount++;
            }
            if(betNumbers[i].contains("和") && list.get(0) == list.get(1)){
                winCount++;
            }
        }
        return winCount;
    }


    /**
     * 特码开奖
     * @param lotteryNumber 开奖号码
     * @param betNumber     投注号码
     * @return              中奖注数
     */
    public static int sscTmLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber){
        //将投注开奖数字转化为数组
        String[] betNumbers = betNumber.split(",");
        int winCount = 0;
        for(String s : betNumbers){
            if(lotteryNumber.contains(s)){
                winCount++;
            }
        }
        return winCount;
    }

    /**
     * 大小单双开奖
     * @param lotteryNumber 开奖号码
     * @param betNumber     投注号码
     * @return              中奖注数
     */
    public static int sscDxdsLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber){
        //将投注开奖数字转化为数组
        String[] betNumbers = betNumber.split(",");
        String[] lotteryNumbers = lotteryNumber.split(",");
        int winCount = 0;
        for(int i = 0; i < betNumbers.length; i++){
            String betNumbersOne = betNumbers[i];
            if(betNumbersOne.contains("-")){
                continue;
            }
            for(String s : betNumbersOne.split("\\+")){
                String ss = GameLotteryData.dxdsLottery.get(s);
                if(ss.contains(lotteryNumbers[i])){
                    winCount++;
                }
            }
        }
        return winCount;
    }

    /**
     *  pk10定位胆
     */
    public static int pk10DwdLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber,@Nonnull String playCode){
        //将投注开奖数字转化为数组
        String[] betNumbers = betNumber.split(",");
        String[] lotteryNumbers = lotteryNumber.split(",");
        int winCount = 0;
        int start = 0;
        int max = 5;
        if(playCode.contains("last")){
            start = 5;
            max = 10;
        }
        for(int i = 0; start < max; start++, i++){
            if(pk10SubString(betNumbers[i]).contains(lotteryNumbers[start])){
                winCount++;
            }
        }
        return winCount;
    }

    /**
     * pk10复式
     * @param lotteryNumber
     * @param betNumber
     * @return
     */
    public static int pk10FsLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber){
        boolean result = true;
        //将投注开奖数字转化为数组
        String[] betNumbers = betNumber.split(",");
        String[] lotteryNumbers = lotteryNumber.split(",");
        for(int i = 0; i < betNumbers.length; i++){
            if(!pk10SubString(betNumbers[i]).contains(lotteryNumbers[i])){
                result = false;
            }
        }
        return result ? 1 : 0;
    }

    /**
     * 猜前几
     * @return
     */
    public static int pk10CqLottery(@Nonnull String lotteryNumber, @Nonnull String betNumber){
        int winCount = 0;
        //将投注开奖数字转化为数组
        String[] betNumbers = betNumber.split(",");
        String[] lotteryNumbers = lotteryNumber.split(",");
        for(int i = 0; i < betNumbers.length; i++){
            if(!pk10SubString(betNumbers[i]).contains(lotteryNumbers[i])){
                winCount += 1;
            }
        }
        return winCount;
    }

    /**
     * 冠亚和
     * @return
     */
    public static int pk10Gyh(@Nonnull String lotteryNumber, @Nonnull String betNumber){
        String[] lotteryNumbers = lotteryNumber.split(",");
        String sumString = "";
        Integer sum = Integer.valueOf(lotteryNumbers[0]) + Integer.valueOf(lotteryNumbers[1]);
        if(sum < 10){
            sumString = "0" + sum;
        }
        if(betNumber.contains(sumString)){
            return 1;
        }
        return 0;
    }

    /**
     * pk10龙虎
     * @return
     */
    public static int pk10Lh(@Nonnull String lotteryNumber, @Nonnull String betNumber){
        //将投注开奖数字转化为数组
        String[] betNumbers = betNumber.split(",");
        String[] lotteryNumbers = lotteryNumber.split(",");
        int winCount = 0;
        for(int i = 0; i < 5; i++){
            String bet = betNumbers[i];
            if(bet.equals("-")){
                continue;
            }
            if(Integer.valueOf(lotteryNumbers[i]) > Integer.valueOf(lotteryNumbers[lotteryNumbers.length - 1 - i])){
                winCount += bet.contains("龙") ? 1 : 0;
            }else if(Integer.valueOf(lotteryNumbers[i]) < Integer.valueOf(lotteryNumbers[lotteryNumbers.length - 1 - i])){
                winCount += bet.contains("虎") ? 1 : 0;
            }
        }
        return winCount;
    }


    public static void main(String[] args) {
        System.out.println(bc11x5rx("05,02,01,11,10", "05", "n11x5_x1"));
    }

    private static String pk10SubString(String betNumber){
        String result = "";
        for(int i = 0; (i * 2 + 2) <= betNumber.length() ; i++){
            result += betNumber.substring(i * 2, i * 2 + 2) + ",";
        }
        return result;
    }

    /**
     * 11x5任选几中几
     * @param lotteryNumber
     * @param betNumber
     * @param playCode
     * @return
     */
    public static int bc11x5rx(@Nonnull String lotteryNumber, @Nonnull String betNumber, @Nonnull String playCode){
        int xuanCount = Integer.valueOf(playCode.substring(playCode.length() - 1, playCode.length()));
        xuanCount = xuanCount > 5 ? 5 : xuanCount;
        int winCount = 0;
        String[] betNumbers = betNumber.split(",");
        List<String> list = combine(betNumbers, xuanCount);
        for(String s : list){
            String[] betNumbers1 = s.split(" ");
            int count = 0;
            for(String betNumber1 : betNumbers1){
                if(lotteryNumber.contains(betNumber1)){
                    count++;
                }
            }
            if(count >= xuanCount){
                winCount++;
            }
        }
        return winCount;
    }

    /**
     * 11x5不定位胆
     * @param lotteryNumber
     * @param betNumber
     * @return
     */
    public static int bc11x5bdwd(@Nonnull String lotteryNumber, @Nonnull String betNumber){
        int winCount = 0;
        String[] betNumbers = betNumber.split(",");
        lotteryNumber = lotteryNumber.substring(0, 8);
        for(String betNumber1 : betNumbers){
            if(lotteryNumber.contains(betNumber1)){
                winCount++;
            }
        }
        return winCount;
    }

    /**
     * 11x5胆拖
     * @param lotteryNumber
     * @param betNumber
     * @param playCode
     * @return
     */
    public static int bc11x5dt(@Nonnull String lotteryNumber, @Nonnull String betNumber, @Nonnull String playCode){
        if(playCode.contains("group")){
            if(playCode.contains("start2")){
                lotteryNumber = lotteryNumber.substring(0, 5);
            }
            if(playCode.contains("start3")){
                lotteryNumber = lotteryNumber.substring(0, 8);
            }
        }
        String[] betNumbers = betNumber.split(";");
        int winCount = 0;
        String dan = betNumbers[0].replace("胆", "");
        for(String s : dan.split(",")) {
            if (lotteryNumber.contains(s)) {
                if(playCode.contains("x2")){
                    for(String s1 : betNumbers[1].split(",")){
                        if(lotteryNumber.contains(s1)){
                            winCount++;
                        }
                    }

                }else if(playCode.contains("x3")){
                    for(String s1 : combine(betNumbers[1].split(","), 2)){
                        int count = 0;
                        for(String s2 : s1.split(" ")){
                            if(lotteryNumber.contains(s2)){
                                count++;
                            }
                        }
                        if(count == 2){
                            winCount++;
                        }
                    }
                }
            }
        }
        return winCount;
    }

    /**
     * 11x5直选复式
     * @param lotteryNumber
     * @param betNumber
     * @param playCode
     * @return
     */
    public static int bc11x5zxfs(@Nonnull String lotteryNumber, @Nonnull String betNumber, @Nonnull String playCode){
        String[] betNumbers = betNumber.split(",");
        if(playCode.contains("start2")){
            lotteryNumber = lotteryNumber.substring(0, 5);
        }
        if(playCode.contains("start3")){
            lotteryNumber = lotteryNumber.substring(0, 8);
        }
        String[] lotteryNumbers = lotteryNumber.split(",");
        boolean flag = true;
        for(int i = 0; i < lotteryNumber.length(); i++) {
            if (!pk10SubString(betNumbers[i]).contains(lotteryNumbers[i])) {
                flag = false;
            }
        }
        return flag ? 1 : 0;
    }

    public static int bc11x5zuxuanfs(@Nonnull String lotteryNumber, @Nonnull String betNumber, @Nonnull String playCode){
        String[] betNumbers = betNumber.split(",");
        int needCount = 0;
        int winCount = 0;
        if(playCode.contains("start2")){
            needCount = 2;
            lotteryNumber = lotteryNumber.substring(0, 5);
        }
        if(playCode.contains("start3")){
            needCount = 3;
            lotteryNumber = lotteryNumber.substring(0, 8);
        }
        for(String s : combine(betNumbers, needCount)){
            int count = 0;
            for(String ss : s.split(" ")) {
                if (lotteryNumber.contains(ss)) {
                    count++;
                }
            }
            if(count >= needCount){
                winCount++;
            }
        }
        return winCount;
    }

    /**
     * 排列的算法
     * @param betNumber 数据数组
     * @param num M选N中 N的个数
     * @return
     */
    public static List<String> combine(String[] betNumber, int num) {
        List<String> list = new ArrayList<String>();
        StringBuffer sb = new StringBuffer();
        String[] b = new String[betNumber.length];
        for (int i = 0; i < b.length; i++) {
            if (i < num) {
                b[i] = "1";
            } else
                b[i] = "0";
        }

        int point = 0;
        int nextPoint = 0;
        int count = 0;
        int sum = 0;
        String temp = "1";
        while (true) {
            // 判断是否全部移位完毕
            for (int i = b.length - 1; i >= b.length - num; i--) {
                if (b[i].equals("1"))
                    sum += 1;
            }
            // 根据移位生成数据
            for (int i = 0; i < b.length; i++) {
                if (b[i].equals("1")) {
                    point = i;
                    sb.append(betNumber[point]);
                    sb.append(" ");
                    count++;
                    if (count == num)
                        break;
                }
            }
            // 往返回值列表添加数据
            list.add(sb.toString());

            // 当数组的最后num位全部为1 退出
            if (sum == num) {
                break;
            }
            sum = 0;

            // 修改从左往右第一个10变成01
            for (int i = 0; i < b.length - 1; i++) {
                if (b[i].equals("1") && b[i + 1].equals("0")) {
                    point = i;
                    nextPoint = i + 1;
                    b[point] = "0";
                    b[nextPoint] = "1";
                    break;
                }
            }
            // 将 i-point个元素的1往前移动 0往后移动
            for (int i = 0; i < point - 1; i++)
                for (int j = i; j < point - 1; j++) {
                    if (b[i].equals("0")) {
                        temp = b[i];
                        b[i] = b[j + 1];
                        b[j + 1] = temp;
                    }
                }
            // 清空 StringBuffer
            sb.setLength(0);
            count = 0;
        }
        return list;

    }

}
