package com.hehaoyisheng.bcgame.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Recharge {
    private String account;
    private double amount;
    private String bankName;
    private String bankNameCode;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;
    private String id;
    private Double realAmount;
    private Integer rechargeType;
    /*
    var statusName ='';
                    if(rows[i].status==0){
                        statusName ="未处理";
                    }else if(rows[i].status==1){
                        statusName ="失败";
                    }else if(rows[i].status==2){
                        statusName ="成功";
                    }else if(rows[i].status==3){
                        statusName ="已过期";
                    }else if(rows[i].status==4){
                        statusName ="已撤销";
                    }else if(rows[i].status==5){
                        statusName ="正在处理";
                    }else if(rows[i].status==6){
                        statusName ="审核中";
                    }
     */
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
