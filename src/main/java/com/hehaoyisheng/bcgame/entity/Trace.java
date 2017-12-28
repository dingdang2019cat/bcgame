package com.hehaoyisheng.bcgame.entity;

import java.util.Date;

public class Trace {
    private String id;
    private String account;
    private double cancelTraceAmount;
    private int cancelTraceNum;
    private Date createTime;
    private double finishTraceAmount;
    private int finishTraceNum;
    private int isWinStop;
    private String lotteryId;
    private String lotteryName;
    private String startSeason;
    private Integer status;
    private double traceAmount;
    private int traceNum;
    private String userMark;
    private double winAmount;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public double getCancelTraceAmount() {
        return cancelTraceAmount;
    }

    public void setCancelTraceAmount(double cancelTraceAmount) {
        this.cancelTraceAmount = cancelTraceAmount;
    }

    public int getCancelTraceNum() {
        return cancelTraceNum;
    }

    public void setCancelTraceNum(int cancelTraceNum) {
        this.cancelTraceNum = cancelTraceNum;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public double getFinishTraceAmount() {
        return finishTraceAmount;
    }

    public void setFinishTraceAmount(double finishTraceAmount) {
        this.finishTraceAmount = finishTraceAmount;
    }

    public int getFinishTraceNum() {
        return finishTraceNum;
    }

    public void setFinishTraceNum(int finishTraceNum) {
        this.finishTraceNum = finishTraceNum;
    }

    public int getIsWinStop() {
        return isWinStop;
    }

    public void setIsWinStop(int isWinStop) {
        this.isWinStop = isWinStop;
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

    public String getStartSeason() {
        return startSeason;
    }

    public void setStartSeason(String startSeason) {
        this.startSeason = startSeason;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public double getTraceAmount() {
        return traceAmount;
    }

    public void setTraceAmount(double traceAmount) {
        this.traceAmount = traceAmount;
    }

    public int getTraceNum() {
        return traceNum;
    }

    public void setTraceNum(int traceNum) {
        this.traceNum = traceNum;
    }

    public String getUserMark() {
        return userMark;
    }

    public void setUserMark(String userMark) {
        this.userMark = userMark;
    }

    public double getWinAmount() {
        return winAmount;
    }

    public void setWinAmount(double winAmount) {
        this.winAmount = winAmount;
    }
}
