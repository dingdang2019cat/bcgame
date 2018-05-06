package com.hehaoyisheng.bcgame.controller;

import com.alibaba.fastjson.JSONObject;
import com.hehaoyisheng.bcgame.common.BaseData;
import com.hehaoyisheng.bcgame.entity.MoneyHistory;
import com.hehaoyisheng.bcgame.entity.Recharge;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.vo.Bank;
import com.hehaoyisheng.bcgame.enums.BankCodeEnum;
import com.hehaoyisheng.bcgame.manager.RechargeManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import com.hehaoyisheng.bcgame.pay.Pay;
import com.hehaoyisheng.bcgame.pay.PayOrderList;
import com.hehaoyisheng.bcgame.pay.PayUtil;
import com.hehaoyisheng.bcgame.utils.MD5Util;
import com.hehaoyisheng.bcgame.utils.PayUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@SessionAttributes("user")
public class PayController {
    @Resource
    private UserManager userManager;

    @Resource
    private RechargeManager rechargeManager;

    @RequestMapping(value = "/recharge/rechargeMoney1")
    public String rechargeMoney(@ModelAttribute("user") User user, Model model){
        List<User> users = userManager.select(user, null, null, null, null,null,null);
        String sign = MD5Util.encode(System.currentTimeMillis() + user.getUsername());
        model.addAttribute("nickName", users.get(0).getNickName());
        model.addAttribute("amount", users.get(0).getMoney());
        model.addAttribute("account", users.get(0).getUsername());
        model.addAttribute("sign", sign);
        PayOrderList.orderList.put(sign, System.currentTimeMillis());
        return "chongzhi";
    }

    @RequestMapping(value = "/recharge/rechargeMoney")
    public String rechargeMoney(HttpServletRequest request, @ModelAttribute("user") User user, Integer rechargeType, Integer bankNameId, String account, String sign, Integer chargeamount, Model model){
        //判断sign的合法性
        Long time = PayOrderList.orderList.get(sign);
        if(time == null){
            return "chongzhi";
        }
        String bankName = "";
        String bankCode = "";
        /*
        //1为银行卡支付（网关支付，B2C支付）
        if(rechargeType == 1){
            for(Bank bank : BaseData.bankName){
                if(bank.getId() == bankNameId){
                    bankName = bank.getTitle();
                }
            }
            bankCode = BankCodeEnum.getEnum(bankName).getDesc();
            //Pay.b2cPay(chargeamount, );
        }*/

        String payWay = "UNIONPAY";
        String payType = "GATEWAY_UNIONPAY_ONE";
        if(bankNameId == 33){
            payWay = "WEIXIN";
            payType = "SCANPAY_WEIXIN";
            bankName = "微信";
        }
        if(bankNameId == 38){
            payWay = "QQPAY";
            payType = "SCANPAY_QQ";
            bankName = "QQ钱包";
        }

        PayOrderList.orderList.remove(sign);
        Recharge recharge = new Recharge();
        recharge.setAccount(account);
        recharge.setAmount(chargeamount);
        recharge.setId(sign);
        recharge.setBankName(bankName);
        recharge.setBankNameCode(bankCode);
        recharge.setStatus(0);
        recharge.setRealAmount(0D);
        recharge.setRechargeType(rechargeType);
        recharge.setParentList(user.getParentList());
        PayOrderList.payList.put(sign, System.currentTimeMillis());
        JSONObject result = PayUtil.payOrder(sign, UserController.getIpAddr(request), "01", "充值", "web", chargeamount, payWay, payType);
        rechargeManager.insert(recharge);
        String qrCode = "";
        String payUrl = "";
        //进行业务处理
        if("000000".equals(result.getString("code"))){
            //request.setAttribute("responseDataMap", result.get("data"));
            qrCode = result.getJSONObject("data").getString("qrCode");
            payUrl = result.getJSONObject("data").getString("payUrl");
        }
        if(StringUtils.isEmpty(qrCode)){
            return "redirect:" + payUrl;
        }else{
            model.addAttribute("qrCode", qrCode);
            return "erweima";
        }
        //return "redirect:/index";
    }

    @RequestMapping("/payNotify")
    @ResponseBody
    public String payNotify(String merAccount, String data){
        String merKey = "ad305d0ded184b238587efa1daf9f93c";
        JSONObject json = PayUtils.decrypt(data, merKey);
        String status = json.getString("orderStatus");
        String amount = json.getString("amount");
        String orderId = json.getString("orderId");
        if(PayOrderList.payList.get(orderId) == null){
            return "SUCCESS";
        }
        PayOrderList.payList.remove(orderId);
        Recharge recharge = new Recharge();
        recharge.setId(orderId);
        List<Recharge> recharges = rechargeManager.select(recharge, null, null, null, null);
        if(CollectionUtils.isEmpty(recharges)){
            return "SUCCESS";
        }
        if(status.equals("SUCCESS")){
            recharge.setStatus(2);
            recharge.setRealAmount(Double.valueOf(amount));
            //MoneyHistory moneyHistory = new MoneyHistory();
            User user = new User();
            user.setUsername(recharges.get(0).getAccount());
            userManager.update(user, Double.valueOf(amount));
        }else {
            recharge.setStatus(1);
        }
        rechargeManager.update(recharge);
        return "SUCCESS";
    }
}
