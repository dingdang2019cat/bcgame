package com.hehaoyisheng.bcgame.pay;

import com.alibaba.fastjson.JSONObject;
import com.hehaoyisheng.bcgame.utils.PayUtils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class PayUtil {
    private static final String URL = "https://api.fzmanba.com/paygateway/mbpay/order/v1";
    private static final String geteWayURL = "https://api.fzmanba.com/paygateway/mbgateway/gatewayorder/v1";
    private static final String merAccount = "34c448e5117943bebedf0f69c685e2bb";
    private static final String merNo = "10001238";
    private static final String key = "ad305d0ded184b238587efa1daf9f93c";
    private static String returnUrl = "http://jinpai2018.com"; //http://127.0.0.1:8080/mbpay-pay-demo/CallbackApi.do
    private static String notifyUrl = "http://jinpai2018.com/payNotify"; //


    /**
     * 收银台付款
     */
    public static JSONObject payOrder(String orderId, String userIp, String productType, String product, String webTypem, Integer amount, String payWay, String payType){
        JSONObject json = new JSONObject();
        json.put("merAccount", merAccount);
        json.put("merNo", merNo);
        json.put("orderId", orderId);
        json.put("time", System.currentTimeMillis() / 1000);
        json.put("amount", amount * 100);
        json.put("productType", productType);
        json.put("product", product);
        json.put("userIp", userIp);
        json.put("payWay", payWay);
        json.put("payType", payType);
        //json.put("memberId", account);
        //json.put("contractId", contractId);
        json.put("returnUrl", returnUrl);
        json.put("notifyUrl", notifyUrl);
        json.put("webTypem", webTypem);
        json.put("userType", 0);
        System.out.println(json.toString());
        String sign = PayUtils.buildSign(json, key);
        json.put("sign", sign);
        String data = PayUtils.buildData(json, key);
        //JSONObject result = PayUtil.httpGet("https://api.fzmanba.com/paygateway/quickPay/order/v1", merAccount, data);
        String url = payWay.equals("UNIONPAY") ? geteWayURL : URL;
        JSONObject result = PayUtils.httpGet(url, merAccount, data);
        System.out.println(result.toJSONString());
        return result;
    }
}
