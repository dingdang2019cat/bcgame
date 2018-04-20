package com.hehaoyisheng.bcgame.controller;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.hehaoyisheng.bcgame.common.BaseData;
import com.hehaoyisheng.bcgame.common.GameData;
import com.hehaoyisheng.bcgame.entity.*;
import com.hehaoyisheng.bcgame.entity.transfar.UserTransfar;
import com.hehaoyisheng.bcgame.entity.vo.Bank;
import com.hehaoyisheng.bcgame.entity.vo.Result;
import com.hehaoyisheng.bcgame.entity.vo.UserVO;
import com.hehaoyisheng.bcgame.manager.*;
import com.hehaoyisheng.bcgame.utils.MD5Util;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@SessionAttributes("user")
public class UserController {

    private static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

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

    @Resource
    private NoticeManager noticeManager;

    @Resource
    private RechargeManager rechargeManager;

    @Resource
    private DrawHistoryManager drawHistoryManager;

    @Resource
    private SettingsManager settingsManager;

    @ModelAttribute("user1")
    public User addUser(User user) {
        return new User();
    }

    @RequestMapping("/index")
    public String index(@ModelAttribute("user") User user, Model model){
        List<User> list = userManager.select(user, null, null, null, null, null, null);
        if(CollectionUtils.isEmpty(list)){
            return "login";
        }
        //用户信息
        User selectUser = list.get(0);
        model.addAttribute("amount", selectUser.getMoney());
        model.addAttribute("nickName", selectUser.getNickName());
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
        model.addAttribute("cqssc", (GameData.gameTime.get("cqssc") - System.currentTimeMillis()) / 1000);
        model.addAttribute("gd11x5", (GameData.gameTime.get("gd11x5") - System.currentTimeMillis()) / 1000);
        model.addAttribute("pk10", (GameData.gameTime.get("pk10") - System.currentTimeMillis()) / 1000);
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
        user.setTime(new Date());
        userManager.update(user);
        user.setId(list.get(0).getId());
        user.setParentList(list.get(0).getParentList());
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
    public String userIndex(@ModelAttribute("user") User user, Model model){
        //当前用户
        List<User> users = userManager.select(user, null, null, null, null, null,null);
        //最大可调返点
        //会员最大返点
        //用户类型
        //是否有资金密码hasSafeWord

        model.addAttribute("nickName", users.get(0).getNickName());
        model.addAttribute("amount", users.get(0).getMoney());
        model.addAttribute("account", user.getUsername());
        model.addAttribute("userType", users.get(0).getType());
        model.addAttribute("playerMaxRatio", users.get(0).getFandian());
        //model.addAttribute("maxRatio", users.get(0).getFandian() > 0.3 ? users.get(0).getFandian() - 0.3 : 0);
        model.addAttribute("maxRatio", users.get(0).getFandian());
        return "user";
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
    public Result downList(@ModelAttribute("user") User user, int rows, int page, String nextAccount, String account, Double beginAmount, Double endAmount, int userType, int isOnLine){
        int from = rows*(page - 1);
        Map<String, Object> resultMap = Maps.newHashMap();
        User selectUser = new User();
        //不是根据用户名查询则直接查下级
        if(!StringUtils.isEmpty(account)){
            selectUser.setUsername(account);
        }if(!StringUtils.isEmpty(nextAccount)){
            selectUser.setUsername(nextAccount);
        }else{
            user.setShangji(user.getUsername());
        }
        //当为2时查询全部
        if(userType != 2){
            selectUser.setType(userType);
        }
        if(isOnLine != 0){
            selectUser.setOnline(isOnLine);
        }
        List<User> childUsers = userManager.select(selectUser, from, rows, null, null, beginAmount, endAmount);
        int total = userManager.count(selectUser, from, rows, null, null, beginAmount, endAmount);
        List<UserVO> resultList = Lists.newArrayList();
        for(User u : childUsers){
            double teamMoney = userManager.sum(u.getUsername() + "%");
            User user1 = new User();
            user1.setParentList(u.getParentList() + "%");
            int count = userManager.count(user1, null, null, null, null, null, null);
            UserVO userVO = UserTransfar.userToUserVO(u, teamMoney, count);
            resultList.add(userVO);
        }
        resultMap.put("ohj", StringUtils.isEmpty(account) ? StringUtils.isEmpty(nextAccount) ? user.getUsername() : nextAccount : account);
        resultMap.put("rows", resultList);
        resultMap.put("total", total);
        return Result.success(resultMap);
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
        if(!CollectionUtils.isEmpty(list)){
            return Result.success(list);
        }
        list = Lists.newArrayList();
        return Result.success(list);
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
        for(Bank bank : BaseData.bankName){
            if(bank.getId() == bankNameId){
                bookCard.setBankName(bank.getTitle());
            }
        }
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

    @RequestMapping("/openUser/regist")
    @ResponseBody
    public Result regist(@ModelAttribute("user") User user1, Integer userType, String account, String passWord, Double rebateRatio){
        User user = new User();
        user.setType(userType);
        user.setUsername(account);
        user.setPassword(passWord);
        user.setMinBonusOdds(rebateRatio);
        user.setFandian(rebateRatio);
        user.setShangji(user1.getUsername());
        user.setParentList(user1.getParentList() + account + ",");
        userManager.insert(user);
        return Result.success("注册成功！");
    }

    /**
     * 团队详情
     */
    @RequestMapping("/user/getTeamInfo")
    @ResponseBody
    public Result getTeamInfo(@ModelAttribute("user") User user, Integer rows, Integer page, String account, Date begin, Date end, Integer status, String childAccount){
        return Result.success(null);
    }

    /**
     * 修改备注
     */
    @RequestMapping("/user/updateHremark")
    @ResponseBody
    public Result updateHremark(String account, String homeRemark){
        User user = new User();
        user.setUsername(account);
        user.setRemark(homeRemark);
        userManager.update(user);
        return Result.success("修改成功！");
    }

    @RequestMapping("/info/getProvinceAll")
    @ResponseBody
    public Result getProvinceAll1(){
        return Result.success(BaseData.province);
    }


    @RequestMapping("/message/messageTable")
    public String messageTable(@ModelAttribute("user") User user, int rows, int page, Model model){
        Message message = new Message();
        message.setAccount(user.getUsername());
        List<Message> list = messageManager.select(message);
        if(CollectionUtils.isEmpty(list)){
            model.addAttribute("messages", new ArrayList<Message>());
            return "message";
        }
        for(Message message1 : list){
            if(message1.getAccount().equals(user.getUsername())){
                message1.setAccount("我");
            }
            if(message1.getAuthor().equals(user.getUsername())){
                message1.setAuthor("我");
            }
        }
        model.addAttribute("messages", list);
        model.addAttribute("count", list.size());
        return "message";
    }

    /**
     * 公告
     */
    @RequestMapping("notice/index")
    public String notice(@ModelAttribute("user") User user, Model model){
        List<User> users = userManager.select(user, null, null, null, null,null,null);
        if(CollectionUtils.isEmpty(users)){
            return null;
        }
        model.addAttribute("nickName", users.get(0).getNickName());
        model.addAttribute("amount", users.get(0).getMoney());
        return "notice";
    }

    /**
     * 公告列表
     * @return
     */
    @RequestMapping("/notice/list")
    @ResponseBody
    public Result noticeList(int pageNo, int pageSize){
        int from = (pageNo - 1) * pageSize;
        List<Notice> list = noticeManager.select(null, from, pageSize);
        int totalRecords = noticeManager.count();
        int bottomPageNo = (totalRecords % pageSize) == 0 ? totalRecords / pageSize : totalRecords / pageSize + 1;
        int topPageNo = 1;
        int previousPageNo = pageNo > 1 ? 1 : pageNo - 1;
        int nextPageNo = pageNo < (bottomPageNo - 1) ? pageNo + 1 : bottomPageNo;
        Map<String, Object> map = Maps.newHashMap();
        map.put("totalRecords", totalRecords);
        map.put("bottomPageNo", bottomPageNo);
        map.put("pageNo", pageNo);
        map.put("pageSize", 10);
        map.put("topPageNo", topPageNo);
        map.put("previousPageNo", previousPageNo);
        map.put("nextPageNo", nextPageNo);
        map.put("totalPages", bottomPageNo);
        map.put("list", list);
        return Result.success(map);
    }

    @RequestMapping("/notice/getContentById")
    @ResponseBody
    public Result noticeGetContentById(Integer id){
        List<Notice> notices = noticeManager.select(id, null, null);
        return Result.success(notices.get(0));
    }

    @RequestMapping("/helpCenter/index")
    public String helpCenter(@ModelAttribute("user") User user, Model model){
        List<User> users = userManager.select(user, null, null, null, null,null,null);
        model.addAttribute("nickName", users.get(0).getNickName());
        model.addAttribute("amount", users.get(0).getMoney());
        return "help";
    }

    @RequestMapping("/newMessage")
    @ResponseBody
    public Result newMessage(){
        Recharge recharge = new Recharge();
        recharge.setStatus(0);
        List<Recharge> list = rechargeManager.select(recharge, null, null, null, null);
        if(CollectionUtils.isEmpty(list)){
            return Result.faild(null, 0);
        }
        //status为200时有新提款
        return Result.success(null);
    }

    @RequestMapping("/shanchu")
    @ResponseBody
    public Result shanchu(String account){
        return Result.success(null);
    }

    @RequestMapping("/dlaccountList")
    @ResponseBody
    public Map<String, Object> dlaccountList(Integer pageNumber, Integer accountType, Integer online, String account, Integer agentId, Integer searchType){
        List<Map<String, Object>> result = Lists.newArrayList();
        User user = new User();
        List<User> list = userManager.select(user, null, null, null, null, null, null);
        int total = userManager.count(user, null, null, null, null, null, null);
        for(User u : list){
            Map<String, Object> map = Maps.newHashMap();
            map.put("account", u.getUsername());
            map.put("money", u.getMoney());
            map.put("gameShare", u.getFandian());
            map.put("userName", u.getName());
            map.put("accountType", u.getType());
            map.put("createDatetime", u.getCreatetime());
            map.put("lastLoginDatetime", u.getTime());
            map.put("lastLoginIp", u.getIp());
            map.put("online", u.getOnline());
            map.put("accountStatus", u.getStatus());
            result.add(map);
        }
        Map<String, Object> resultMap = Maps.newHashMap();
        resultMap.put("total", total);
        resultMap.put("rows", result);
        return resultMap;
    }

    @RequestMapping("/chongqian")
    @ResponseBody
    public Result chongqian(String account, Double money){
        User user = new User();
        user.setUsername(account);
        userManager.update(user, money);
        return Result.success(null);
    }

    @RequestMapping("/gameRecord")
    @ResponseBody
    public Map<String, Object> gameRecord(){
        //List<Map<String, Object>> result = Lists.newArrayList();
        BcLotteryOrder bcLotteryOrder = new BcLotteryOrder();
        List<BcLotteryOrder> list = bcLotteryOrderManager.select(bcLotteryOrder, null, null, null, null);
        int total = bcLotteryOrderManager.count(bcLotteryOrder, null, null, null, null);
        Map<String, Object> resultMap = Maps.newHashMap();
        Map<String, Double> aggsData = Maps.newHashMap();
        aggsData.put("buyMoney", 0.0);
        aggsData.put("winMoney", 0.0);
        resultMap.put("total", total);
        resultMap.put("aggsData", aggsData);
        resultMap.put("rows", list);
        return resultMap;
    }

    @RequestMapping("/chedan")
    @ResponseBody
    public Map<String, Boolean> chedan(Integer id){

        return null;
    }

    @RequestMapping("/shanchudingdan")
    @ResponseBody
    public Map<String, Boolean> shanchudingdan(Integer id){
        return null;
    }

    @RequestMapping("/deposit/deposit")
    public String deposit(@ModelAttribute("user") User user, Model model){
        DrawHistory drawHistory = new DrawHistory();
        drawHistory.setAccount(user.getUsername());
        String time = simpleDateFormat.format(new Date());

        String start = time.split(" ")[0] + " 00:00:00";
        String end = time.split(" ")[0] + " 23:59:00";

        Date startDate = null;
        Date endDate = null;

        try {
            startDate = simpleDateFormat.parse(start);
            endDate = simpleDateFormat.parse(end);
        }catch (Exception e){
            e.printStackTrace();
        }
        List<DrawHistory> list = drawHistoryManager.select(drawHistory, null, null, startDate, endDate);
        int count = CollectionUtils.isEmpty(list) ? 0 : list.size();

        User u = new User();
        u.setUsername(u.getUsername());
        List<User> users = userManager.select(user, null, null, null, null, null, null);

        BookCard bookCard = new BookCard();
        bookCard.setAccount(user.getUsername());
        List<BookCard> bookCards = bookCardManager.select(bookCard);

        model.addAttribute("amount", users.get(0).getMoney());
        model.addAttribute("count", 6 - count);
        model.addAttribute("max", users.get(0).getMoney() > 5000000 ? 5000000 : users.get(0).getMoney());
        model.addAttribute("amount", users.get(0).getMoney());
        model.addAttribute("nickName", users.get(0).getNickName());
        model.addAttribute("amount", users.get(0).getMoney());
        model.addAttribute("account", users.get(0).getUsername());
        model.addAttribute("bankCardNum", CollectionUtils.isEmpty(bookCards) ? 0 : bookCards.size());
        return "deposit";
    }

    @RequestMapping(value = "/registByCode", method = RequestMethod.GET)
    public String registByCode(String code, Model model){
        model.addAttribute("code", code);
        return "regist";
    }

    @RequestMapping(value = "/registByCode", method = RequestMethod.POST)
    @ResponseBody
    public Result registByCode(String account, String extcode, String code, HttpServletRequest httpServletRequest){
        HttpSession httpSession = httpServletRequest.getSession();
        if(!httpSession.getAttribute("code").equals(code)){
            return Result.faild("验证码错误！", 400);
        }
        if(StringUtils.isEmpty(extcode)){

        }else{
            RegistURL registURL = new RegistURL();
            registURL.setCode(extcode);
            List<RegistURL> list = registURLManager.seletc(registURL);
            User user = new User();
            user.setType(Integer.valueOf(list.get(0).getUserType()));
            user.setUsername(account);
            user.setPassword("aa123456");
            user.setMinBonusOdds(list.get(0).getRebateRatio());
            user.setFandian(list.get(0).getRebateRatio());
            user.setShangji(list.get(0).getAccount());
            user.setParentList(list.get(0).getParentList());
            userManager.insert(user);
        }
        return Result.success("注册成功！");
    }

    @RequestMapping("/openUser/createExtCode")
    @ResponseBody
    public Result createExtCode(@ModelAttribute("user") User user, String usertype, Double rebateratio, Integer validtime, String extaddress, String extQQ){
        String code = MD5Util.encode(user.getUsername() + System.currentTimeMillis());
        Settings settings = new Settings();
        settings.setKey("url");
        List<Settings> lists = settingsManager.select(settings);
        settings = lists.get(0);
        String regist = settings.getVaule() + "/registByCode?code=" + code;
        RegistURL registURL = new RegistURL();
        registURL.setAccount(user.getUsername());
        registURL.setParentList(user.getParentList());
        registURL.setExtAddress(extaddress);
        registURL.setRebateRatio(rebateratio);
        registURL.setValidTime(validtime);
        registURL.setRegistAddress(regist);
        registURL.setWxAddress(regist);
        registURLManager.insert(registURL);
        return Result.success(null);
    }
}
