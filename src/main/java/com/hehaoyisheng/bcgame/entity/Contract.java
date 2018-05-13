package com.hehaoyisheng.bcgame.entity;

import java.util.Date;

public class Contract {
    private Integer id;
    private String account;
    private Date startDate;
    private Date endDate;
    //销售量
    private Double cumulativeSales;

    private Double winMoney;
    private Double gongzi;
    //分红比
    private Integer dividend;
    private Double cumulativeProfit;
    private Double dividendAmount;

    private Date time;
    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Double getCumulativeSales() {
        return cumulativeSales;
    }

    public void setCumulativeSales(Double cumulativeSales) {
        this.cumulativeSales = cumulativeSales;
    }

    public Integer getDividend() {
        return dividend;
    }

    public void setDividend(Integer dividend) {
        this.dividend = dividend;
    }

    public Double getCumulativeProfit() {
        return cumulativeProfit;
    }

    public void setCumulativeProfit(Double cumulativeProfit) {
        this.cumulativeProfit = cumulativeProfit;
    }

    public Double getDividendAmount() {
        return dividendAmount;
    }

    public void setDividendAmount(Double dividendAmount) {
        this.dividendAmount = dividendAmount;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Double getWinMoney() {
        return winMoney;
    }

    public void setWinMoney(Double winMoney) {
        this.winMoney = winMoney;
    }

    public Double getGongzi() {
        return gongzi;
    }

    public void setGongzi(Double gongzi) {
        this.gongzi = gongzi;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
