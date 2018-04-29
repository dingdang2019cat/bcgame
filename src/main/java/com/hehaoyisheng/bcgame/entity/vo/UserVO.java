package com.hehaoyisheng.bcgame.entity.vo;

import java.util.Date;

public class UserVO {
    private String account;
    private double amount;
    private String loginTime;
    private double rebateRatio;
    private double teamAmount;
    private int teamCount;
    private String homeRemark;
    private int userType;
    private int contractStatus;
    private String parentAccount;

    public String getParentAccount() {
        return parentAccount;
    }

    public void setParentAccount(String parentAccount) {
        this.parentAccount = parentAccount;
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

    public String getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(String loginTime) {
        this.loginTime = loginTime;
    }

    public double getRebateRatio() {
        return rebateRatio;
    }

    public void setRebateRatio(double rebateRatio) {
        this.rebateRatio = rebateRatio;
    }

    public double getTeamAmount() {
        return teamAmount;
    }

    public void setTeamAmount(double teamAmount) {
        this.teamAmount = teamAmount;
    }

    public int getTeamCount() {
        return teamCount;
    }

    public void setTeamCount(int teamCount) {
        this.teamCount = teamCount;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

    public int getContractStatus() {
        return contractStatus;
    }

    public void setContractStatus(int contractStatus) {
        this.contractStatus = contractStatus;
    }

    public String getHomeRemark() {
        return homeRemark;
    }

    public void setHomeRemark(String homeRemark) {
        this.homeRemark = homeRemark;
    }
}
