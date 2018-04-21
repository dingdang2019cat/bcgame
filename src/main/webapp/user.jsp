<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2017/12/17
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>金牌娱乐 - 管理中心</title>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <link rel="icon" href="/resource/favicon.ico"  type="image/x-icon" />
    <link rel="stylesheet" href="/resource/reset.css?ver=20171208"/>
    <link rel="stylesheet" href="/resource/wk-common.css?ver=20171208"/>
    <script type="text/javascript" src="/resource/jquery-1.11.0.min.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/jquery.timer.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/layer.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/jquery.cookie.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/spinner.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/audio/audio5.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/base.js?ver=20171208"></script>


    <link rel="stylesheet" href="/resource/wk-accountCentre.css?ver=20171208" />
    <link rel="stylesheet" href="/resource/jquery-ui.min.css?ver=20171208" />
    <script type="text/javascript" src="/resource/jquery-ui.min.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/math.extends.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/zclip/zclip.min.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/jquery.qrcode.min.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/My97DatePicker/WdatePicker.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/pagerAjax.js?ver=20171208"></script>
    <script type="text/javascript">
        var needBindCard = "";
        var specicalStr = "<&>";
        var gloas = {};
        gloas.tabId = '#';
        gloas.currentAccount = "${account}";					//当前用户
        gloas.maxRatio = ${maxRatio};							//最大可调返点
        gloas.playerMaxRatio = ${playerMaxRatio};	//会员最大返点
        gloas.userMinRatio = 0.00;		//用户点差
        gloas.noneMinRatio = ${maxRatio};		//无需配合返点
        gloas.stepRatio = 0.1;							//点差步长
        gloas.accountRecharge = true;	//下级充值功能
        gloas.hasSafeWord = true;
        gloas.lockStatus = true;
        gloas.userType = 1;//用户类型
        gloas.userType = 1;
        gloas.contractStatus = 3; //契约功能
        gloas.dailyWagesStatus = false;
        gloas.dailyWagesTrans = false;// 日工资仅传递的权限
        gloas.dailyWagesOpen = true;// 日工资开通日薪的权限
    </script>

</head>
<body>


<!--头部-->
<div class="header">
    <div class="w1150">
        <a class="logo" href="/index"></a>
        <div class="betsHallBox">
            <a href="javascript:;" class="betsHall">所有游戏 <span style="font-family:'宋体';font-size: 14px;">&gt;</span></a>
            <!--所有彩种-->
            <div class="allLotteryList">
                <div class="hotLotteryList">
                    <i></i>
                    <a href="/lotts/cqssc/index" class="acqsscIcon" title="重庆时时彩"></a>
                    <!--
                    <a href="/lotts/sj1fc/index" class="asj1fcIcon" title="鼎汇一分彩"></a>
                    <a href="/lotts/sj_mmc/index" class="ammcIcon" title="鼎汇40秒"></a>
                    <a href="/lotts/tiger/index" class="atigerIcon" title="鼎汇秒秒彩"></a>
                    -->
                </div>
                <div class="lotteryList" id="lotteryList">

                    <div class="lottDetail">
                        <i class="lotteryTitle title_ssc" title="时时彩"></i>
                        <div class="lotteryDetdailList">
                            <!--
                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/tiger/index" class="lottplayExplain">鼎汇秒秒彩</a></li>

                                <li><a href="/lotts/sj_mmc/index" class="lottplayExplain">鼎汇40秒</a></li>

                                <li><a href="/lotts/sj1fc/index" class="lottplayExplain">鼎汇一分彩</a></li>

                                <li><a href="/lotts/sj3fc/index" class="lottplayExplain">鼎汇三分彩</a></li>

                                <li><a href="/lotts/sj5fc/index" class="lottplayExplain">鼎汇五分彩</a></li>

                                <li><a href="/lotts/gppl5/index" class="lottplayExplain">高频排列5</a></li>

                            </ul>


                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/tx1fc/index" class="lottplayExplain">腾讯分分彩</a></li>

                                <li><a href="/lotts/jndbsc/index" class="lottplayExplain">加拿大3.5</a></li>

                                <li><a href="/lotts/dj1_5/index" class="lottplayExplain">东京1.5</a></li>

                            </ul>
                            -->

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/cqssc/index" class="lottplayExplain">重庆时时彩</a></li>

                                <li><a href="/lotts/xjssc/index" class="lottplayExplain">新疆时时彩</a></li>

                            </ul>

                        </div>
                    </div>

                    <div class="lottDetail">
                        <i class="lotteryTitle title_pk10" title="北京赛车"></i>
                        <div class="lotteryDetdailList">

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/pk10/index" class="lottplayExplain">北京赛车</a></li>

                            </ul>

                            <!--

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/ffpk10/index" class="lottplayExplain">分分PK10</a></li>

                                <li><a href="/lotts/f3pk10/index" class="lottplayExplain">3分PK10</a></li>

                                <li><a href="/lotts/f5pk10/index" class="lottplayExplain">5分PK10</a></li>

                            </ul>
                            -->
                        </div>
                    </div>

                    <div class="lottDetail">
                        <i class="lotteryTitle title_k3" title="快3"></i>
                        <div class="lotteryDetdailList">

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/jsk3/index" class="lottplayExplain">江苏快3</a></li>

                                <li><a href="/lotts/shk3/index" class="lottplayExplain">上海快3</a></li>

                            </ul>

                        </div>
                    </div>

                    <div class="lottDetail">
                        <i class="lotteryTitle title_11x5" title="11选5"></i>
                        <div class="lotteryDetdailList">

                            <!--

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/f1_11x5/index" class="lottplayExplain">一分11选5</a></li>

                                <li><a href="/lotts/f3_11x5/index" class="lottplayExplain">三分11选5</a></li>

                            </ul>
                            -->

                            <ul class="lotteryGroupList">



                                <li><a href="/lotts/gd11x5/index" class="lottplayExplain">广东11选5</a></li>

                                <li><a href="/lotts/sd11x5/index" class="lottplayExplain">山东11选5</a></li>

                            </ul>

                        </div>
                    </div>

                    <div class="lottDetail">
                        <i class="lotteryTitle title_dp" title="低频"></i>
                        <div class="lotteryDetdailList">

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/pl3/index" class="lottplayExplain">排列三</a></li>

                                <li><a href="/lotts/pl5/index" class="lottplayExplain">排列5</a></li>

                                <li><a href="/lotts/3d/index" class="lottplayExplain">福彩3D</a></li>

                            </ul>

                        </div>
                    </div>

                </div>
            </div>
        </div>
        <a href="/user/index?tabId=msg" class="inMail"><i></i>站内信<span id="platNoticeNumSpan"></span></a>
        <label class="username overflowEllipsis" title="${nickName}">
            昵称：${nickName}

        </label>
        <label>
            <span>可用余额：</span>
            <span id="userBalance" class="userBalance overflowEllipsis" title="${amount}" data-value="${amount}">${amount}</span>
            <span>元</span>
            <a href="javascript:;" class="accountHide" id="accountHide" data-value="false" title="隐藏金额"></a>
        </label>
        <a href="javascript:;" class="recharge" onclick="javascript:if('0' == 1 || '0' == 3){$.alert('您的充值功能已被冻结！');}else{window.location.href='/recharge/rechargeMoney'}"></a>
        <a href="javascript:;" class="drawMoney" onclick="javascript:if('0' == 2 || '0' == 3){$.alert('您的提现功能已被冻结！');}else{window.location.href='/deposit/deposit'}"></a>
        <div class="headerR">
            <a href="http://dkc.duokebo.com/webchat/chat.aspx?siteid=730985" class="customerService" target="_blank"><i></i>联系客服</a>
            <a href="javascript:;" class="refresh" id="refererUser"><i></i>刷新</a>
            <a href="/logout" class="userQuit"><i></i>登出</a>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function() {
        //获取未读站内信数量
        ajaxObject('/message/messageCountUnRead',"POST",function(data){
            if (data > 0) {
                $("#platNoticeNumSpan").addClass("platNoticeNum").text(data);
            } else {
                $("#platNoticeNumSpan").removeClass("platNoticeNum").text("");
            }
        });
    });
</script>


<!-- 通用右侧导航 -->
<div id="asideRight">
    <a class="sy" href="/" title="首页"></a>
    <a class="zxgg" href="/notice/index" title="最新公告"></a>
    <a class="yxjl" href="/game/index?tabId=gameBetList" title="游戏记录"></a>
    <a class="zhjl" href="/game/index?tabId=trace" title="追号记录"></a>
    <a class="glzx" href="/user/index" title="管理中心"></a>
    <a class="bbzx" href="/report/index" title="报表中心"></a>
    <a class="bzzx" href="/helpCenter/index" title="帮助中心"></a>
    <a class="top" href="#top"></a>
</div>
<script>
    $(function(){
        var href = document.location.href;
        if(href == document.location.origin || href == (document.location.origin+'/') || href == (document.location.origin+'/index')){
            $('.sy').addClass('active');
        }else if(href.indexOf('notice/index')>0){
            $('.zxgg').addClass('active');
        }else if(href.indexOf('gameBetList')>0){
            $('.yxjl').addClass('active');
        }else if(href.indexOf('trace')>0){
            $('.zhjl').addClass('active');
        }else if(href.indexOf('report/index')>0){
            $('.bbzx').addClass('active');
        }else if(href.indexOf('user/index')>0){
            $('.glzx').addClass('active');
        }else if(href.indexOf('helpCenter/index')>0){
            $('.bzzx').addClass('active');
        }
    });
</script>


<!-- 账户中心 -->
<div class="areaBigContainer mainWidth" id="userCenterArea">
    <div class="containerFlex">
        <!-- 列表 -->
        <div class="leftListArea">

            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail teamManageA" data-id="#teamManageArea"><i></i>团队管理</a>
                <div class="leftListItem" style="display:none;">
                    <a class="nav active" href="javascript:;" data-id="#financeList">会员管理</a>
                    <a class="nav" href="javascript:;" data-id="#addUser">新增会员</a>
                    <a class="nav" href="javascript:;" data-id="#lowerDividend">下级分红</a>
                    <a class="nav" href="javascript:;" data-id="#teamInfo">团队概况</a>
                    <a class="nav" href="javascript:;" data-id="#extCode">注册链接</a>
                </div>
            </div>

            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail userCenterA" data-id="#safe"><i></i>个人中心</a>
                <div class="leftListItem" style="display:none;">
                    <a class="nav active" href="javascript:;" data-id="#personInfo">个人信息</a>
                    <a class="nav" href="javascript:;" data-id="#myCard" id="myBankCard">我的银行卡</a>
                    <a class="nav" href="javascript:;" data-id="#modLoginPwd">修改登录密码</a>
                    <a class="nav" href="javascript:;" data-id="#modAccountPwd">修改资金密码</a>
                    <a class="nav" href="javascript:;" data-id="#findSafeByQa">找回资金密码</a>

                </div>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail msgA" data-id="#msg"><i></i>消息管理</a>
            </div>
        </div>
        <!-- 内容 -->
        <div class="rightArea">
            <div class="accountCentreContent">

                <!-- 团队管理 -->
                <div class="teamManageBox bigCommonBox" id="teamManageArea" style="display: none;">
                    <div class="safeCenter">
                        <!-- 会员管理 -->
                        <div class="userListArea" id="financeList">
                            <!-- 查询条件 -->
                            <form class="searchBar userListSearch" id="userSearchForm">
                                <input type="hidden" name="nextAccount" id="nextAccount"/>
                                <label for="#">
                                    <span class="labelTitle">用户名：</span>
                                    <input type="text" class="labelCond userName" id="account" name="account" onkeyup="this.value=this.value.replace(/\W/g,'');" />
                                </label>
                                <label for="#">
                                    <span class="labelTitle">用户余额：</span>
                                    <input type="text" class="labelCond searchAmount" name="beginAmount" onkeyup="inputNumber(this)" />
                                    <span>-</span>
                                    <input type="text" class="labelCond searchAmount" name="endAmount" onkeyup="inputNumber(this)" />
                                    <span>元</span>
                                </label>
                                <label for="#">
                                    <span class="labelTitle">用户组：</span>
                                    <select name="userType" class="labelCond selectCond">
                                        <option value="2">全部用户</option>
                                        <option value="1">代理</option>
                                        <option value="0">会员</option>
                                    </select>
                                </label>
                                <label for="#">
                                    <span class="labelTitle">在线状态：</span>
                                    <select name="isOnLine" class="labelCond selectCond">
                                        <option value="0">全部显示</option>
                                        <option value="2">在线</option>
                                    </select>
                                </label>
                                <a href="javascript:void(0);" class="btn" id="userSearchSubmit">搜索</a>
                                <a href="javascript:void(0);" style="display:none;" id="userSearchSubmit2">搜索2</a>
                                <span class="operate" id="goBack" style="display: none"></span>


                            </form>
                            <p class="userBreadCrumb" id="testing"></p>
                            <!-- 用户数据 -->
                            <div class="tableBox userListBox" id="userListBox">
                                <table class="userListTable">
                                    <thead>
                                    <tr class="listHeader">
                                        <th width="15%">用户信息</th>
                                        <th>人数</th>
                                        <th width="15%">余额</th>
                                        <th width="15%">团队余额</th>
                                        <th>最后登录时间</th>


                                        <th>备注</th>
                                        <th>操作</th>
                                    </tr></thead>
                                    <tbody id="userListTable"></tbody>
                                    <tfoot>
                                    <tr>
                                        <td colspan="3" class='fontColorTheme'>本页团队余额总计：</td>
                                        <td class='fontColorTheme' id="teamBalance"></td>
                                    </tr>
                                    </tfoot>
                                </table>
                                <!-- 没有消息 -->
                                <div class="nullMsg" id="UserNullMsg">
                                    <i class="nullMsgImg"></i>
                                    <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                                </div>
                                <!-- 分页 -->





                                <div class="pagination">
                                    <div class="page-l">
                                        <span>每页</span>
                                        <select class="labelCond selectCond" id="pageShowNum_userSearchForm" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, 'userSearchForm', 'userSearchSubmit2');">
                                            <option value="15" selected="selected" >15条</option>
                                            <option value="25"  >25条</option>
                                            <option value="50"  >50条</option>
                                        </select>
                                        <span>共<span id="pageRowSpan_userSearchForm">0</span>条 </span><span>第<span id="pageCurrSpan_userSearchForm">0</span>/</span><span id="pageTotalSpan_userSearchForm">0</span><span>页</span>
                                    </div>
                                    <div class="page-r">
                                        <div class="page-home">
                                            <a id="pageHome_userSearchForm" href="javascript:void(0);" class="homePage">第一页</a>
                                        </div>
                                        <div class="page-list">
                                            <a id="pagePrev_userSearchForm" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                            <input type="text" id="pageList_userSearchForm" class="labelCond" value="0" />
                                            <a id="pageNext_userSearchForm" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                        </div>
                                        <div class="page-end">
                                            <a id="pageEnd_userSearchForm" href="javascript:void(0);" class="endPage">最后一页</a>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function() {
                                        $("#userSearchForm").prepend("<input type='hidden' id='pageSize_userSearchForm' name='rows' value='15' /><input type='hidden' id='pageCurr_userSearchForm' name='page' value='1' /><input type='hidden' id='pageBtnId_userSearchForm' value='userSearchSubmit2' />");
                                    });
                                </script>
                            </div>
                        </div>
                        <!-- 新增会员 -->
                        <div class="addUserArea" id="addUser" style="display: none;">
                            <!-- 添加条件 -->
                            <div class="addUserBox">
                                <form class="addUserList" id="userAddForm">
                                    <div>
                                        <span class="labelTitle">用户类型：</span>
                                        <select id="addUserType" class="labelCond selectCond userType" name="userType">
                                            <option value="0">会员</option>
                                            <option value="1">代理</option>
                                        </select>
                                    </div>
                                    <div>
                                        <span class="labelTitle">用户名：</span>
                                        <input class="labelCond userName" placeholder="字母开头6-14位数字、字母" id="addAccount" name="account" onkeyup="this.value=this.value.replace(/\W/g,'');" maxLength=14 />
                                        <span class="errorWarn"></span>
                                    </div>
                                    <div>
                                        <span class="labelTitle">默认密码：</span>
                                        <input id="addDefaultPwd" class="labelCond defaultPwd" value="aa123456" name="passWord" tabindex="-1" readonly />
                                    </div>
                                    <div>
                                        <span class="labelTitle">设置返点：</span>
                                        <select id="addRebateRatio" class="labelCond selectCond reservePoint" name="rebateRatio">
                                        </select>
                                    </div>
                                    <div>
                                        <button class="btn" type="submit">确认开户</button>
                                    </div>
                                </form>
                                <!-- 我的配额 -->
                                <div class="myQuotaBox">
                                    <table class="myQuotaTable">
                                        <thead>
                                        <tr>
                                            <th class="myQuotaTitle" colspan="4">我的配额</th>
                                        </tr>
                                        <tr>
                                            <th>返点</th>
                                            <th>剩余配额</th>
                                            <th>返点</th>
                                            <th>剩余配额</th>
                                        </tr>
                                        </thead>
                                        <tbody id="myQuotaTable"></tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tableBox">
                                <table class="lottTypeIntroTable">
                                    <thead>
                                    <tr>
                                        <th width="150">彩种</th>
                                        <th width="150">奖金组</th>
                                        <th width="350">返点范围</th>
                                        <th width="150">高奖金</th>
                                        <th width="350">高返点</th>
                                    </tr>
                                    </thead>
                                    <tbody id="lottsInfo">











                                    <tr data-ratio="0" class="listDetail">
                                        <td>时时彩</td>
                                        <td>1700平级奖金组</td>
                                        <td>0-12.5%</td>
                                        <td data-ratio="85.00">
                                            <span class="highBonusRebate">1950</span>
                                        </td>
                                        <td data-ratio="1700.00">
                                            <span class="highBonusRebate">1700+12.5%</span>
                                        </td>
                                    </tr>











                                    <tr data-ratio="0" class="listDetail">
                                        <td>11选5</td>
                                        <td>1700平级奖金组</td>
                                        <td>0-12.5%</td>
                                        <td data-ratio="85.00">
                                            <span class="highBonusRebate">1950</span>
                                        </td>
                                        <td data-ratio="1700.00">
                                            <span class="highBonusRebate">1700+12.5%</span>
                                        </td>
                                    </tr>











                                    <tr data-ratio="0.3" class="listDetail">
                                        <td>北京赛车</td>
                                        <td>1700平级奖金组</td>
                                        <td>0-12.2%</td>
                                        <td data-ratio="85.00">
                                            <span class="highBonusRebate">1944</span>
                                        </td>
                                        <td data-ratio="1700.00">
                                            <span class="highBonusRebate">1700+12.2%</span>
                                        </td>
                                    </tr>










                                    <tr data-ratio="1.6" class="listDetail">
                                        <td>福彩3D</td>
                                        <td>1700平级奖金组</td>
                                        <td>0-10.9%</td>
                                        <td data-ratio="85.00">
                                            <span class="highBonusRebate">1918</span>
                                        </td>
                                        <td data-ratio="1700.00">
                                            <span class="highBonusRebate">1700+10.9%</span>
                                        </td>
                                    </tr>











                                    <tr data-ratio="1.6" class="listDetail">
                                        <td>排列三</td>
                                        <td>1700平级奖金组</td>
                                        <td>0-10.9%</td>
                                        <td data-ratio="85.00">
                                            <span class="highBonusRebate">1918</span>
                                        </td>
                                        <td data-ratio="1700.00">
                                            <span class="highBonusRebate">1700+10.9%</span>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>



                        <!-- 下级分红-start -->
                        <div class="teamInfoArea downBonusArea" id="lowerDividend" style="display: none;">
                            <form class="searchBar" id="dividendSearchArgs">
                                <label for="#">
                                    <span class="labelTitle">用户名：</span>
                                    <input type="text" class="labelCond userName" id="userName" name="account">
                                </label>
                                <label for="#">
                                    <span class="labelTitle">日期：</span>
                                    <select name="dividendDate" class="labelCond selectCond" style='width:190px'>

                                        <option value="2017/12/16-2017/12/31">2017/12/16-2017/12/31</option>

                                        <option value="2017/12/01-2017/12/15">2017/12/01-2017/12/15</option>

                                    </select>
                                </label>
                                <label for="#">
                                    <span class="labelTitle">状态：</span>
                                    <select name="dividendStatus" class="labelCond selectCond">
                                        <option value=" ">全部</option>
                                        <option value="0">尚未发放</option>
                                        <option value="1">发放完毕</option>
                                        <option value="2">不需分红</option>
                                        <option value="3">逾期未发放</option>
                                        <option value="4">強制发放完毕</option>
                                    </select>
                                </label>
                                <a href="javascript:void(0);" class="btn" id="dividendSearch">查询</a>
                            </form>
                            <!-- 下级分红列表 -->
                            <div class="tableBox" id="downBonusBox">
                                <table class="dividendListTable">
                                    <thead>
                                    <tr class="listHeader">
                                        <th>账户名</th>
                                        <th>开始日期</th>
                                        <th>结束日期</th>
                                        <th>累积销售量</th>
                                        <th>分红比</th>
                                        <th>累计盈亏</th>
                                        <th>应发分红</th>
                                        <th>状态</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="dividendListHeader"></tbody>
                                </table>
                                <!-- 没有消息 -->
                                <div class="nullMsg" id="dividendNullMsg">
                                    <i class="nullMsgImg"></i>
                                    <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                                </div>
                                <!-- 分页 -->





                                <div class="pagination">
                                    <div class="page-l">
                                        <span>每页</span>
                                        <select class="labelCond selectCond" id="pageShowNum_dividendSearchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, 'dividendSearchArgs', 'dividendSearch');">
                                            <option value="15" selected="selected" >15条</option>
                                            <option value="25"  >25条</option>
                                            <option value="50"  >50条</option>
                                        </select>
                                        <span>共<span id="pageRowSpan_dividendSearchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_dividendSearchArgs">0</span>/</span><span id="pageTotalSpan_dividendSearchArgs">0</span><span>页</span>
                                    </div>
                                    <div class="page-r">
                                        <div class="page-home">
                                            <a id="pageHome_dividendSearchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                        </div>
                                        <div class="page-list">
                                            <a id="pagePrev_dividendSearchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                            <input type="text" id="pageList_dividendSearchArgs" class="labelCond" value="0" />
                                            <a id="pageNext_dividendSearchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                        </div>
                                        <div class="page-end">
                                            <a id="pageEnd_dividendSearchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function() {
                                        $("#dividendSearchArgs").prepend("<input type='hidden' id='pageSize_dividendSearchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_dividendSearchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_dividendSearchArgs' value='dividendSearch' />");
                                    });
                                </script>
                            </div>
                        </div>
                        <!-- 下级分红-end -->

                        <!-- 团队概况 -->
                        <div class="teamInfoArea" id="teamInfo" style="display: none;">
                            <!-- 查询条件 -->
                            <form class="searchBar" id="teamInfoSearchForm">
                                <label for="#">
                                    <span class="labelTitle">用户名：</span>
                                    <input type="text" class="labelCond userName" name="account" onkeyup="this.value=this.value.replace(/\W/g,'');" />
                                </label>
                                <label>
                                    <span class="labelTitle">时间：</span>
                                    <input type="text" class="labelCond Wdate" value="2017-12-17" name="begin" onClick="WdatePicker({startDate: '%y-%M-%d',dateFmt:'yyyy-MM-dd'})"/>
                                    <span>(00:00:00)</span><span>~</span>
                                    <input type="text" class="labelCond Wdate" value="2017-12-17" name="end" onClick="WdatePicker({startDate: '%y-%M-%d',dateFmt:'yyyy-MM-dd'})" />
                                    <span>(23:59:59)</span>
                                </label>
                                <input type="hidden" id="teamInfoStatus" name="status" value="0" />
                                <input type="hidden" id="teamInfoAccount" name="childAccount"/>
                                <a href="javascript:void(0);" class="btn" id="teamInfoSearchSubmit">搜索</a>
                            </form>
                            <p class="userBreadCrumb" id="testing2"></p>
                            <!-- 团队概况数据 -->
                            <div class="tableBox" id="teamInfoListBox">
                                <table class="teamInfoListTable">
                                    <thead>
                                    <tr class="listHeader">
                                        <th width="15%">用户名</th>
                                        <th>团队人数</th>
                                        <th>团队余额</th>
                                        <th width="15%">充值总额</th>
                                        <th width="15%">提现总额</th>
                                        <!-- 		                                   <th>日工资</th> -->
                                        <th>实际盈亏</th>
                                        <th>新注册人数</th>
                                        <th>首次充值人数</th>
                                        <th>有效用户</th>
                                    </tr>
                                    </thead>
                                    <tbody id="teamInfoListTable"></tbody>
                                </table>
                                <!-- 没有消息 -->
                                <div class="nullMsg" id="teamInfoNullMsg">
                                    <i class="nullMsgImg"></i>
                                    <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                                </div>
                                <!-- 分页 -->





                                <div class="pagination">
                                    <div class="page-l">
                                        <span>每页</span>
                                        <select class="labelCond selectCond" id="pageShowNum_teamInfoSearchForm" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, 'teamInfoSearchForm', 'teamInfoSearchSubmit');">
                                            <option value="15" selected="selected" >15条</option>
                                            <option value="25"  >25条</option>
                                            <option value="50"  >50条</option>
                                        </select>
                                        <span>共<span id="pageRowSpan_teamInfoSearchForm">0</span>条 </span><span>第<span id="pageCurrSpan_teamInfoSearchForm">0</span>/</span><span id="pageTotalSpan_teamInfoSearchForm">0</span><span>页</span>
                                    </div>
                                    <div class="page-r">
                                        <div class="page-home">
                                            <a id="pageHome_teamInfoSearchForm" href="javascript:void(0);" class="homePage">第一页</a>
                                        </div>
                                        <div class="page-list">
                                            <a id="pagePrev_teamInfoSearchForm" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                            <input type="text" id="pageList_teamInfoSearchForm" class="labelCond" value="0" />
                                            <a id="pageNext_teamInfoSearchForm" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                        </div>
                                        <div class="page-end">
                                            <a id="pageEnd_teamInfoSearchForm" href="javascript:void(0);" class="endPage">最后一页</a>
                                        </div>
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    $(function() {
                                        $("#teamInfoSearchForm").prepend("<input type='hidden' id='pageSize_teamInfoSearchForm' name='rows' value='15' /><input type='hidden' id='pageCurr_teamInfoSearchForm' name='page' value='1' /><input type='hidden' id='pageBtnId_teamInfoSearchForm' value='teamInfoSearchSubmit' />");
                                    });
                                </script>
                            </div>
                        </div>
                        <!-- 注册链接 -->
                        <div class="linkOpenAcctArea" id="extCode" style="display: none;">
                            <div class="linkOpenAcctBox">
                                <form class="linkOpenAcct" id="extCodeForm">
                                    <p class="headerTitle">新建链接开户入口</p>
                                    <div>
                                        <span class="labelTitle">用户类型：</span>
                                        <select class="labelCond selectCond" id="codeUserType" name="usertype">
                                            <option value="0">会员</option>
                                            <option value="1">代理</option>
                                        </select>
                                    </div>
                                    <div>
                                        <span class="labelTitle">设置返点：</span>
                                        <select class="labelCond selectCond" id="codeRebateRatio" name="rebateratio"></select>
                                    </div>
                                    <div>
                                        <span class="labelTitle">有效期：</span>
                                        <select class="labelCond selectCond" name="validtime">
                                            <option value="1">1天</option>
                                            <option value="3">3天</option>
                                            <option value="7">7天</option>
                                            <option value="15">15天</option>
                                            <option value="30">30天</option>
                                            <option value="0">永久</option>
                                        </select>
                                    </div>
                                    <div>
                                        <span class="labelTitle">推广渠道：</span>
                                        <input type="text" class="labelCond" id="extAddress" name="extaddress" placeholder="如：QQ、论坛等" />
                                        <span class="errorWarn"></span>
                                    </div>
                                    <div>
                                        <span class="labelTitle">推广QQ：</span>
                                        <input type="text" class="labelCond" name="extQQ" onkeyup="inputNumber(this)" maxLength=50 />
                                        <span class="errorWarn"></span>
                                    </div>
                                    <div>
                                        <button class="btn" type="submit">生成链接</button>
                                    </div>
                                </form>
                                <div class="openAcctExplainBox">
                                    <div class="explain">
                                        <p>您可以建立一系列不同返奖率的自主注册入口，然后将入口地址分发给您的用户。</p>
                                        <p>用户访问这些入口地址即可自行注册在您的团队中，省去您手动逐个开户的麻烦。</p>
                                        <p>
                                            <span class="fontColorRed">注：</span>您还可在不同的宣传途径放置不同的入口，以统计哪些途径更为有效。
                                        </p>
                                    </div>
                                    <p class="tips">*生成链接成功后，会在已建立的入口中显示</p>
                                </div>
                            </div>
                            <div class="beforeOpenAcctBox">
                                <p class="beforeTitle">已建立的开户入口</p>
                                <table class="beforeAcctLinkTable" id="extCodeTable"></table>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 安全中心 -->
                <div class="userSafeArea bigCommonBox" id="safe" style="display: none;">
                    <div class="safeCenterBox">
                        <div class="safeCenter">
                            <!-- 个人信息 -->
                            <div class="personInfo" id="personInfo" style="display: block;">
                                <form id="setInformation">
                                    <div>
                                        <span class="labelTitle">昵称：</span>
                                        <input class="labelCond" value="${nickName}" name="niceName" />
                                        <a href="javascript:void(0);" class="btn" onclick="setInformation()">修改</a>
                                    </div>
                                    <div>
                                        <span class="labelTitle">预留信息：</span>
                                        <input class="labelCond" value="" name="message" />
                                        <a href="javascript:void(0);" class="btn" onclick="setInformation()">修改</a>
                                    </div>
                                </form>
                            </div>
                            <!-- 我的银行卡 -->
                            <div class="myCard" id="myCard">
                                <!-- 首次绑定银行卡 -->
                                <div class="firstBindCard" style="display: none;">
                                    <span class="fontColorGray">您还未绑定任何银行卡哟~</span>
                                    <a
                                            href="javascript:void(0)"
                                            onclick="beginBind()"
                                            class="addBankCard"> <span class="bindCardImg">+</span> <span
                                            class="firstAddCard">添加银行卡</span>
                                    </a>
                                </div>
                                <!-- 绑定银行卡信息 -->
                                <div class="bindCardInfo" style="display: none;">
                                    <h2 class="headerTitle">绑定银行卡</h2>
                                    <div class="userMsgBox">
                                        <p class="userMsgTitle">使用提示：</p>
                                        <div class="bindMsgDetail">
                                            <p>
                                                <span>1. 银行卡绑定成功后，平台任何有区域都</span>
                                                <span class="fontColorRed">不会</span> <span>出现您的完整银行账号、开户姓名等信息。</span>
                                            </p>
                                            <p>
                                                <span>2. 银行卡绑定成功后，相关信息将无法查看与修改，只能进行</span>
                                                <span class="fontColorRed">解除绑定</span> <span>操作，请仔细填写下表。</span>
                                            </p>
                                            <p>
                                                <span>3. 每个游戏账户最多绑定</span> <span class="fontColorRed">5</span>
                                                <span>张银行卡，您已经成功绑定</span> <span class="fontColorRed" id="hasCardNum">0</span>
                                                <span>张。</span>
                                            </p>
                                            <p>
                                                <span>4. 一个账户只能绑定同一个开户人姓名的银行卡。</span>
                                            </p>
                                        </div>
                                    </div>
                                    <form class="newBindCard" id="binCardForm">
                                        <div>
                                            <span class="labelTitle">开户银行：</span><select class="labelCond selectCond" name="bankNameId" id="selectBank"></select>
                                        </div>
                                        <div>
                                            <span class="labelTitle">开户银行区域：</span><select class="labelCond selectCond" id="selectProvince" onchange="selectProvince"></select>
                                            <select class="labelCond selectCond" id="selectCity">
                                                <option value="0">请选择城市</option>
                                            </select>
                                        </div>
                                        <div>
                                            <span class="labelTitle">支行名称：</span><input type="text" class="labelCond" maxLength=50 name="address" id="address" placeholder="请输入开户支行名字" />
                                        </div>
                                        <div>
                                            <span class="labelTitle">开户人姓名：</span><input type="text" class="labelCond" maxLength=30 name="niceName" id="niceName" value="邱平杰" placeholder="请输入银行卡开户人姓名" />
                                        </div>
                                        <div>
                                            <span class="labelTitle">银行账号：</span><label class="labelInput"><input type="text" class="labelCond" maxLength=19 id="card1" onkeyup="inputNum(this)" placeholder="请输入16位至19位银行账号" onblur="validate.bankCard.check(true)" /></label>
                                            <span class="errorWarn"></span>
                                        </div>
                                        <div>
                                            <span class="labelTitle">确认银行账号：</span><label class="labelInput"><input type="text" class="labelCond" name="card" id="card" maxLength=19 placeholder="请再次输入银行账号" onkeyup="inputNum(this)" onpaste="return false;"  onblur="validate.bankCardConfirm.check()" /></label>
                                            <span class="errorWarn"></span>
                                        </div>
                                        <div id="BindCardBtnBox">
                                            <span class="labelTitle"></span><a href="javascript:;" class="btn nextBtn" onclick="BindCardconfirm()">下一步</a>
                                        </div>
                                    </form>
                                </div>
                                <!-- 确认绑卡信息-->
                                <div class="confirmCardInfo" style="display: none;">
                                    <div class="tableBox">
                                        <h2 class="headerTitle">绑定银行卡-信息确认</h2>
                                        <table class="confirmCardInfoTable" id="confirmCardInfoTable">
                                            <tr class="listDetail">
                                                <td width="300">绑定银行：</td>
                                                <td></td>
                                            </tr>
                                            <tr class="listDetail">
                                                <td>开户银行省份：</td>
                                                <td></td>
                                            </tr>
                                            <tr class="listDetail">
                                                <td>开户银行城市：</td>
                                                <td></td>
                                            </tr>
                                            <tr class="listDetail">
                                                <td>支行名称：</td>
                                                <td></td>
                                            </tr>
                                            <tr class="listDetail">
                                                <td>开户人姓名：</td>
                                                <td></td>
                                            </tr>
                                            <tr class="listDetail">
                                                <td>银行账号：</td>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <div class="cfrBindCardBtn">
                                            <a href="javascript:;" class="btn btnSubmit" onclick="doBindCard()">提交</a>
                                            <a href="javascript:;" class="btn btnReturn" onclick="javascript:$('#myCard>div').hide();$('.bindCardInfo').show();" >返回</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- 我的银行卡信息 -->
                                <div class="tableBox myCardInfo" style="display: none;">
                                    <table class="myCardTable" id="myCardTable">
                                        <thead>
                                        <tr class="listHeader">
                                            <th>开户名</th>
                                            <th>开户行</th>
                                            <th>卡号</th>
                                            <th>绑定时间</th>
                                            <th>状态</th>
                                        </tr></thead>
                                        <tbody id="myCardBody"></tbody>
                                    </table>
                                    <div class="myCardBtn">
                                        <a href="javascript:void(0)" id="addBind" onclick="addBindCard()" class="btn bindCard">增加绑定</a>
                                        <a href="javascript:;" class="btn lockCard" onclick="doLockCard(this)">锁定银行卡</a>
                                    </div>
                                    <div class="userMsg fontColorGray">
                                        <p>
                                            <span>1.一个账户最多只能绑定</span> <span class="fontColorRed">5</span>
                                            <span>张银行</span>
                                        </p>
                                        <p>
                                            <span>2.</span> <span class="fontColorRed">银行卡锁定</span> <span>可以增强账户安全，推荐锁定（如：账户被他人盗用后，由于锁定的限制，您账户的资金不会被他人提款）；</span>
                                        </p>
                                        <p>
                                            <span>3. 银行卡锁定后，</span> <span class="fontColorRed">不能增加新银行卡绑定，自身不能解绑和解锁银行卡，需联系您的上级申请解锁。</span>
                                        </p>
                                    </div>
                                </div>
                                <!-- 历史银行卡验证 -->
                                <div class="historyCardVerify" style="display: none;">
                                    <h2 class="headerTitle">增加绑定-历史银行卡验证</h2>
                                    <form class="verifyCard" id="verifyCard">
                                        <div>
                                            <span class="labelTitle">选择验证银行卡：</span>
                                            <select class="labelCond selectCond" name="id" id="selectHistoryCard"></select>
                                        </div>
                                        <div>
                                            <span class="labelTitle">开户人姓名：</span>
                                            <input type="text" class="labelCond" name="oldNiceName" placeholder="请输入旧的银行卡开户人姓名" />
                                        </div>
                                        <div>
                                            <span class="labelTitle">银行账号：</span>
                                            <input type="text" class="labelCond" name="oldCard" placeholder="请输入旧的银行卡号" maxLength=19 onkeyup="inputNum(this)" />
                                        </div>
                                        <div>
                                            <span class="labelTitle">资金密码：</span>
                                            <input type="password" class="labelCond" id="safeWord" name="safeWord" placeholder="请输入您的资金密码" />
                                        </div>
                                        <div>
                                            <span class="labelTitle"></span>
                                            <a href="javascript:;" class="btn nextBtn" onclick="checkOldCard()" readonly>下一步</a>
                                            <a href="javascript:;" class="btn btnReturn" onclick="$('#myCard>div').hide();$('.myCardInfo').show();" readonly>返回</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- 修改登录密码 -->
                            <form class="modLoginPwd" id="modLoginPwd" style="display: none;">
                                <div>
                                    <span class="labelTitle">旧登录密码：</span>
                                    <label class="labelInput">
                                        <input type="password" class="labelCond" name="oldpass" id="oldLoginPass" placeholder="请输入您的旧密码" onblur="validate.oldPsw.check()" />
                                    </label>
                                    <span class="errorWarn"></span>
                                </div>
                                <div>
                                    <span class="labelTitle">新登录密码：</span>
                                    <label class="labelInput">
                                        <input type="password" class="labelCond" id="newLoginPass" maxLength=16 placeholder="请输入8-16位数字、字母" onblur="validate.newPsw.check(true)" />
                                    </label>
                                    <span class="errorWarn"></span>
                                </div>
                                <div>
                                    <span class="labelTitle">确认新登录密码：</span>
                                    <label class="labelInput">
                                        <input type="password" class="labelCond" name="newpass" id="confirmLoginPass" maxLength=16 placeholder="请再次输入登录密码" onblur="validate.newPswConfirm.check()" />
                                    </label>
                                    <span class="errorWarn"></span>
                                </div>
                                <div>
                                    <span class="labelTitle"></span>
                                    <a href="javascript:;" class="btn" id="changePassWord">修改</a>
                                </div>
                            </form>
                            <!-- 修改资金密码 -->
                            <form class="modAccountPwd" id="modAccountPwd" style="display: none;">
                                <div>
                                    <span class="labelTitle">旧资金密码：</span>
                                    <label class="labelInput">
                                        <input type="password" class="labelCond" name="oldpass" id="oldSafeWord" placeholder="请输入您旧的资金密码" style="width:200px;" onblur="validate.oldSafePsw.check()" />
                                    </label>
                                    <span class="errorWarn"></span>
                                </div>
                                <div>
                                    <span class="labelTitle">新资金密码：</span>
                                    <label class="labelInput">
                                        <input type="password" class="labelCond" id="newSafePass" placeholder="请输入8-16位数字、字母" style="width:200px;" maxLength=16 onblur="validate.newSafePsw.check('newSafePass',true)" />
                                    </label>
                                    <span class="errorWarn"></span>
                                </div>
                                <div>
                                    <span class="labelTitle">确认新资金密码：</span>
                                    <label class="labelInput">
                                        <input type="password" class="labelCond" name="newpass" id="confirmSafePass" placeholder="请再次输入资金密码" style="width:200px;" maxLength=16 onblur="validate.newSafePswConfirm.check()" />
                                    </label>
                                    <span class="errorWarn"></span>
                                </div>
                                <div>
                                    <span class="labelTitle"></span>
                                    <a href="javascript:;" class="btn" id="changeSafeWord">修改</a>
                                </div>
                            </form>
                            <!-- 找回资金密码 -->
                            <div class="safeQA" id="findSafeByQa" style="display: none;">
                                <form class="safeQAForm" id="findSafeQa">
                                    <div>
                                        <span class="labelTitle"><strong class="fontColorRed">*</strong>问题一：</span>
                                        <select class="labelCond selectCond" name="qsType1">
                                            <option value="1">您的出生地是哪里?</option>
                                            <option value="2">您高中的学校是?</option>
                                            <option value="3">您父亲的名字是?</option>
                                            <option value="4">您母亲的名字是?</option>
                                            <option value="5">您的兴趣爱好是什么?</option>
                                            <option value="6">您配偶的名字是?</option>
                                            <option value="7">您大学学校的名字是?</option>
                                            <option value="8">您的家乡是?</option>
                                        </select>
                                    </div>
                                    <div>
                                        <span class="labelTitle">&nbsp;&nbsp;答案：</span>
                                        <input class="labelCond" name="answer1" placeholder="请输入相关问题答案" />
                                    </div>
                                    <div>
                                        <span class="labelTitle"><strong class="fontColorRed">*</strong>问题二：</span>
                                        <select class="labelCond selectCond" name="qsType2">
                                            <option value="2">您高中的学校是?</option>
                                            <option value="1">您的出生地是哪里?</option>
                                            <option value="3">您父亲的名字是?</option>
                                            <option value="4">您母亲的名字是?</option>
                                            <option value="5">您的兴趣爱好是什么?</option>
                                            <option value="6">您配偶的名字是?</option>
                                            <option value="7">您大学学校的名字是?</option>
                                            <option value="8">您的家乡是?</option>
                                        </select>
                                    </div>
                                    <div>
                                        <span class="labelTitle">&nbsp;&nbsp;答案：</span>
                                        <input class="labelCond" name="answer2" placeholder="请输入相关问题答案" />
                                    </div>
                                    <div>
                                        <span class="labelTitle">&nbsp;&nbsp;新资金密码：</span>
                                        <label class="labelInput">
                                            <input type="password" class="labelCond" name="safePassWord" id="safePassWord" placeholder="请输入8-16位数字、字母" maxLength=16 onblur="validate.newSafePsw.check('safePassWord',true)" />
                                        </label>
                                        <span class="errorWarn"></span>
                                    </div>
                                    <div>
                                        <span class="labelTitle"></span>
                                        <a href="javascript:;" class="btn safeQASubmit" id="dofindSafeQA">保存</a>
                                    </div>
                                </form>
                                <div class="userSafeMsg">
                                    <p><span class="fontColorRed">温馨提示：</span>密保是由用户选定2个问题对应答案组成，如果您的账号资金密码忘记，您可以直接通过验证密保问题和答案，重新设置新密码。</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 消息管理 -->
                <div class="msgManageArea bigCommonBox" id="msg" style="display: none;">
                    <p class="contactBOSSBtn">

                        <a href="javascript:;" onclick="contact('up');" class="contactBOSS">联系上级</a>


                        <a href="javascript:;" onclick="contact('dw');" class="contactBOSS">联系下级</a>

                    </p>
                    <form class="searchBar userListSearch" id="messageForm" style="display: none;">
                        <input type="button" class="btn" id="messageSearch" onclick="javascript:ajaxLoad('msgTableBox','/message/messageTable', $('#messageForm').serialize(), function() {hs.pagination.refleshPages($('#pageCountMessage').val(), 'messageForm', 'messageSearch');});" value="搜索" />
                    </form>
                    <div class="tableBox" id="msgTableBox"></div>





                    <div class="pagination">
                        <div class="page-l">
                            <span>每页</span>
                            <select class="labelCond selectCond" id="pageShowNum_messageForm" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, 'messageForm', 'messageSearch');">
                                <option value="15" selected="selected" >15条</option>
                                <option value="25"  >25条</option>
                                <option value="50"  >50条</option>
                            </select>
                            <span>共<span id="pageRowSpan_messageForm">0</span>条 </span><span>第<span id="pageCurrSpan_messageForm">0</span>/</span><span id="pageTotalSpan_messageForm">0</span><span>页</span>
                        </div>
                        <div class="page-r">
                            <div class="page-home">
                                <a id="pageHome_messageForm" href="javascript:void(0);" class="homePage">第一页</a>
                            </div>
                            <div class="page-list">
                                <a id="pagePrev_messageForm" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                <input type="text" id="pageList_messageForm" class="labelCond" value="0" />
                                <a id="pageNext_messageForm" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                            </div>
                            <div class="page-end">
                                <a id="pageEnd_messageForm" href="javascript:void(0);" class="endPage">最后一页</a>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(function() {
                            $("#messageForm").prepend("<input type='hidden' id='pageSize_messageForm' name='rows' value='15' /><input type='hidden' id='pageCurr_messageForm' name='page' value='1' /><input type='hidden' id='pageBtnId_messageForm' value='messageSearch' />");
                        });
                    </script>
                </div>
            </div>
        </div>
    </div>
    <i class="shadow"></i>
    <i class="shadow2"></i>
    <i class="shadow3"></i>
</div>

<!-- 快速返点设置弹框 -->
<div id="setQueryRebateArea" style="display: none;">
    <table class="setRebateTable-t">
        <tr class="listDetail">
            <td width="100">用户信息</td>
            <td>
                <label><span>用户名：</span> <span id="rebatePerson"></span></label>
                <label><span>昵称：</span> <span id="rebateNickName"></span></label>
                <label><span>自身返点：</span> <span id="selfRebateRatio"></span></label>
            </td>
        </tr>
        <tr class="listDetail">
            <td height="60">调整返点(向上)</td>
            <td>
                <label for="#">
                    <span>设置为：</span>
                    <input type="text" class="selfRebateTotal" id="UserQuota" readonly="true" /> <span>%</span>
                </label>
            </td>
        </tr>
    </table>
    <div class="dialogBtn">
        <a href="javascript:void(0);" class="btn" onclick="doAdjustQuota()">完成</a>
    </div>
</div>

<!-- 配额分配弹框 -->
<div id="quotaDistArea" style="display: none;">
    <table id="quotaDistTable">
        <tr class="listDetail">
            <td colspan="2" class="quotaIntro">
                <ul class="quotaNum">
                    <li>
                        <span>用户名：</span> <span class="fontColorRed" id="quotaUserName"></span>
                        <span>返点：</span> <span class="fontColorRed" id="myRebateRatio"></span>
                    </li>
                </ul>
            </td>
        </tr>
    </table>
    <p id="lastOne" class="errorWarn"></p>
    <div class="dialogBtn">
        <a href="javascript:void(0);" class="btn" onclick="doSetUserQuota(this)">提交</a>
    </div>
</div>

<!-- 添加备注弹框 -->
<div id="remarkDiv" style="display: none">
    <div>
        <span class="labelTitle">用户:</span>
        <input type="text" class="labelCond" readonly="readonly" id="remarkAccount" />
    </div>
    <div class="msgSendContentDiv">
        <span class="labelTitle">备注:</span>
        <textarea class="msgSendContent" id="homeRemark" rows="3" maxlength="20"></textarea>
    </div>
    <div class="dialogBtn">
        <a href="javascript:;" onclick="updateRemark();" class="btn">提交</a>
    </div>
</div>

<!-- 下级充值弹框 -->
<div id="accountRegLower" style="display: none;">
    <form action="" id="rechargeLowerForm" method="post" onsubmit="return checkForm();">
        <div id="changeBankArea" class="changeBankArea">
            <input type="hidden" id="rechargeType" name="rechargeType" value="2" />
            <div class="changeSumBox">
                <label>
                    <span class="labelTitle">目标用户：</span>
                    <input type="text" class="labelCond" id="targetUser" name="targetUser" readonly="true" />
                </label>
            </div>
            <div class="changeSumBox">
                <label>
                    <span class="labelTitle">充值金额：</span>
                    <input type="text" class="labelCond" id="chargeamount" name="chargeamount" onkeyup="checkMoney(this)" placeholder="请输入充值金额" />
                </label>
            </div>
            <div class="changeSumBox">
                <label>
                    <span class="labelTitle">资金密码：</span>
                    <input type="password" class="labelCond" id="sourceUserSafePassword" name="sourceUserSafePassword" maxLength=16 placeholder="请输入8-16位资金密码" />
                </label>
            </div>
            <div class="changeSumBox">
                <label>
                    <span class="labelTitle">充值形式：</span>
                    <select name="rechargeStyle" id="rechargeStyle" data-id='rechargeStyle0' class="labelCond selectCond">
                        <option value="0" data-id='rechargeType0'>帐变形式（点击选择）</option>
                        <option value="1" data-id='rechargeType1'>工资（影响盈亏）</option>
                        <option value="2" data-id='rechargeType2'>团队活动（影响盈亏）</option>
                        <option value="3" data-id='rechargeType3'>周期分红（无影响）</option>
                        <option value="4" data-id='rechargeType4'>下级充值（无影响）</option>
                    </select>
                </label>
            </div>
        </div>
        <div class="purposeArea">
            <div id="rechargeStyle0">
                <p class="titleBold"><span class="labelTitle">注意事项：</span>转点功能是您给下级进行转账的操作，请严格阅读注意事项！！</p>
                <p><span class="labelTitle titleBold">工资：</span>该帐变为等同于发放工资给下级，会影响盈亏报表金额；</p>
                <p><span class="labelTitle titleBold">团队活动：</span>发放活动金额给下级，会影响盈亏报表金额；</p>
                <p><span class="labelTitle titleBold">周期分红：</span>发送分红给下级，不影响盈亏报表金额；</p>
                <p><span class="labelTitle titleBold">下级充值：</span>帮下级充值，下级会增加相对应充值金额的所需出款消费量。</p>
            </div>
            <div id="rechargeStyle1">
                <p><span class="labelTitle titleBold">工资：</span>该帐变为等同于发放工资给下级，会影响盈亏报表金额。</p>
            </div>
            <div id="rechargeStyle2">
                <p><span class="labelTitle titleBold">团队活动：</span>发放活动金额给下级，会影响盈亏报表金额。</p>
            </div>
            <div id="rechargeStyle3">
                <p><span class="labelTitle titleBold">周期分红：</span>发送分红给下级，不影响盈亏报表金额。</p>
            </div>
            <div id="rechargeStyle4">
                <p><span class="labelTitle titleBold">下级充值：</span>帮下级充值，下级会增加相对应充值金额的所需出款消费量。</p>
                <label><span class="labelTitle titleBold">备注用途：</span></label>
                <ul class="purposeRadioList">
                    <li><label><input type="radio" name="remark" value="上级代充"/>上级代充</label></li>
                    <li><label><input type="radio" name="remark" value="借款"/>借款</label></li>
                    <li><label><input type="radio" name="remark" value="红包"/>红包</label></li>
                    <li class="last"><label><input type="radio" checked="checked" name="remark" value="0"/>其他原因</label><input type="text" class="labelCond" id="remarkOtherReasion"  maxLength=5 placeholder="不得超过5个字"  /></li>
                </ul>
            </div>
        </div>
    </form>
    <div class="dialogBtn">
        <a href="javascript:void(0);" class="btn" id="accountRegLowerBtn" onclick="doDownRecharge()">提交</a>
        <span class="errorWarn" id="accountRegLowerTip"></span>
    </div>
</div>

<!-- 发送站内信弹框 -->
<div id="messageContactDiv" class="msgBox" style="display: none">
    <div>
        <span class="labelTitle">接收人:</span>
        <label class="labelInput">
            <input type="text" class="labelCond" readonly="readonly" id="messageRever" maxLength=14 placeholder="请输入接收人用户名" onblur="validate.msgUserName.check(true)" onkeyup="inputNumWord(this)" />
        </label>
        <span class="errorWarn"></span>
    </div>
    <div>
        <span class="labelTitle">标题:</span>
        <label class="labelInput">
            <input type="text" class="labelCond msgSendTitle" id="messageTitle" maxLength=20 placeholder="请输入信息标题，最多20位字符" onblur="validate.msgTitle.check()" />
        </label>
        <span class="errorWarn"></span>
    </div>
    <div class="msgSendContentDiv">
        <label><span class="labelTitle">发送内容:</span></label>
        <label class="labelInput">
            <textarea class="labelCond msgSendContent" id="messageSendContent" rows="5" maxLength=80 placeholder="请输入信息内容，最多80位字符" onblur="validate.msgContent.check()"></textarea>
        </label>
        <span class="errorWarn"></span>
    </div>
    <p class="errorWarn msgErrorWarn" id="msgErrorWarn"></p>
    <div class="dialogBtn">
        <a href="javascript:;" onclick="sendMessage();" class="btn">发送</a>
    </div>
</div>

<!-- 站内信详情弹框 -->
<div id="messageDetailDiv" style="display: none"></div>



<!-- 完善资金密码、安全信息 -->
<div class="dialogBoxContent setFundPwdSafeInfoArea" id="setSafePassword" style="display: none;">
    <div class="improveHeader">
        <div class="improveLogoBox">
            <i class="improveLogo"></i>
        </div>
        <div class="improveHeaderInfo">
            <p class="improveHeaderTitle">
                <span>尊敬的</span> <span>lnzyz1212</span> <span>,请设置您的资金密码，为您账户的资金保驾护航</span>
            </p>
            <span class="improveHeaderTips">当涉及到“充值”、“提款”、“银行卡绑定”的操作时，需要资金密码验证。以确定是您本人进行操作。</span>
        </div>
        <a href="javascript:void(0);" class="closeDialog"></a>
    </div>
    <div class="improveContent">
        <form id="improveInfoForm" class="improveInfoForm" onsubmit="return false;">
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>登录密码</span>
                <label class="labelInput">
                    <input id="passWord0" name="password" type="password" class="labelCond" maxLength=16 placeholder="请输入8-16位数字、字母" onblur="checkPsw()" />
                </label>
                <span class="labelMsg fontColorRed"></span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>确认登录密码</span>
                <label class="labelInput">
                    <input id="passWord1" type="password" class="labelCond" maxLength=16 placeholder="请再次输入登陆密码" onblur="checkPswAgain()" />
                </label>
                <span class="labelMsg fontColorRed"></span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>资金密码</span>
                <label class="labelInput">
                    <input id="improveSafePassWord" name="safePassWord" type="password" class="labelCond" maxLength=16 placeholder="请输入8-16位数字、字母" onblur="checkSafePsw()" />
                </label>
                <span id="safePassWordMsg" class="labelMsg fontColorRed"></span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>确认资金密码</span>
                <label class="labelInput">
                    <input id="safePassWordCheck" type="password" class="labelCond" maxLength=16 placeholder="请再次输入资金密码" onblur="checkSafePswAgain()" />
                </label>
                <span id="safePassWordCheckMsg" class="labelMsg fontColorRed"></span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>设置安全信息</span>
                <select id="qsType1" name="qsType1" class="labelCond selectCond" onchange="checkQuestion()">
                    <option value="1">您的出生地是哪里?</option>
                    <option value="2">您高中的学校是?</option>
                    <option value="3">您父亲的名字是?</option>
                    <option value="4">您母亲的名字是?</option>
                    <option value="5">您的兴趣爱好是什么?</option>
                    <option value="6">您配偶的名字是?</option>
                    <option value="7">您大学学校的名字是?</option>
                    <option value="8">您的家乡是?</option>
                </select> <span id="qsType1Msg" class="labelMsg">找回资金密码的重要凭证！</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>答案</span>
                <label class="labelInput">
                    <input id="answer1" name="answer1" type="text" class="labelCond" maxLength="25" placeholder="请输入1-25位字符" onblur="checkAnswer1()" />
                </label>
                <span id="answer1Msg" class="labelMsg fontColorRed"></span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>设置安全信息</span>
                <select id="qsType2" name="qsType2" class="labelCond selectCond" onchange="checkQuestion()">
                    <option value="2">您高中的学校是?</option>
                    <option value="1">您的出生地是哪里?</option>
                    <option value="3">您父亲的名字是?</option>
                    <option value="4">您母亲的名字是?</option>
                    <option value="5">您的兴趣爱好是什么?</option>
                    <option value="6">您配偶的名字是?</option>
                    <option value="7">您大学学校的名字是?</option>
                    <option value="8">您的家乡是?</option>
                </select> <span id="qsType2Msg" class="labelMsg">找回资金密码的重要凭证！</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>答案</span>
                <label class="labelInput">
                    <input id="answer2" name="answer2" type="text" class="labelCond" maxLength="25" placeholder="请输入1-25位字符，最好与答案1不同" onblur="checkAnswer2()" />
                </label>
                <span id="answer2Msg" class="labelMsg fontColorRed"></span>
            </div>
            <div class="cardNameBox">
                <p class="cardNameTip">注意：请绑定将来用于提款的银行卡姓名，<span>绑定银行卡后，提款银行卡信息必须所属于您绑定的姓名</span>，否则无法进行出款！举例：您绑定了"李三"这个名字，则必须绑定李三的银行卡信息，不然我们是无法出款到账的。</p>
                <div class="labelDiv">
                    <span class="labelTitle"><strong class="fontColorRed">*</strong>提款银行卡姓名</span>
                    <label class="labelInput">
                        <input id="cardName" name="cardName" type="text" class="labelCond" placeholder="请确保姓名信息真实有效，避免损失" onblur="checkBankUserName()" />
                    </label>
                    <span class="labelMsg fontColorRed" id="cardNameMsg"></span>
                </div>
            </div>
            <div class="formBtns">
                <span class="labelTitle"></span> <input type="submit" class="btn" value="提交" onclick="setSafePassword();" />
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="/resource/user/setSafePassword.js?ver=20171208"></script>

<script type="text/javascript" src="/resource/user/index.js?ver=20180420"></script>
<script type="text/javascript" src="/resource/user/validate.js?ver=20171208"></script>



<!-- 通用底部 -->
<div class="footer">
    <div class="mainWidth">
        <ul class="download">
            <li class="pc"><a href="/download?t=4"><i></i>pc端下载</a></li>
            <li class="ios"><a href="/download?t=2"><i></i>ios端下载</a></li>
            <li class="android"><a href="/download?t=1"><i></i>安卓客户端下载</a></li>
            <li class="auto"><a href="javascript:;"><i></i>自动投注软件</a></li>
        </ul>
        <ul class="browser">
            <li class="google"><a target="_blank" href="https://www.google.com/chrome/browser/desktop/index.html"><i></i>google浏览器</a></li>
            <li class="fox"><a target="_blank" href="https://www.mozilla.org/en-US/firefox/new/"><i></i>火狐浏览器</a></li>
            <li class="ie"><a target="_blank" href="https://support.microsoft.com/zh-cn/help/17621/internet-explorer-downloads"><i></i>IE浏览器</a></li>
        </ul>
        <ul class="footerOther">
            <li><a href="/helpCenter/aboutUsIndex">关于我们</a></li>
            <li><a href="/helpCenter/aboutUsIndex?tabId=transProtocol">交易协议</a></li>
            <li><a class="dnsLink" href="/repairDNS" target="_blank">防劫持教程</a></li>
        </ul>
        <p>@金牌娱乐  版权所有 2010-2018 copyright DH·VK Interactive Network Techno Co.</p>
    </div>
</div>

</body>
</html>
