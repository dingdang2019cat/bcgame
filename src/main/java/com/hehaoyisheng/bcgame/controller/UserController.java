package com.hehaoyisheng.bcgame.controller;

import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.entity.Message;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.vo.Result;
import com.hehaoyisheng.bcgame.manager.MessageManager;
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
    private MessageManager messageManager;

    @RequestMapping("/index")
    public String index(@ModelAttribute("user") User user, Model model){
        List<User> list = userManager.select(user);
        System.out.println(list.get(0).getPassword());
        if(CollectionUtils.isEmpty(list)){
            return "login";
        }
        User selectUser = list.get(0);
        model.addAttribute("amount", selectUser.getMoney());
        return "index";
    }

    @RequestMapping(value = "/login", method = {RequestMethod.POST})
    public String login(String account, String password, Model model){
        User user = new User();
        user.setUsername(account);
        List<User> list = userManager.select(user);
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
        List<User> list = userManager.select(user);
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
}
