package com.hehaoyisheng.bcgame.entity;

import java.util.Date;

public class MoneyHistory {
    private int id;
    private String account;
    private int accountId;
    private double afterMoney;
    private double beforeMoney;
    private Date bizDatetime;
    private Date createDatetime;
    private int createUserId;
    private double money;
    private String orderId;
    private String remark;
    private int type;
    private String shangji;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public double getAfterMoney() {
        return afterMoney;
    }

    public void setAfterMoney(double afterMoney) {
        this.afterMoney = afterMoney;
    }

    public double getBeforeMoney() {
        return beforeMoney;
    }

    public void setBeforeMoney(double beforeMoney) {
        this.beforeMoney = beforeMoney;
    }

    public Date getBizDatetime() {
        return bizDatetime;
    }

    public void setBizDatetime(Date bizDatetime) {
        this.bizDatetime = bizDatetime;
    }

    public Date getCreateDatetime() {
        return createDatetime;
    }

    public void setCreateDatetime(Date createDatetime) {
        this.createDatetime = createDatetime;
    }

    public int getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(int createUserId) {
        this.createUserId = createUserId;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getShangji() {
        return shangji;
    }

    public void setShangji(String shangji) {
        this.shangji = shangji;
    }
}
