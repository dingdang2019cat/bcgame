package com.hehaoyisheng.bcgame.entity.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class LotteryOrder {
    private String account;
    private double amount;
    private int betCount;
    private double bonusRate;
    private int bonusType;
    private String content;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;
    //彩票分组名称
    private String groupName;
    //null
    private String hashCode;
    //orderId
    private String id;
    //是否追号
    private int isTrace;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date lastTime;
    //彩票id
    private String lotteryId;
    private String lotteryName;
    //开奖号码
    private String openNum;
    //玩法
    private String playName;
    private String playerId;
    private int price;
    private String seasonId;
    private int status;
    private int test;
    private int theoreticalBonus;
    private String traceId;
    private int traceWinStop;
    private double unit;
    private String userMark;
    //奖金
    private double win;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getBetCount() {
        return betCount;
    }

    public void setBetCount(int betCount) {
        this.betCount = betCount;
    }

    public double getBonusRate() {
        return bonusRate;
    }

    public void setBonusRate(double bonusRate) {
        this.bonusRate = bonusRate;
    }

    public int getBonusType() {
        return bonusType;
    }

    public void setBonusType(int bonusType) {
        this.bonusType = bonusType;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getHashCode() {
        return hashCode;
    }

    public void setHashCode(String hashCode) {
        this.hashCode = hashCode;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getIsTrace() {
        return isTrace;
    }

    public void setIsTrace(int isTrace) {
        this.isTrace = isTrace;
    }

    public Date getLastTime() {
        return lastTime;
    }

    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }

    public String getLotteryId() {
        return lotteryId;
    }

    public void setLotteryId(String lotteryId) {
        this.lotteryId = lotteryId;
    }

    public String getLotteryName() {
        return lotteryName;
    }

    public void setLotteryName(String lotteryName) {
        this.lotteryName = lotteryName;
    }

    public String getOpenNum() {
        return openNum;
    }

    public void setOpenNum(String openNum) {
        this.openNum = openNum;
    }

    public String getPlayName() {
        return playName;
    }

    public void setPlayName(String playName) {
        this.playName = playName;
    }

    public String getPlayerId() {
        return playerId;
    }

    public void setPlayerId(String playerId) {
        this.playerId = playerId;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getSeasonId() {
        return seasonId;
    }

    public void setSeasonId(String seasonId) {
        this.seasonId = seasonId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getTest() {
        return test;
    }

    public void setTest(int test) {
        this.test = test;
    }

    public int getTheoreticalBonus() {
        return theoreticalBonus;
    }

    public void setTheoreticalBonus(int theoreticalBonus) {
        this.theoreticalBonus = theoreticalBonus;
    }

    public String getTraceId() {
        return traceId;
    }

    public void setTraceId(String traceId) {
        this.traceId = traceId;
    }

    public int getTraceWinStop() {
        return traceWinStop;
    }

    public void setTraceWinStop(int traceWinStop) {
        this.traceWinStop = traceWinStop;
    }

    public double getUnit() {
        return unit;
    }

    public void setUnit(double unit) {
        this.unit = unit;
    }

    public String getUserMark() {
        return userMark;
    }

    public void setUserMark(String userMark) {
        this.userMark = userMark;
    }

    public double getWin() {
        return win;
    }

    public void setWin(double win) {
        this.win = win;
    }
}
