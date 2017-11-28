package com.hehaoyisheng.bcgame.controller;

import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.entity.BcLotteryOrder;
import com.hehaoyisheng.bcgame.entity.Message;
import com.hehaoyisheng.bcgame.entity.Sign;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.vo.Result;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import com.hehaoyisheng.bcgame.manager.MessageManager;
import com.hehaoyisheng.bcgame.manager.SignManager;
import com.hehaoyisheng.bcgame.manager.UserManager;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@SessionAttributes("user")
public class UserController {

    @Resource
    private UserManager userManager;

    @Resource
    private BcLotteryOrderManager bcLotteryOrderManager;

    @Resource
    private MessageManager messageManager;

    @Resource
    private SignManager signManager;

    @RequestMapping("/index")
    public String index(@ModelAttribute("user") User user, Model model){
        List<User> list = userManager.select(user, null, null, null, null);
        System.out.println(list.get(0).getPassword());
        if(CollectionUtils.isEmpty(list)){
            return "login";
        }
        //用户信息
        User selectUser = list.get(0);
        model.addAttribute("amount", selectUser.getMoney());
        //公告播报查询
        List<Sign> signs = signManager.select(new Sign());
        model.addAttribute("signs", signs);
        //中奖播报查询
        BcLotteryOrder bcLotteryOrder = new BcLotteryOrder();
        bcLotteryOrder.setStatus(2);
        List<BcLotteryOrder> bcLotteryOrders = bcLotteryOrderManager.select(bcLotteryOrder, 0, 10, null, null);
        System.out.println(bcLotteryOrders.size());
        if(!CollectionUtils.isEmpty(bcLotteryOrders)){
            for(BcLotteryOrder b : bcLotteryOrders){
                b.setAccount(b.getAccount().substring(0, 2) + "***" + b.getAccount().substring(b.getAccount().length() - 2, b.getAccount().length() -1));
            }
        }
        model.addAttribute("lotterys", bcLotteryOrders);
        //首页彩种剩余时间
        model.addAttribute("cqssc", GameData.gameTime.get("cqssc"));
        model.addAttribute("gd11x5", GameData.gameTime.get("gd11x5"));
        model.addAttribute("pk10", GameData.gameTime.get("pk10"));
        model.addAttribute("fc3d", GameData.gameTime.get("fc3d"));
        return "index";
    }

    @RequestMapping(value = "/login", method = {RequestMethod.POST})
    public String login(String account, String password, Model model){
        User user = new User();
        user.setUsername(account);
        List<User> list = userManager.select(user, null, null, null, null);
        System.out.println(account + "   " + password);
        System.out.println(list.get(0).getPassword());
        if(CollectionUtils.isEmpty(list) || !StringUtils.equals(list.get(0).getPassword(), password)){
            model.addAttribute("errorTips", "用户名或密码错误！");
            return "login";
        }
        user.setId(list.get(0).getId());
        model.addAttribute("user", user);
        return "redirect:/index";
    }

    /**
     * 轮询余额
     * @return
     */
    @RequestMapping("/user/amount")
    @ResponseBody
    public Result amount(@ModelAttribute("user") User user){
        List<User> list = userManager.select(user, null, null, null, null);
        Map<String, Double> amount = Maps.newHashMap();
        if(!CollectionUtils.isEmpty(list)){
            amount.put("amount", list.get(0).getMoney());
        }
        return Result.success(amount);
    }

    /**
     * 未读消息数量
     * @return
     */
    @RequestMapping("message/messageCountUnRead")
    @ResponseBody
    public Result messageCountUnRead(@ModelAttribute("user") User user){
        Message message = new Message();
        message.setAccount(user.getUsername());
        message.setStatus(1);
        List<Message> list = messageManager.select(message);
        return Result.success(list == null ? 0 : list.size());
    }

    /**
     * 管理中心跳转
     * @return
     */
    @RequestMapping("/user/index")
    public String userIndex(){
        //当前用户
        //最大可调返点
        //会员最大返点
        //用户类型
        return "userIndex";
    }

    /***
     * 会员中心
     * @return
     */
    @RequestMapping("/down/list")
    @ResponseBody
    public Result downList(){

        return null;
    }
}
