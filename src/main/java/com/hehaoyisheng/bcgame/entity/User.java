package com.hehaoyisheng.bcgame.entity;

import java.util.Date;

public class User {
    private int id;
    private String username;
    private String password;
    private double money;
    private int drawFlag;
    private Date createtime;
    private int touzhuFlag;
    private String ip;
    private Date time;
    private int online;
    private int type;
    private String drawPwd;
    private String name;
    //TODO new insert
    private String nickName;
    private String cradNo;
    private String bankName;
    private double minBonusOdds;
    private double fandian;
    private String shangji;
    private int status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public int getDrawFlag() {
        return drawFlag;
    }

    public void setDrawFlag(int drawFlag) {
        this.drawFlag = drawFlag;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public int getTouzhuFlag() {
        return touzhuFlag;
    }

    public void setTouzhuFlag(int touzhuFlag) {
        this.touzhuFlag = touzhuFlag;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public int getOnline() {
        return online;
    }

    public void setOnline(int online) {
        this.online = online;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getDrawPwd() {
        return drawPwd;
    }

    public void setDrawPwd(String drawPwd) {
        this.drawPwd = drawPwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getCradNo() {
        return cradNo;
    }

    public void setCradNo(String cradNo) {
        this.cradNo = cradNo;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public double getMinBonusOdds() {
        return minBonusOdds;
    }

    public void setMinBonusOdds(double minBonusOdds) {
        this.minBonusOdds = minBonusOdds;
    }

    public double getFandian() {
        return fandian;
    }

    public void setFandian(double fandian) {
        this.fandian = fandian;
    }

    public String getShangji() {
        return shangji;
    }

    public void setShangji(String shangji) {
        this.shangji = shangji;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
