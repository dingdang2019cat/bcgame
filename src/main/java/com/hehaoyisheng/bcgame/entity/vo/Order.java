package com.hehaoyisheng.bcgame.entity.vo;

public class Order {
    private String seasonId;
    private String playId;
    private String content;
    private int betCount;
    private int price;
    private double unit;

    public String getPlayId() {
        return playId;
    }

    public void setPlayId(String playId) {
        this.playId = playId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getBetCount() {
        return betCount;
    }

    public void setBetCount(int betCount) {
        this.betCount = betCount;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public double getUnit() {
        return unit;
    }

    public void setUnit(double unit) {
        this.unit = unit;
    }

    public String getSeasonId() {
        return seasonId;
    }

    public void setSeasonId(String seasonId) {
        this.seasonId = seasonId;
    }

    public Order clone(String seasonId, int price){
        Order order = new Order();
        order.setPlayId(this.playId);
        order.setContent(this.content);
        order.setUnit(this.unit);
        order.setBetCount(betCount);
        order.setPrice(price);
        order.setSeasonId(seasonId);
        return order;
    }
}
