package com.hehaoyisheng.bcgame.entity;

public class BcLotteryOdds {
    private int id;
    private String lotteryType;
    private String playType;
    private double odds;
    private Integer bounsType;

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    private Integer count;

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

    public String getPlayType() {
        return playType;
    }

    public void setPlayType(String playType) {
        this.playType = playType;
    }

    public double getOdds() {
        return odds;
    }

    public void setOdds(double odds) {
        this.odds = odds;
    }

    public Integer getBounsType() {
        return bounsType;
    }

    public void setBounsType(Integer bounsType) {
        this.bounsType = bounsType;
    }
}
