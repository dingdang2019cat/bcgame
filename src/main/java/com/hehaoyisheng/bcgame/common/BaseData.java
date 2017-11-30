package com.hehaoyisheng.bcgame.common;

import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.entity.vo.Bank;
import com.hehaoyisheng.bcgame.entity.vo.Province;

import java.util.List;

public class BaseData {
    public final static List<Bank> bankName = Lists.newArrayList();
    public final static List<Province> province = Lists.newArrayList();

    static {
        bankName.add(new Bank(1, "中国工商银行"));
        bankName.add(new Bank(2, "中国银行"));
        bankName.add(new Bank(3, "中国农业银行"));
        bankName.add(new Bank(4, "中国建设银行"));
        bankName.add(new Bank(11, "中国光大银行"));
        bankName.add(new Bank(12, "兴业银行"));
        bankName.add(new Bank(14, "招商银行"));
        bankName.add(new Bank(15, "中国民生银行"));
        bankName.add(new Bank(16, "交通银行"));
        bankName.add(new Bank(25, "中国邮政储蓄银行"));
        bankName.add(new Bank(28, "平安银行"));

        province.add(new Province(10, "北京"));
        province.add(new Province(11, "上海"));
        province.add(new Province(12, "天津"));
        province.add(new Province(13, "重庆"));
        province.add(new Province(14, "河北"));
        province.add(new Province(15, "山西"));
        province.add(new Province(16, "内蒙古"));
        province.add(new Province(17, "辽宁"));
        province.add(new Province(18, "吉林"));
        province.add(new Province(19, "黑龙江"));
        province.add(new Province(20, "江苏"));
        province.add(new Province(21, "浙江"));
        province.add(new Province(22, "安徽"));
        province.add(new Province(23, "福建"));
        province.add(new Province(24, "江西"));
        province.add(new Province(25, "山东"));
        province.add(new Province(26, "河南"));
        province.add(new Province(27, "湖北"));
        province.add(new Province(28, "湖南"));
        province.add(new Province(29, "广东"));
        province.add(new Province(30, "广西"));
        province.add(new Province(31, "海南"));
        province.add(new Province(32, "四川"));
        province.add(new Province(33, "贵州"));
        province.add(new Province(34, "云南"));
        province.add(new Province(35, "西藏"));
        province.add(new Province(36, "陕西"));
        province.add(new Province(37, "甘肃"));
        province.add(new Province(38, "青海"));
        province.add(new Province(39, "宁夏"));
        province.add(new Province(40, "新疆"));
        province.add(new Province(41, "香港"));
        province.add(new Province(42, "澳门"));
        province.add(new Province(43, "台湾"));
    }
}
