package com.hehaoyisheng.bcgame.entity;

import java.util.Date;

//TODO 上线前调整表的默认值
public class BcLotteryOrder {
    private Integer id;
    private String account;
    private Integer accountId;
    private double buyMoney;
    private Integer buyZhuShu;
    private Date createTime;
    private String haoMa;
    private String lotCode;
    private String lotName;
    private String lotType;
    private String lotteryHaoMa;
    private Integer multiple;
    private String playCode;
    private String playName;
    private String qiHao;
    private Integer rollBackStatus;
    private Integer status;
    private double winMoney;
    private Integer winZhuShu;
    private String zhuiHao;
    private double minBonusOdds;
    private double rollBackMoney;
    private String parentList;
    private String shangji;
    private String orderId;

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

    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accoutId) {
        this.accountId = accoutId;
    }

    public double getBuyMoney() {
        return buyMoney;
    }

    public void setBuyMoney(double buyMoney) {
        this.buyMoney = buyMoney;
    }

    public Integer getBuyZhuShu() {
        return buyZhuShu;
    }

    public void setBuyZhuShu(Integer buyZhuShu) {
        this.buyZhuShu = buyZhuShu;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getHaoMa() {
        return haoMa;
    }

    public void setHaoMa(String haoMa) {
        this.haoMa = haoMa;
    }

    public String getLotCode() {
        return lotCode;
    }

    public void setLotCode(String lotCode) {
        this.lotCode = lotCode;
    }

    public String getLotName() {
        return lotName;
    }

    public void setLotName(String lotName) {
        this.lotName = lotName;
    }

    public String getLotType() {
        return lotType;
    }

    public void setLotType(String lotType) {
        this.lotType = lotType;
    }

    public String getLotteryHaoMa() {
        return lotteryHaoMa;
    }

    public void setLotteryHaoMa(String lotteryHaoMa) {
        this.lotteryHaoMa = lotteryHaoMa;
    }

    public Integer getMultiple() {
        return multiple;
    }

    public void setMultiple(Integer multiple) {
        this.multiple = multiple;
    }

    public String getPlayCode() {
        return playCode;
    }

    public void setPlayCode(String playCode) {
        this.playCode = playCode;
    }

    public String getPlayName() {
        return playName;
    }

    public void setPlayName(String playName) {
        this.playName = playName;
    }

    public String getQiHao() {
        return qiHao;
    }

    public void setQiHao(String qiHao) {
        this.qiHao = qiHao;
    }

    public Integer getRollBackStatus() {
        return rollBackStatus;
    }

    public void setRollBackStatus(Integer rollBackStatus) {
        this.rollBackStatus = rollBackStatus;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public double getWinMoney() {
        return winMoney;
    }

    public void setWinMoney(double winMoney) {
        this.winMoney = winMoney;
    }

    public Integer getWinZhuShu() {
        return winZhuShu;
    }

    public void setWinZhuShu(Integer winZhuShu) {
        this.winZhuShu = winZhuShu;
    }

    public String getZhuiHao() {
        return zhuiHao;
    }

    public void setZhuiHao(String zhuiHao) {
        this.zhuiHao = zhuiHao;
    }

    public double getMinBonusOdds() {
        return minBonusOdds;
    }

    public void setMinBonusOdds(double minBonusOdds) {
        this.minBonusOdds = minBonusOdds;
    }

    public double getRollBackMoney() {
        return rollBackMoney;
    }

    public void setRollBackMoney(double rollBackMoney) {
        this.rollBackMoney = rollBackMoney;
    }

    public String getShangji() {
        return shangji;
    }

    public void setShangji(String shangji) {
        this.shangji = shangji;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getParentList() {
        return parentList;
    }

    public void setParentList(String parentList) {
        this.parentList = parentList;
    }
}