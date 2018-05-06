package com.hehaoyisheng.bcgame.entity;

import java.util.Date;

public class User {
    private Integer id;
    private String username;
    private String password;
    private Double money;
    private Integer drawFlag;
    private Date createtime;
    private Integer touzhuFlag;
    private String ip;
    private Date time;
    //1-离线 2-在线
    private Integer online;
    private Integer type;
    private String drawPwd;
    private String name;
    //TODO new insert
    private String nickName;
    //预留信息
    private String message;
    private double minBonusOdds;
    private Integer qsType1;
    private Integer qsType2;
    private String answer1;
    private String answer2;
    private double fandian;
    private Integer fenhong;
    private String shangji;
    private String parentList;
    private Integer status;
    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Integer getDrawFlag() {
        return drawFlag;
    }

    public void setDrawFlag(Integer drawFlag) {
        this.drawFlag = drawFlag;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getTouzhuFlag() {
        return touzhuFlag;
    }

    public void setTouzhuFlag(Integer touzhuFlag) {
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

    public Integer getOnline() {
        return online;
    }

    public void setOnline(Integer online) {
        this.online = online;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
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

    public String getParentList() {
        return parentList;
    }

    public void setParentList(String parentList) {
        this.parentList = parentList;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getQsType1() {
        return qsType1;
    }

    public void setQsType1(Integer qsType1) {
        this.qsType1 = qsType1;
    }

    public Integer getQsType2() {
        return qsType2;
    }

    public void setQsType2(Integer qsType2) {
        this.qsType2 = qsType2;
    }

    public String getAnswer1() {
        return answer1;
    }

    public void setAnswer1(String answer1) {
        this.answer1 = answer1;
    }

    public String getAnswer2() {
        return answer2;
    }

    public void setAnswer2(String answer2) {
        this.answer2 = answer2;
    }

    public Integer getFenhong() {
        return fenhong;
    }

    public void setFenhong(Integer fenhong) {
        this.fenhong = fenhong;
    }
}
