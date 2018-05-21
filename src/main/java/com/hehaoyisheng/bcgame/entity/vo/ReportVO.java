package com.hehaoyisheng.bcgame.entity.vo;

import java.util.Date;

public class ReportVO {
    private String account;
    private double activityAndSend;
    private double actualSaleAmount;
    private double rebateAmount;
    private double winAmount;
    //日工资
    private double wages;
    //盈亏
    private double count;
    private double rechargeAmount;
    private double drawingAmount;
    private Date createDate;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public double getActivityAndSend() {
        return activityAndSend;
    }

    public void setActivityAndSend(double activityAndSend) {
        this.activityAndSend = activityAndSend;
    }

    public double getActualSaleAmount() {
        return actualSaleAmount;
    }

    public void setActualSaleAmount(double actualSaleAmount) {
        this.actualSaleAmount = actualSaleAmount;
    }

    public double getRebateAmount() {
        return rebateAmount;
    }

    public void setRebateAmount(double rebateAmount) {
        this.rebateAmount = rebateAmount;
    }

    public double getWinAmount() {
        return winAmount;
    }

    public void setWinAmount(double winAmount) {
        this.winAmount = winAmount;
    }

    public double getWages() {
        return wages;
    }

    public void setWages(double wages) {
        this.wages = wages;
    }

    public double getCount() {
        return count;
    }

    public void setCount(double count) {
        this.count = count;
    }

    public double getRechargeAmount() {
        return rechargeAmount;
    }

    public void setRechargeAmount(double rechargeAmount) {
        this.rechargeAmount = rechargeAmount;
    }

    public double getDrawingAmount() {
        return drawingAmount;
    }

    public void setDrawingAmount(double drawingAmount) {
        this.drawingAmount = drawingAmount;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}
