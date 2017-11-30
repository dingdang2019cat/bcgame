package com.hehaoyisheng.bcgame.entity.vo;

public class Province {
    private int provid;
    private String provname;

    public int getProvid() {
        return provid;
    }

    public void setProvid(int provid) {
        this.provid = provid;
    }

    public String getProvname() {
        return provname;
    }

    public void setProvname(String provname) {
        this.provname = provname;
    }

    public Province(int provid, String provname) {
        this.provid = provid;
        this.provname = provname;
    }
}
