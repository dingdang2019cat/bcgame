package com.hehaoyisheng.bcgame.controller;

import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.common.BaseData;
import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.entity.*;
import com.hehaoyisheng.bcgame.entity.vo.Result;
import com.hehaoyisheng.bcgame.manager.*;
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

    @Resource
    private RegistURLManager registURLManager;

    @Resource
    private BookCardManager bookCardManager;

    @RequestMapping("/index")
    public String index(@ModelAttribute("user") User user, Model model){
        List<User> list = userManager.select(user, null, null, null, null, null, null);
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
        List<User> list = userManager.select(user, null, null, null, null, null, null);
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
        List<User> list = userManager.select(user, null, null, null, null, null, null);
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
    public String userIndex(@ModelAttribute("user") User user){
        //当前用户
        //最大可调返点
        //会员最大返点
        //用户类型
        //是否有资金密码hasSafeWord
        return "userIndex";
    }

    /**
     * 设置资金密码
     * @return
     */
    @RequestMapping("/safe/setSafeInformation")
    @ResponseBody
    public Result setSafeInformation(@ModelAttribute("user") User user, String password, String safePassWord, Integer qsType1, Integer qsType2, String answer1, String answer2, String cardName){
        List<User> users = userManager.select(user, null, null, null, null, null, null);
        if(CollectionUtils.isEmpty(users)){
            return null;
        }
        if(StringUtils.equals(users.get(0).getPassword(), password)){
            user.setDrawPwd(safePassWord);
            user.setQsType1(qsType1);
            user.setQsType2(qsType2);
            user.setAnswer1(answer1);
            user.setAnswer2(answer2);
            user.setName(cardName);
            userManager.update(user);
            return Result.success("操作成功!");
        }
        return Result.faild("登陆密码不正确", 501);
    }

    /***
     * 会员中心
     * @return
     */
    @RequestMapping("/down/list")
    @ResponseBody
    //TODO 没做完呢
    public Result downList(@ModelAttribute("user") User user, int rows, int page, String nextAccount, String account, Double beginAmount, Double endAmount, int userType, int isOnLine){
        int from = rows*(page - 1);
        Map<String, Object> resultMap = Maps.newHashMap();
        //返点等信息的查询
        List<User> users = userManager.select(user, null, null, null, null, null, null);
        User selectUser = new User();
        //不是根据用户名查询则直接查下级
        if(StringUtils.isEmpty(account)){
            user.setShangji(user.getUsername());
        }else{
            selectUser.setUsername(account);
        }
        //当为0时查询全部
        if(userType != 0){
            selectUser.setType(userType);
        }
        if(isOnLine != 0){
            selectUser.setOnline(isOnLine);
        }
        List<User> childUsers = userManager.select(selectUser, from, rows, null, null, beginAmount, endAmount);
        for(User u : childUsers){
            double teamMoney = userManager.sum(u.getUsername());

        }
        return null;
    }

    /**
     * 修改昵称和预留信息
     * @return
     */
    @RequestMapping("/info/setInformation")
    @ResponseBody
    public Result setInformation(@ModelAttribute("user") User user, String niceName, String message){
        if(!StringUtils.isEmpty(niceName)){
            user.setNickName(niceName);
        }
        if(!StringUtils.isEmpty(message)){
            user.setMessage(message);
        }
        userManager.update(user);
        return Result.success("操作成功");
    }

    /**
     * 我也不知道为什么要加这个
     * @return
     */
    @RequestMapping("/check/newPass")
    @ResponseBody
    public Result newPass(String password){
        if(StringUtils.isEmpty(password)){
            return Result.faild("操作失败", 501);
        }
        return Result.success("操作成功");
    }

    /**
     * 这个我也不知道是干嘛的
     * @return
     */
    @RequestMapping("/user/getQuota")
    @ResponseBody
    public Result getQuota(){
        return Result.success(null);
    }

    /**
     * 更新密码
     * @return
     */
    @RequestMapping("/safe/changePassWord")
    @ResponseBody
    public Result updatePass(@ModelAttribute("user") User user, String oldpass, String newpass){
        List<User> users = userManager.select(user, null, null, null, null, null, null);
        if(CollectionUtils.isEmpty(users)){
            return null;
        }
        if(StringUtils.equals(users.get(0).getPassword(), oldpass)){
            user.setPassword(newpass);
            userManager.update(user);
            return Result.success("修改成功！");
        }
        return Result.faild("旧密码错误", 603);
    }

    /**
     * 更新资金密码
     * @return
     */
    @RequestMapping("/safe/changeSafeWord")
    @ResponseBody
    public Result updateSafePass(@ModelAttribute("user") User user, String oldpass, String newpass){
        List<User> users = userManager.select(user, null, null, null, null, null, null);
        if(CollectionUtils.isEmpty(users)){
           return null;
        }
        if(StringUtils.equals(users.get(0).getDrawPwd(), oldpass)){
            user.setDrawPwd(newpass);
            userManager.update(user);
            return Result.success("修改成功！");
        }
        return Result.faild("旧资金密码错误", 605);
    }

    /**
     * 银行列表
     * @return
     */
    @RequestMapping("/info/getBankAll")
    @ResponseBody
    public Result getBankAll(){
        return Result.success(BaseData.bankName);
    }

    /**
     * 省份列表
     * @return
     */
    @RequestMapping("/info/getBankAl")
    @ResponseBody
    public Result getProvinceAll(){
        return Result.success(BaseData.province);
    }

    /**
     * 绑定银行卡前确定资金密码
     */
    @RequestMapping("/user/verifySafePassword")
    @ResponseBody
    public Result verifySafePassword(@ModelAttribute("user") User user, String safePassword){
        List<User> users = userManager.select(user, null, null, null, null,null,null);
        if(CollectionUtils.isEmpty(users)){
            return null;
        }
        if(StringUtils.equals(user.getDrawPwd(), safePassword)){
            return Result.success(null);
        }
        return Result.faild("您输入的资金密码错误", 501);
    }

    /**
     * 银行卡重复校验
     * @return
     */
    //TODO
    @RequestMapping("/check/card")
    @ResponseBody
    public Result checkCard(String card){
        if(!StringUtils.isEmpty(card)){
            BookCard bookCard = new BookCard();
            bookCard.setCard(card);
            List<BookCard> list = bookCardManager.select(bookCard);
            if(CollectionUtils.isEmpty(list)){
                return Result.success("");
            }
        }
        return Result.faild("此银行卡已被使用！", 501);
    }

    /**
     * 银行卡列表
     * @return
     */
    @RequestMapping("/user/showCard")
    @ResponseBody
    public Result listCard(@ModelAttribute("user") User user){
        BookCard bookCard = new BookCard();
        bookCard.setAccount(user.getUsername());
        List<BookCard> list = bookCardManager.select(bookCard);
        if(CollectionUtils.isEmpty(list)){
            return Result.success(list);
        }
        return null;
    }

    /**
     * 添加银行卡
     * @return
     */
    @RequestMapping("/user/bindCard")
    @ResponseBody
    public Result insertCard(@ModelAttribute("user") User user, Integer bankNameId, String address, String niceName, String card, String safeWord){
        BookCard bookCard = new BookCard();
        bookCard.setAccount(user.getUsername());
        bookCard.setBankNameId(bankNameId);
        bookCard.setAddress(address);
        bookCard.setCard(card);
        bookCard.setNiceName(niceName);
        bookCardManager.insert(bookCard);
        return Result.success("添加成功！");
    }

    /**
     * 锁定银行卡
     */
    @RequestMapping("/user/stopCard")
    @ResponseBody
    //TODO
    public Result stopCard(@ModelAttribute("user") User user){
        return null;
    }

    /**
     * 列出注册链接
     * @return
     */
    @RequestMapping("/user/listUserExtCode")
    @ResponseBody
    public Result listUserExtCode(@ModelAttribute("user") User user){
        RegistURL registURL = new RegistURL();
        registURL.setAccount(user.getUsername());
        List<RegistURL> list = registURLManager.seletc(registURL);
        return Result.success(list);
    }
}
