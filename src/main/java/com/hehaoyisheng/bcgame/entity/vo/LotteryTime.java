package com.hehaoyisheng.bcgame.entity.vo;

public class LotteryTime {

    private String id;
    private Long time;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public LotteryTime(String id, Long time) {
        this.id = id;
        this.time = time;
    }
}
