package com.hehaoyisheng.bcgame.pay;

import com.hehaoyisheng.bcgame.utils.MerchantApiUtil;
import com.hehaoyisheng.bcgame.utils.PayConfigUtil;
import com.hehaoyisheng.bcgame.utils.SimpleHttpUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Pay {

    public static void b2cPay(Double orderPrice, String bankCode, String orderIp, String orderNo){
        Map<String, Object> paramMap = new HashMap<String, Object>();
        paramMap.put("payKey", PayConfigUtil.readConfig("payKey"));// 商户支付Key
        paramMap.put("orderPrice", orderPrice.toString()); //支付金额
        paramMap.put("outTradeNo", orderNo);
        paramMap.put("productType","50000103");//B2C T0支付
        Date orderTime = new Date();// 订单时间
        String orderTimeStr = new SimpleDateFormat("yyyyMMddHHmmss").format(orderTime);// 订单时间
        paramMap.put("orderTime", orderTimeStr);
        paramMap.put("productName", "测试");// 商品名称
        paramMap.put("orderIp", orderIp);
        paramMap.put("bankCode", bankCode);//银行编码
        paramMap.put("bankAccountType", "PRIVATE_DEBIT_ACCOUNT");//银行编码
        String returnUrl = PayConfigUtil.readConfig("returnUrl"); // 页面通知返回url
        paramMap.put("returnUrl", returnUrl);
        String notifyUrl = PayConfigUtil.readConfig("notifyUrl"); // 后台消息通知Url
        paramMap.put("notifyUrl", notifyUrl);
        paramMap.put("remark", "支付备注");
        ///// 签名及生成请求API的方法///
        String sign = MerchantApiUtil.getSign(paramMap, PayConfigUtil.readConfig("paySecret"));
        paramMap.put("sign", sign);
        System.out.println(PayConfigUtil.readConfig("b2cPayUrl"));
        System.out.println(paramMap);
        String payResult = SimpleHttpUtils.httpPost(PayConfigUtil.readConfig("b2cPayUrl"), paramMap);
        System.out.println("------------");
        System.out.println(payResult);
        System.out.println("------------");
    }

}
