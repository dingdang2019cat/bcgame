package com.hehaoyisheng.bcgame.controller;

import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.vo.Result;
import com.hehaoyisheng.bcgame.manager.BcLotteryOrderManager;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import java.util.Date;

@Controller
@SessionAttributes("user")
public class GameController {

    @Resource
    private BcLotteryOrderManager bcLotteryOrderManager;

    /**
     * 投注和追号的记录
     */
    @RequestMapping("/game/index")
    public String game(String tabId, @ModelAttribute("user") User user, Model model){
        if(!StringUtils.isEmpty(tabId)){
            if(tabId.equals("trace") || tabId.equals("gameBetList")){
                model.addAttribute("account", user.getUsername());
                return "gameBetList";
            }
        }
        return null;
    }

    /**
     * 投注记录查询
     * @return
     */
    public Result gameList(int rows, int page, String lotteryId, int status, Date startTime, Date endTime){

        return Result.success(null);
    }
}
