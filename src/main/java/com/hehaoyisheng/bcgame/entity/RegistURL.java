package com.hehaoyisheng.bcgame.entity;

import java.util.Date;

public class RegistURL {
    private int id;
    private String account;
    private String code;
    private Date createTime;
    private String extAddress;
    private int flag;
    private double rebateRatio;
    private String registAddress;
    private int registNum;
    private String userType;
    //有效期
    private int validTime;
    private String parentList;
    private String wxAddress;

    public String getWxAddress() {
        return wxAddress;
    }

    public void setWxAddress(String wxAddress) {
        this.wxAddress = wxAddress;
    }

    public String getParentList() {
        return parentList;
    }

    public void setParentList(String parentList) {
        this.parentList = parentList;
    }

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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getExtAddress() {
        return extAddress;
    }

    public void setExtAddress(String extAddress) {
        this.extAddress = extAddress;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public double getRebateRatio() {
        return rebateRatio;
    }

    public void setRebateRatio(double rebateRatio) {
        this.rebateRatio = rebateRatio;
    }

    public String getRegistAddress() {
        return registAddress;
    }

    public void setRegistAddress(String registAddress) {
        this.registAddress = registAddress;
    }

    public int getRegistNum() {
        return registNum;
    }

    public void setRegistNum(int registNum) {
        this.registNum = registNum;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public int getValidTime() {
        return validTime;
    }

    public void setValidTime(int validTime) {
        this.validTime = validTime;
    }
}
