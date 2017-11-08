package com.hehaoyisheng.bcgame.entity;

import java.util.Date;

public class BcLotteryHistory {
    private int id;
    private String lotteryType;
    private String value;
    private Date lotteryTime;
    private String qiHao;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLotteryType() {
        return lotteryType;
    }

    public void setLotteryType(String lotteryType) {
        this.lotteryType = lotteryType;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Date getLotteryTime() {
        return lotteryTime;
    }

    public void setLotteryTime(Date lotteryTime) {
        this.lotteryTime = lotteryTime;
    }

    public String getQiHao() {
        return qiHao;
    }

    public void setQiHao(String qiHao) {
        this.qiHao = qiHao;
    }
}
