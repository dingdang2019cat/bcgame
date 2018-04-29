package com.hehaoyisheng.bcgame.entity.vo;

public class InfoVO {
    private String account;
    private double drawingAmount;
    private String parentAccount;
    private String parentList;
    private double rechargeAmount;
    private double teamAmount;
    private int userType;
    private double win;
    private int teamCount;

    public int getTeamCount() {
        return teamCount;
    }

    public void setTeamCount(int teamCount) {
        this.teamCount = teamCount;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public double getDrawingAmount() {
        return drawingAmount;
    }

    public void setDrawingAmount(double drawingAmount) {
        this.drawingAmount = drawingAmount;
    }

    public String getParentAccount() {
        return parentAccount;
    }

    public void setParentAccount(String parentAccount) {
        this.parentAccount = parentAccount;
    }

    public String getParentList() {
        return parentList;
    }

    public void setParentList(String parentList) {
        this.parentList = parentList;
    }

    public double getRechargeAmount() {
        return rechargeAmount;
    }

    public void setRechargeAmount(double rechargeAmount) {
        this.rechargeAmount = rechargeAmount;
    }

    public double getTeamAmount() {
        return teamAmount;
    }

    public void setTeamAmount(double teamAmount) {
        this.teamAmount = teamAmount;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

    public double getWin() {
        return win;
    }

    public void setWin(double win) {
        this.win = win;
    }
}
