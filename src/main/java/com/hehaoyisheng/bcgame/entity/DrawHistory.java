package com.hehaoyisheng.bcgame.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class DrawHistory {
    private String id;
    private String account;
    private String name;
    private String card;
    private double amount;
    private double realAmount;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createTime;
    private String bankCode;
    private String bankName;
    private String lastOperator;
    /**
     * if(rows[i].status==0){
     statusName ="未处理";
     }else if(rows[i].status==1){
     statusName ="失败";
     }else if(rows[i].status==2){
     statusName ="完成";
     }else if(rows[i].status==3){
     statusName ="已过期";
     }else if(rows[i].status==4){
     statusName ="已撤销";
     }else if(rows[i].status==5){
     statusName ="正在处理";
     }else if(rows[i].status==6){
     statusName ="审核中";
     }else if(rows[i].status==7){
     statusName ="审核通过";
     }else if(rows[i].status==8){
     statusName ="审核失败";
     }
     else if(rows[i].status==99){
     statusName ="提款挂起";
     }
     */
    private Integer status;
    private Date lastTime;
    private String remark;
    private String parentList;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getRealAmount() {
        return realAmount;
    }

    public void setRealAmount(double realAmount) {
        this.realAmount = realAmount;
    }

    public String getParentList() {
        return parentList;
    }

    public void setParentList(String parentList) {
        this.parentList = parentList;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getBankCode() {
        return bankCode;
    }

    public void setBankCode(String bankCode) {
        this.bankCode = bankCode;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getLastOperator() {
        return lastOperator;
    }

    public void setLastOperator(String lastOperator) {
        this.lastOperator = lastOperator;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getLastTime() {
        return lastTime;
    }

    public void setLastTime(Date lastTime) {
        this.lastTime = lastTime;
    }
}
