package com.hehaoyisheng.bcgame.controller;

import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.entity.User;
import com.hehaoyisheng.bcgame.entity.vo.LotteryTime;
import com.hehaoyisheng.bcgame.entity.vo.Result;
import com.hehaoyisheng.bcgame.manager.UserManager;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
@SessionAttributes("user")
public class IndexController {

    @RequestMapping(value = "/login", method = {RequestMethod.GET})
    public String login(){
        return "login";
    }

    /**
     * 首页几个彩票的倒计时
     * @return
     */
    @RequestMapping("info")
    public Result info(){
        List<LotteryTime> list = Lists.newArrayList();
        list.add(new LotteryTime("cqssc", GameData.gameTime.get("cqssc")));
        list.add(new LotteryTime("gd11x5", GameData.gameTime.get("gd11x5")));
        list.add(new LotteryTime("pk10", GameData.gameTime.get("pk10")));
        list.add(new LotteryTime("3d", GameData.gameTime.get("3d")));
        return Result.success(list);
    }

    @RequestMapping("/lotts/{gameType}/index")
    //TODO
    public String gamePage(@ModelAttribute("user") User user, @PathVariable String gameType){
        //开奖图片
        //最近中奖
        //最近投注
        //
        return null;
    }

    @RequestMapping("/lotts/{gameType}/info")
    @ResponseBody
    public Result info(@ModelAttribute("user") User user, @PathVariable String gameType){
        return Result.success(null);
    }
}
