package com.hehaoyisheng.bcgame.controller;

import com.hehaoyisheng.bcgame.common.BaseData;
import com.hehaoyisheng.bcgame.entity.Recharge;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.vo.Bank;
import com.hehaoyisheng.bcgame.enums.BankCodeEnum;
import com.hehaoyisheng.bcgame.manager.RechargeManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import com.hehaoyisheng.bcgame.pay.Pay;
import com.hehaoyisheng.bcgame.pay.PayOrderList;
import com.hehaoyisheng.bcgame.utils.MD5Util;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import java.util.List;

@Controller
@SessionAttributes("user")
public class PayController {
    @Resource
    private UserManager userManager;

    @Resource
    private RechargeManager rechargeManager;

    @RequestMapping(value = "/recharge/rechargeMoney", method = {RequestMethod.GET})
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

    @RequestMapping(value = "/recharge/rechargeMoney", method = {RequestMethod.POST})
    public String rechargeMoney(@ModelAttribute("user") User user, Integer rechargeType, Integer bankNameId, String account, String sign, Double chargeamount){
        //判断sign的合法性
        Long time = PayOrderList.orderList.get(sign);
        if(time == null){
            return "chongzhi";
        }
        String bankName = "";
        String bankCode = "";
        //1为银行卡支付（网关支付，B2C支付）
        if(rechargeType == 1){
            for(Bank bank : BaseData.bankName){
                if(bank.getId() == bankNameId){
                    bankName = bank.getTitle();
                }
            }
            bankCode = BankCodeEnum.getEnum(bankName).getDesc();
            //Pay.b2cPay(chargeamount, );
        }
        PayOrderList.orderList.remove(sign);
        Recharge recharge = new Recharge();
        recharge.setAccount(account);
        recharge.setAmount(chargeamount);
        recharge.setId(sign);
        recharge.setBankName(bankName);
        recharge.setBankNameCode(bankCode);
        recharge.setStatus(0);
        recharge.setRechargeType(rechargeType);
        recharge.setParentList(user.getParentList());
        return "redirect:/index";
    }
}
