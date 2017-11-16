package com.hehaoyisheng.bcgame.controller;

import com.google.common.collect.Lists;
import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.entity.vo.LotteryTime;
import com.hehaoyisheng.bcgame.entity.vo.Result;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping
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
}
