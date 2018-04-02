package com.hehaoyisheng.bcgame.entity;

import java.util.Date;

public class Recharge {
    private String account;
    private double amount;
    private String bankName;
    private String bankNameCode;
    private Date createTime;
    private String id;
    private Double realAmount;
    private Integer rechargeType;
    //
    private Integer status;
    private String parentList;

    public String getParentList() {
        return parentList;
    }

    public void setParentList(String parentList) {
        this.parentList = parentList;
    }

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

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getBankNameCode() {
        return bankNameCode;
    }

    public void setBankNameCode(String bankNameCode) {
        this.bankNameCode = bankNameCode;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Double getRealAmount() {
        return realAmount;
    }

    public void setRealAmount(Double realAmount) {
        this.realAmount = realAmount;
    }

    public Integer getRechargeType() {
        return rechargeType;
    }

    public void setRechargeType(Integer rechargeType) {
        this.rechargeType = rechargeType;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
