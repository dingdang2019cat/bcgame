<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017-12-26
  Time: 2:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>鼎汇·万客 - 重庆时时彩</title>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <link rel="icon" href="/res/home/images/favicon.ico"  type="image/x-icon" />
    <link rel="stylesheet" href="/resource/reset.css?ver=20171208"/>
    <link rel="stylesheet" href="/resource/wk-common.css?ver=20171208"/>
    <script type="text/javascript" src="/resource/jquery-1.11.0.min.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/jquery.timer.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/layer.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/jquery.cookie.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/spinner.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/audio/audio5.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/base.js?ver=20171208"></script>


    <link rel="stylesheet" href="/resource/wk-lottery.css?ver=20171208"/>
    <link rel="stylesheet" href="/resource/theme-black.css?ver=20171208"/>
    <script type="text/javascript" src="/resource/math.extends.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/lotts/play.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/lotts/play_ssc.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/lotts/fire.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/lotts/lottery.js?ver=20171208"></script>
    <script type="text/javascript" src="/resource/ajaxfileupload.js?ver=20171208"></script>
    <script type="text/javascript">
        var hs = hs || {};
        hs.lottery = function() {};
        hs.lottery.betInOpen = false;
        hs.lottery.betInCount = 3;
        hs.lottery.betInAmountMix = 0.10;
        hs.lottery.betInAmountMax = 1000.00;
        hs.lottery.gameSecondMax =  25;
        hs.lottery.k3 = false;
        var account ="${username}";
    </script>
    <style>
        body {
            background: url('/images/home/bg.jpg') center top no-repeat;
            background-size: 100% 100%;
        }
    </style>

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
                    <a href="/lotts/sj1fc/index" class="asj1fcIcon" title="鼎汇一分彩"></a>
                    <a href="/lotts/sj_mmc/index" class="ammcIcon" title="鼎汇40秒"></a>
                    <a href="/lotts/tiger/index" class="atigerIcon" title="鼎汇秒秒彩"></a>
                </div>
                <div class="lotteryList" id="lotteryList">

                    <div class="lottDetail">
                        <i class="lotteryTitle title_ssc" title="时时彩"></i>
                        <div class="lotteryDetdailList">

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

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/ffpk10/index" class="lottplayExplain">分分PK10</a></li>

                                <li><a href="/lotts/f3pk10/index" class="lottplayExplain">3分PK10</a></li>

                                <li><a href="/lotts/f5pk10/index" class="lottplayExplain">5分PK10</a></li>

                            </ul>

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

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/f1_11x5/index" class="lottplayExplain">一分11选5</a></li>

                                <li><a href="/lotts/f3_11x5/index" class="lottplayExplain">三分11选5</a></li>

                            </ul>

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/ah11x5/index" class="lottplayExplain">安徽11选5</a></li>

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
        <a href="/activity/index" class="activityIcon"><i></i>活动中心</a>
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
        <label class="outstandingTopBox">
            <a href="javascript:;" class="outstandingIcon"></a>
            <div class="outstandingNav">
                <a href="/recharge/rechargeOutstanding">催充值未到账</a>
                <a href="/deposit/depositOutstanding">催提现未到账</a>
            </div>
        </label>
        <div class="headerR">
            <a href="https://kf1.learnsaas.com/chat/chatClient/chatbox.jsp?companyID=814048&configID=62880&jid=3635228849&s=1" class="customerService" target="_blank"><i></i>联系客服</a>
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

<div class="main" id="userRatio" data-ratio="12.5000">
    <input type="hidden" id="theme" value="theme-black" data-ratio="true" data-lottery="false"/>

    <!--彩种头部-->
    <div class="lotteryHeader">
        <div class="mainWidth">
            <!--彩种Logo-->
            <div class="lotteryLogo">
                <img src="/resource/lottTypes/cz_cqssc-theme-black.png" class="betsType logocqssc" />
                <!--<span class="betsType">重庆时时彩</span>
                    <img src="/res/home/images/lotteryLogo-ssc.png" class="betsType" />
                    <img src="/res/home/images/lotteryLogo-115.png" class="betsType" style="display: none;" />-->
                <!--<p class="currLottNumBox">-->
                <!--<span>当前已开</span>-->
                <!--<span class="openCount" id="openCount">23</span>-->
                <!--<span>/</span>-->
                <!--<span id="allCount">120</span>-->
                <!--<span>期</span>-->
                <!--</p>-->
            </div>

            <!--开奖倒计时-->
            <div class="countDownBox">
                <p class="countDownTitle">
                    <span>第</span> <span class="fontColorTheme" id="saleSeasonId">20171226-024</span> <span>期 剩余投注时间</span>
                </p>
                <div class="countDown" id="saleAllSecond" data-second="${saleAllSecond}">
                    <label class="hour"> <a href="javascript:;" id="saleHour">00</a> <span class="tips">时</span></label>
                    <label class="minute"> <a href="javascript:;" id="saleMintue">00</a> <span class="tips">分</span></label>
                    <label class="second"> <a href="javascript:;" id="saleSecond">00</a> <span class="tips">秒</span></label>
                </div>
                <div class="currLottNumBox">
                    <label for="#" class="currLottNum">
                        <span>共</span>
                        <span class="openCount" id="allCount">${allCount}</span>
                        <span>期,已开</span>
                        <span class="openCount" id="openCount">${openCount}</span>
                        <span>期,剩余</span>
                        <span class="openCount" id="remainCount">${remainCount}</span>
                        <span>期</span>
                    </label>
                    <label for="#" class="audioCountBox">
                        <span>声音:</span>
                        <a href="javascript:;" class="audioCount" id="audioCount"></a>
                    </label>
                </div>
            </div>

            <!--开奖号码-->
            <div class="lotteryNumArea">
                <p id="maxPlan" data-plan="200">
                    <span>第</span> <span class="fontColorTheme" id="openSeasonId">${openSeasonId}</span> <span>期 开奖结果</span>
                </p>
                <!--<a href="trend" class="lotteryTrend" target="_blank">开奖走势</a>-->
                <div class="lotteryNumBox">
                    <div class="lotteryNumList">
                        <!---新开奖号码动画-->
                        <ul class="lotteryNum ssc" id="openNums" data-num="0,1,2,3,4,5,6,7,8,9">

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum0"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum1"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum2"></span>
                                </p>

                                <p class="active">
                                    <span class="bigNum3"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum4"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum5"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum6"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum7"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum8"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum9"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum0"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum1"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum2"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum3"></span>
                                </p>

                                <p class="active">
                                    <span class="bigNum4"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum5"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum6"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum7"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum8"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum9"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum0"></span>
                                </p>

                                <p class="active">
                                    <span class="bigNum1"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum2"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum3"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum4"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum5"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum6"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum7"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum8"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum9"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="active">
                                    <span class="bigNum0"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum1"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum2"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum3"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum4"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum5"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum6"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum7"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum8"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum9"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="active">
                                    <span class="bigNum0"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum1"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum2"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum3"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum4"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum5"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum6"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum7"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum8"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum9"></span>
                                </p>

                            </li>

                        </ul>
                    </div>
                </div>
                <p class="lottTypeTips overflowEllipsis" id="openNumStatus">

                    <span class="lottTypeInfo">前三：<span style='color: green'>组六</span></span>

                    <span class="lottTypeInfo">中三：<span style='color: green'>组六</span></span>

                    <span class="lottTypeInfo">后三：<span style='color: purple'>组三</span></span>

                </p>
            </div>
        </div>
    </div>

    <!--彩种内容-->
    <div class="lotteryContent">
        <!--彩种选号区域-->
        <div class="mainWidth">
            <div class="lottChangeNumArea">
                <div class="lottLeft">
                    <!--彩种导航-->
                    <div class="lottNavBox">
                        <ul class="lottNav">


                            <li class="lottNavDetail" data-show="#group_0" data-hide=".lottTypeBox"><a href="javascript:;">五星</a></li>



                            <li class="lottNavDetail" data-show="#group_1" data-hide=".lottTypeBox"><a href="javascript:;">前四</a></li>



                            <li class="lottNavDetail" data-show="#group_2" data-hide=".lottTypeBox"><a href="javascript:;">后四</a></li>



                            <li class="lottNavDetail" data-show="#group_3" data-hide=".lottTypeBox"><a href="javascript:;">前三</a></li>



                            <li class="lottNavDetail" data-show="#group_4" data-hide=".lottTypeBox"><a href="javascript:;">中三</a></li>



                            <li class="lottNavDetail" data-show="#group_5" data-hide=".lottTypeBox"><a href="javascript:;">后三</a></li>



                            <li class="lottNavDetail" data-show="#group_6" data-hide=".lottTypeBox"><a href="javascript:;">前二</a></li>



                            <li class="lottNavDetail" data-show="#group_7" data-hide=".lottTypeBox"><a href="javascript:;">后二</a></li>



                            <li class="lottNavDetail" data-show="#group_8" data-hide=".lottTypeBox"><a href="javascript:;">定位胆</a></li>



                            <li class="lottNavDetail" data-show="#group_9" data-hide=".lottTypeBox"><a href="javascript:;">任选</a></li>



                            <li class="lottNavDetail" data-show="#group_10" data-hide=".lottTypeBox"><a href="javascript:;">龙虎</a></li>



                            <li class="lottNavDetail" data-show="#group_11" data-hide=".lottTypeBox"><a href="javascript:;">微信玩法</a></li>


                        </ul>
                    </div>
                    <!-- 彩种组 -->


                    <div class="lottTypeBox" id="group_0" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">直选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5" data-remark="每位至少选择一个号码，竞猜开奖号码的全部五位，号码和位置都对应即中奖"
                                    data-example="投注：23456 开奖：23456" data-title="五星复式" data-ratio="0.00" data-MaxBonus="195000.00" data-bonus="170000.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_single" data-remark="每位至少选择一个号码，竞猜开奖号码的全部五位，号码和位置都对应即中奖"
                                    data-example="投注：23456 开奖：23456" data-title="五星单式" data-ratio="0.00" data-MaxBonus="195000.00" data-bonus="170000.00"><a href="javascript:;">单式</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">组选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_group5" data-remark="至少选择1个四重号码和1个单号号码组成一注，竞猜开奖号码的全部五位，号码一致顺序不限即中奖"
                                    data-example="投注：08888（8为四重号，0为单号） 开奖：08888（不限顺序）" data-title="五星组选5" data-ratio="0.00" data-MaxBonus="39000.00" data-bonus="34000.00"><a href="javascript:;">组选5</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_group10" data-remark="至少选择1个三重号码和1个二重号码组成一注，竞猜开奖号码的全部五位，号码一致顺序不限即中奖"
                                    data-example="投注：22888（2为二重号，8为三重号） 开奖：02888（不限顺序）" data-title="五星组选10" data-ratio="0.00" data-MaxBonus="19500.00" data-bonus="17000.00"><a href="javascript:;">组选10</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_group20" data-remark="至少选择1个三重号码和2个单号号码组成一注，竞猜开奖号码的全部五位，号码一致顺序不限即中奖"
                                    data-example="投注：02888（8为三重号，0·2为单号） 开奖：02888（不限顺序）" data-title="五星组选20" data-ratio="0.00" data-MaxBonus="9750.00" data-bonus="8500.00"><a href="javascript:;">组选20</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_group30" data-remark="至少选择2个二重号码和1个单号号码组成一注，竞猜开奖号码的全部五位，号码一致顺序不限即中奖"
                                    data-example="投注：00588（0·8为二重号，5为单号） 开奖：00588（不限顺序）" data-title="五星组选30" data-ratio="0.00" data-MaxBonus="6499.99" data-bonus="5666.66"><a href="javascript:;">组选30</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_group60" data-remark="至少选择1个二重号码和3个单号号码组成一注，竞猜开奖号码的全部五位，号码一致顺序不限即中奖"
                                    data-example="投注：02588（8为二重号，0·2·5为单号） 开奖：02588（不限顺序）" data-title="五星组选60" data-ratio="0.00" data-MaxBonus="3249.99" data-bonus="2833.33"><a href="javascript:;">组选60</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_group120" data-remark="至少选择五个号码投注，竞猜开奖号码的全部五位，号码一致顺序不限即中奖"
                                    data-example="投注：02568 开奖：02568（不限顺序）" data-title="五星组选120" data-ratio="0.00" data-MaxBonus="1624.99" data-bonus="1416.66"><a href="javascript:;">组选120</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">趣味</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_other1" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码中包含这个号码，包含即中奖"
                                    data-example="投注：1 开奖：xx1xx（不限顺序）" data-title="五星一帆风顺" data-ratio="0.00" data-MaxBonus="4.75" data-bonus="4.14"><a href="javascript:;">一帆风顺</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_other2" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码中包含这个号码且出现2次，即中奖"
                                    data-example="投注：8 开奖：xxx88（不限顺序）" data-title="五星好事成双" data-ratio="0.00" data-MaxBonus="23.93" data-bonus="20.86"><a href="javascript:;">好事成双</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_other3" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码中包含这个号码且出现3次，即中奖"
                                    data-example="投注：8 开奖：xx888（不限顺序）" data-title="五星三星报喜" data-ratio="0.00" data-MaxBonus="227.79" data-bonus="198.59"><a href="javascript:;">三星报喜</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_other4" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码中包含这个号码且出现4次，即中奖"
                                    data-example="投注：8 开奖：x8888（不限顺序）" data-title="五星四季发财" data-ratio="0.00" data-MaxBonus="4239.13" data-bonus="3695.65"><a href="javascript:;">四季发财</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">不定位</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_none1" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码中包含这个号码，包含即中奖"
                                    data-example="投注：1 开奖：xx1xx（不限顺序）" data-title="五星一码不定位" data-ratio="0.00" data-MaxBonus="4.75" data-bonus="4.14"><a href="javascript:;">一码不定位</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_none2" data-remark="从0-9中至少选择2个号码投注，竞猜开奖号码中包含这2个号码，包含即中奖"
                                    data-example="投注：1，2 开奖：1x2xx（不限顺序）" data-title="五星二码不定位" data-ratio="0.00" data-MaxBonus="13.28" data-bonus="11.58"><a href="javascript:;">二码不定位</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star5_none3" data-remark="从0-9中至少选择3个号码投注，竞猜开奖号码中包含这3个号码，包含即中奖"
                                    data-example="投注：1，2，3 开奖：1x2x3（不限顺序）" data-title="五星三码不定位" data-ratio="0.00" data-MaxBonus="44.83" data-bonus="39.08"><a href="javascript:;">三码不定位</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_1" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">直选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_front" data-remark="每位至少选择一个号码，竞猜开奖号码的前四位，号码和位置都对应即中奖"
                                    data-example="投注：3456* 开奖：3456* 即中奖" data-title="前四直选复式" data-ratio="0.00" data-MaxBonus="19500.00" data-bonus="17000.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_front_single" data-remark="每位至少选择一个号码，竞猜开奖号码的前四位，号码和位置都对应即中奖"
                                    data-example="投注：3456* 开奖：3456* 即中奖" data-title="前四直选单式" data-ratio="0.00" data-MaxBonus="19500.00" data-bonus="17000.00"><a href="javascript:;">单式</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">组选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_front_group4" data-remark="至少选择1个三重号码和1个单号号码，竞猜开奖号码的前四位，号码一致顺序不限即中奖"
                                    data-example="投注：2888*（8为三重号，2为单号） 开奖：2888*（不限顺序） 即中奖" data-title="前四组选4" data-ratio="0.00" data-MaxBonus="4875.00" data-bonus="4250.00"><a href="javascript:;">组选4</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_front_group6" data-remark="至少选择2个二重号码，竞猜开奖号码的前四位，号码一致顺序不限即中奖"
                                    data-example="投注：0088*（0·8为二重号） 开奖：0088*（不限顺序） 即中奖" data-title="前四组选6" data-ratio="0.00" data-MaxBonus="3249.99" data-bonus="2833.33"><a href="javascript:;">组选6</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_front_group12" data-remark="至少选择1个二重号码和2个单号号码，竞猜开奖号码的前四位，号码一致顺序不限即中奖"
                                    data-example="投注：2588*（8为二重号，2·5为单号）开奖：2588*（不限顺序） 即中奖" data-title="前四组选12" data-ratio="0.00" data-MaxBonus="1624.99" data-bonus="1416.66"><a href="javascript:;">组选12</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_front_group24" data-remark="至少选择4个号码投注，竞猜开奖号码的前4位，号码一致顺序不限即中奖"
                                    data-example="投注：2568* 开奖：2568*（不限顺序） 即中奖" data-title="前四组选24" data-ratio="0.00" data-MaxBonus="812.49" data-bonus="708.33"><a href="javascript:;">组选24</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">不定位</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_front_none1" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码前四位中包含这个号码，包含即中奖"
                                    data-example="投注：1 开奖：1xxx*（不限顺序） 即中奖" data-title="前四一码不定位" data-ratio="0.00" data-MaxBonus="5.67" data-bonus="4.94"><a href="javascript:;">一码不定位</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_front_none2" data-remark="从0-9中至少选择2个号码投注，竞猜开奖号码前四位中包含这2个号码，包含即中奖"
                                    data-example="投注：1,2 开奖：12xx*（不限顺序） 即中奖" data-title="前四二码不定位" data-ratio="0.00" data-MaxBonus="20.01" data-bonus="17.45"><a href="javascript:;">二码不定位</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_2" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">直选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_last" data-remark="每位至少选择一个号码，竞猜开奖号码的后四位，号码和位置都对应即中奖"
                                    data-example="投注：*3456 开奖：*3456 即中奖" data-title="后四直选复式" data-ratio="0.00" data-MaxBonus="19500.00" data-bonus="17000.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_last_single" data-remark="每位至少选择一个号码，竞猜开奖号码的后四位，号码和位置都对应即中奖"
                                    data-example="投注：*3456 开奖：*3456 即中奖" data-title="后四直选单式" data-ratio="0.00" data-MaxBonus="19500.00" data-bonus="17000.00"><a href="javascript:;">单式</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">组选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_last_group4" data-remark="至少选择1个三重号码和1个单号号码，竞猜开奖号码的后四位，号码一致顺序不限即中奖"
                                    data-example="投注：*2888（8为三重号，2为单号） 开奖：*2888（不限顺序） 即中奖" data-title="后四组选4" data-ratio="0.00" data-MaxBonus="4875.00" data-bonus="4250.00"><a href="javascript:;">组选4</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_last_group6" data-remark="至少选择2个二重号码，竞猜开奖号码的后四位，号码一致顺序不限即中奖"
                                    data-example="投注：*0088（0·8为二重号） 开奖：*0088（不限顺序） 即中奖" data-title="后四组选6" data-ratio="0.00" data-MaxBonus="3249.99" data-bonus="2833.33"><a href="javascript:;">组选6</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_last_group12" data-remark="至少选择1个二重号码和2个单号号码，竞猜开奖号码的后四位，号码一致顺序不限即中奖"
                                    data-example="投注：*2588（8为二重号，2·5为单号）开奖：*2588（不限顺序） 即中奖" data-title="后四组选12" data-ratio="0.00" data-MaxBonus="1624.99" data-bonus="1416.66"><a href="javascript:;">组选12</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_last_group24" data-remark="至少选择4个号码投注，竞猜开奖号码的后4位，号码一致顺序不限即中奖"
                                    data-example="投注：*2568 开奖：*2568（不限顺序） 即中奖" data-title="后四组选24" data-ratio="0.00" data-MaxBonus="812.49" data-bonus="708.33"><a href="javascript:;">组选24</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">不定位</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_last_none1" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码后四位中包含这个号码，包含即中奖"
                                    data-example="投注：1 开奖：*1xxx（不限顺序） 即中奖" data-title="后四一码不定位" data-ratio="0.00" data-MaxBonus="5.67" data-bonus="4.94"><a href="javascript:;">一码不定位</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_last_none2" data-remark="从0-9中至少选择2个号码投注，竞猜开奖号码后四位中包含这2个号码，包含即中奖"
                                    data-example="投注：1 开奖：*1xxx（不限顺序） 即中奖" data-title="后四二码不定位" data-ratio="0.00" data-MaxBonus="20.01" data-bonus="17.45"><a href="javascript:;">二码不定位</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_3" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">直选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front" data-remark="每位至少选择一个号码，竞猜开奖号码的前三位，号码和位置都对应即中奖"
                                    data-example="投注：456** 开奖：456** 即中奖" data-title="前三直选复式" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_single" data-remark="每位至少选择一个号码，竞猜开奖号码的前三位，号码和位置都对应即中奖"
                                    data-example="投注：456** 开奖：456** 即中奖" data-title="前三直选单式" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_and" data-remark="至少选择一个和值，竞猜开奖号码前三位数字之和即中奖"
                                    data-example="投注：和值1 开奖：001**,010**,100** 即中奖" data-title="前三直选和值" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_kd" data-remark="所选数值等于开奖号码的前3位最大与最小数字相减之差即为中奖"
                                    data-example="投注：跨度8 开奖：(1)前三数字08x（不限顺序）,x≠9; (2)前三数字19x（不限顺序），x≠0" data-title="前三直选跨度" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">跨度</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">组选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_group3" data-remark="从0-9中选择2个数字组成两注，所选号码与开奖号码的前三位相同，顺序不限"
                                    data-example="投注：112** 开奖：112**（不限顺序）" data-title="前三组三" data-ratio="0.00" data-MaxBonus="649.99" data-bonus="566.66"><a href="javascript:;">组三</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_group6" data-remark="从0-9中任意选择3个号码组成一注，所选号码与开奖号码的前三位相同，顺序不限"
                                    data-example="投注：123** 开奖：123**（不限顺序）" data-title="前三组六" data-ratio="0.00" data-MaxBonus="324.99" data-bonus="283.33"><a href="javascript:;">组六</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_group3_single" data-remark="从0-9中选择2个数字组成两注，所选号码与开奖号码的前三位相同，顺序不限"
                                    data-example="投注：112** 开奖：112**（不限顺序）" data-title="前三组三单式" data-ratio="0.00" data-MaxBonus="649.99" data-bonus="566.66"><a href="javascript:;">组三单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_group6_single" data-remark="从0-9中任意选择3个号码组成一注，所选号码与开奖号码的前三位相同，顺序不限"
                                    data-example="投注：123** 开奖：123**（不限顺序）" data-title="前三组六单式" data-ratio="0.00" data-MaxBonus="324.99" data-bonus="283.33"><a href="javascript:;">组六单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_group_and" data-remark="至少选择一个和值，竞猜开奖号码前三位数字之和(不含豹子号)"
                                    data-example="投注：和值6 开奖：(1) 015**（不限顺序）中组六 (2)033**（不限顺序），中组三" data-title="前三组选和值" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_group_contains" data-remark="从0-9中任意选择1个包胆号码，开奖号码的前三位中任意1位与所选包胆号码相同(不含豹子号)，即为中奖"
                                    data-example="投注：包胆3开奖：(1) 3xx**或者33x**（不限顺序）,中组三 (2)3xy**（不限顺序）,中组六   注：x≠y≠3" data-title="前三组选包胆" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">包胆</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_group36_single" data-remark="手动输入号码，3个数字为一注组六,两个数字为一注组三，所选号码与开奖号码的前三位相同，顺序不限，即为中奖"
                                    data-example="投注：(01),(123) 开奖：(1)001**（不限顺序）即中组三，(2)123**（不限顺序）即中组六" data-title="前三混合组选" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">混合组选</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">不定位</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_none1" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码前三位中包含这个号码，包含即中奖"
                                    data-example="投注：1 开奖：1xx**（不限顺序） 即中奖" data-title="前三一码不定位" data-ratio="0.00" data-MaxBonus="7.19" data-bonus="6.27"><a href="javascript:;">一码不定位</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_front_none2" data-remark="从0-9中至少选择2个号码投注，竞猜开奖号码前三位中包含这2个号码，包含即中奖"
                                    data-example="投注：1，2  开奖：12x**（不限顺序） 即中奖" data-title="前三二码不定位" data-ratio="0.00" data-MaxBonus="36.11" data-bonus="31.48"><a href="javascript:;">二码不定位</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_4" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">直选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid" data-remark="每位至少选择一个号码，竞猜开奖号码的中三位，号码和位置都对应即中奖"
                                    data-example="投注：*456* 开奖：*456* 即中奖" data-title="中三直选复式" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_single" data-remark="每位至少选择一个号码，竞猜开奖号码的中三位，号码和位置都对应即中奖"
                                    data-example="投注：*456* 开奖：*456* 即中奖" data-title="中三直选单式" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_and" data-remark="至少选择一个和值，竞猜开奖号码中三位数字之和即中奖"
                                    data-example="投注：和值1 开奖：*001*,*010*,*100* 即中奖" data-title="中三直选和值" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_kd" data-remark="所选数值等于开奖号码的中3位最大与最小数字相减之差即为中奖"
                                    data-example="投注：跨度8 开奖：(1)前三数字08x（不限顺序）,x≠9; (2)前三数字19x（不限顺序），x≠0" data-title="中三直选跨度" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">跨度</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">组选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_group3" data-remark="从0-9中选择2个数字组成两注，所选号码与开奖号码的中三位相同，顺序不限"
                                    data-example="投注：12 开奖：*112*（不限顺序）" data-title="中三组三" data-ratio="0.00" data-MaxBonus="649.99" data-bonus="566.66"><a href="javascript:;">组三</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_group6" data-remark="从0-9中任意选择3个号码组成一注，所选号码与开奖号码的中三位相同，顺序不限"
                                    data-example="投注：*123* 开奖：*123*（不限顺序）" data-title="中三组六" data-ratio="0.00" data-MaxBonus="324.99" data-bonus="283.33"><a href="javascript:;">组六</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_group3_single" data-remark="从0-9中选择2个数字组成两注，所选号码与开奖号码的中三位相同，顺序不限"
                                    data-example="投注：12 开奖：*112*（不限顺序）" data-title="中三组三单式" data-ratio="0.00" data-MaxBonus="649.99" data-bonus="566.66"><a href="javascript:;">组三单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_group6_single" data-remark="从0-9中任意选择3个号码组成一注，所选号码与开奖号码的中三位相同，顺序不限"
                                    data-example="投注：*123* 开奖：*123*（不限顺序）" data-title="中三组六单式" data-ratio="0.00" data-MaxBonus="324.99" data-bonus="283.33"><a href="javascript:;">组六单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_group_and" data-remark="至少选择一个和值，竞猜开奖号码中三位数字之和(不含豹子号)"
                                    data-example="投注：和值6 开奖：(1) *015*（不限顺序）中组六 (2)*033*（不限顺序），中组三" data-title="中三组选和值" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_group_contains" data-remark="从0-9中任意选择1个包胆号码，开奖号码的中三位中任意1位与所选包胆号码相同(不含豹子号)，即为中奖"
                                    data-example="投注：包胆3开奖：(1) *3xx*或者*33x*（不限顺序）,中组三 (2)*3xy*（不限顺序）,中组六   注：x≠y≠3" data-title="中三组选包胆" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">包胆</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_group36_single" data-remark="手动输入号码，3个数字为一注组六,2个数字为一注组三，所选号码与开奖号码的中三位相同，顺序不限，即为中奖"
                                    data-example="投注：(01),(123) 开奖：(1)*001*（不限顺序）即中组三，(2)*123*（不限顺序）即中组六" data-title="中三混合组选" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">混合组选</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">不定位</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_none1" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码中三位中包含这个号码，包含即中奖"
                                    data-example="投注：1 开奖：*1xx*（不限顺序） 即中奖" data-title="中三一码不定位" data-ratio="0.00" data-MaxBonus="7.19" data-bonus="6.27"><a href="javascript:;">一码不定位</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_mid_none2" data-remark="从0-9中至少选择2个号码投注，竞猜开奖号码中三位中包含这2个号码，包含即中奖"
                                    data-example="投注：1，2  开奖：*12x*（不限顺序） 即中奖" data-title="中三二码不定位" data-ratio="0.00" data-MaxBonus="36.11" data-bonus="31.48"><a href="javascript:;">二码不定位</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_5" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">直选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last" data-remark="每位至少选择一个号码，竞猜开奖号码的后三位，号码和位置都对应即中奖"
                                    data-example="投注：**456 开奖：**456 即中奖" data-title="后三直选复式" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_single" data-remark="每位至少选择一个号码，竞猜开奖号码的后三位，号码和位置都对应即中奖"
                                    data-example="投注：**456 开奖：**456 即中奖" data-title="后三直选单式" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_and" data-remark="至少选择一个和值，竞猜开奖号码后三位数字之和即中奖"
                                    data-example="投注：和值1 开奖：**001,**010,**100 即中奖" data-title="后三直选和值" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_kd" data-remark="所选数值等于开奖号码的后3位最大与最小数字相减之差即为中奖"
                                    data-example="投注：跨度8 开奖：(1)前三数字08x（不限顺序）,x≠9; (2)前三数字19x（不限顺序），x≠0" data-title="后三直选跨度" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">跨度</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">组选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_group3" data-remark="从0-9中选择2个数字组成两注，所选号码与开奖号码的后三位相同，顺序不限"
                                    data-example="投注：12 开奖：**112（不限顺序）" data-title="后三组三" data-ratio="0.00" data-MaxBonus="649.99" data-bonus="566.66"><a href="javascript:;">组三</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_group6" data-remark="从0-9中任意选择3个号码组成一注，所选号码与开奖号码的后三位相同，顺序不限"
                                    data-example="投注：**123 开奖：**123（不限顺序）" data-title="后三组六" data-ratio="0.00" data-MaxBonus="324.99" data-bonus="283.33"><a href="javascript:;">组六</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_group3_single" data-remark="从0-9中选择2个数字组成两注，所选号码与开奖号码的后三位相同，顺序不限"
                                    data-example="投注：12 开奖：**112（不限顺序）" data-title="后三组三单式" data-ratio="0.00" data-MaxBonus="649.99" data-bonus="566.66"><a href="javascript:;">组三单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_group6_single" data-remark="从0-9中任意选择3个号码组成一注，所选号码与开奖号码的后三位相同，顺序不限"
                                    data-example="投注：**123 开奖：**123（不限顺序）" data-title="后三组六单式" data-ratio="0.00" data-MaxBonus="324.99" data-bonus="283.33"><a href="javascript:;">组六单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_group_and" data-remark="至少选择一个和值，竞猜开奖号码后三位数字之和(不含豹子号)"
                                    data-example="投注：和值6 开奖：(1) 015**（不限顺序）中组六 (2)033**（不限顺序），中组三" data-title="后三组选和值" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_group_contains" data-remark="从0-9中任意选择1个包胆号码，开奖号码的后三位中任意1位与所选包胆号码相同(不含豹子号)，即为中奖"
                                    data-example="投注：包胆3开奖：(1) **3xx或者**33x（不限顺序）,中组三 (2)**3xy（不限顺序）,中组六   注：x≠y≠3" data-title="后三组选包胆" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">包胆</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_group36_single" data-remark="手动输入号码，3个数字为一注组六,2个数字为一注组三，所选号码与开奖号码的后三位相同，顺序不限，即为中奖"
                                    data-example="投注：(01),(123) 开奖：(1)**001（不限顺序）即中组三，(2)**123（不限顺序）即中组六" data-title="后三混合组选" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">混合组选</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">不定位</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_none1" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码后三位中包含这个号码，包含即中奖"
                                    data-example="投注：1 开奖：**1xx（不限顺序） 即中奖" data-title="后三一码不定位" data-ratio="0.00" data-MaxBonus="7.19" data-bonus="6.27"><a href="javascript:;">一码不定位</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_last_none2" data-remark="从0-9中至少选择2个号码投注，竞猜开奖号码后三位中包含这2个号码，包含即中奖"
                                    data-example="投注：1，2  开奖：**12x（不限顺序） 即中奖" data-title="后三二码不定位" data-ratio="0.00" data-MaxBonus="36.11" data-bonus="31.48"><a href="javascript:;">二码不定位</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_6" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">直选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_front" data-remark="每位至少选择一个号码，竞猜开奖号码的前二位，号码和位置都对应即中奖"
                                    data-example="投注：45*** 开奖：45*** 即中奖" data-title="前二直选复式" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_front_single" data-remark="每位至少选择一个号码，竞猜开奖号码的前二位，号码和位置都对应即中奖"
                                    data-example="投注：45*** 开奖：45*** 即中奖" data-title="前二直选单式" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_front_and" data-remark="至少选择一个和值，竞猜开奖号码前二位数字之和"
                                    data-example="投注：和值1 开奖：01***,10*** 即中奖" data-title="前二直选和值" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_front_kd" data-remark="所选数值等于开奖号码的前二位最大与最小数字相减之差"
                                    data-example="投注：跨度8 开奖：08***, 19***, 80***, 91*** 即中奖" data-title="前二直选跨度" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">跨度</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">组选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_front_group" data-remark="从0-9中选择2个数字组成一注，所选号码与开奖号码的前二位相同，顺序不限"
                                    data-example="投注：5,8 开奖：58***(不限顺序) 即中奖" data-title="前二组选复式" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_front_group_single" data-remark="从0-9中选择2个数字组成一注，所选号码与开奖号码的前二位相同，顺序不限"
                                    data-example="投注：5,8 开奖：58***(不限顺序) 即中奖" data-title="前二组选单式" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_front_group_and" data-remark="所选数值等于开奖号码的前二位数字相加之和（不含对子）"
                                    data-example="投注：和值1 开奖：10***（不限顺序） 即中奖" data-title="前二组选和值" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_front_group_contains" data-remark="从0-9中任意选择1个号码，开奖号码的前二位中任意1位包含所选的包胆号码相同（不含对子）"
                                    data-example="投注：包胆8；开奖：x8***（不限顺序，x≠8） 即中奖" data-title="前二组选包胆" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">包胆</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_7" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">直选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_last" data-remark="每位至少选择一个号码，竞猜开奖号码的后二位，号码和位置都对应即中奖"
                                    data-example="投注：***45 开奖：***45 即中奖" data-title="后二直选复式" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_last_single" data-remark="每位至少选择一个号码，竞猜开奖号码的后二位，号码和位置都对应即中奖"
                                    data-example="投注：***45 开奖：***45 即中奖" data-title="后二直选单式" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_last_and" data-remark="至少选择一个和值，竞猜开奖号码后二位数字之和"
                                    data-example="投注：和值1 开奖：***01,***10 即中奖" data-title="后二直选和值" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_last_kd" data-remark="所选数值等于开奖号码的后二位最大与最小数字相减之差"
                                    data-example="投注：跨度8 开奖：***08, ***19, ***80, ***91 即中奖" data-title="后二直选跨度" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">跨度</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">组选</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_last_group" data-remark="从0-9中选择2个数字组成一注，所选号码与开奖号码的后二位相同，顺序不限"
                                    data-example="投注：5,8 开奖：***58(不限顺序) 即中奖" data-title="后二组选复式" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_last_group_single" data-remark="从0-9中选择2个数字组成一注，所选号码与开奖号码的后二位相同，顺序不限"
                                    data-example="投注：5,8 开奖：***58(不限顺序) 即中奖" data-title="后二组选单式" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_last_group_and" data-remark="所选数值等于开奖号码的后二位数字相加之和（不含对子）"
                                    data-example="投注：和值1 开奖：***10（不限顺序） 即中奖" data-title="后二组选和值" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">和值</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_last_group_contains" data-remark="从0-9中任意选择1个号码，开奖号码的后二位中任意1位包含所选的包胆号码相同（不含对子）"
                                    data-example="投注：包胆8；开奖：***x8（不限顺序，x≠8） 即中奖" data-title="后二组选包胆" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">包胆</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_8" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">定位胆</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star1_dwd" data-remark="从万位、千位、百位、十位、个位任意位置上至少选择1个号码，选号与相同位置上的开奖号码一致"
                                    data-example="投注：1**** 开奖：1**** 即中奖" data-title="一星定位胆" data-ratio="0.00" data-MaxBonus="19.50" data-bonus="17.00"><a href="javascript:;">定位胆</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_9" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">任选二</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_any" data-remark="每位至少选择一个号码，竞猜开奖号码的任意二位，号码和位置都对应即中奖"
                                    data-example="投注：45*** 开奖：45*** 即中奖" data-title="任二直选复式" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">直选复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_any_single" data-remark="每位至少选择一个号码，竞猜开奖号码的任意二位，号码和位置都对应即中奖"
                                    data-example="投注：45*** 开奖：45*** 即中奖" data-title="任二直选单式" data-ratio="0.00" data-MaxBonus="195.00" data-bonus="170.00"><a href="javascript:;">直选单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_any_group" data-remark="从0-9中选择2个数字组成一注，所选号码与开奖号码的对应的二位相同，顺序不限"
                                    data-example="投注：5,8 开奖：58***(不限顺序) 即中奖" data-title="任二组选复式" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">组选复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star2_any_group_single" data-remark="从0-9中选择2个数字组成一注，所选号码与开奖号码的对应的二位相同，顺序不限"
                                    data-example="投注：5,8 开奖：58***(不限顺序) 即中奖" data-title="任二组选单式" data-ratio="0.00" data-MaxBonus="97.50" data-bonus="85.00"><a href="javascript:;">组选单式</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">任选三</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_any" data-remark="每位至少选择一个号码，竞猜开奖号码的对应的三位，号码和位置都对应即中奖"
                                    data-example="投注：456** 开奖：456** 即中奖" data-title="任三直选复式" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">直选复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_any_single" data-remark="每位至少选择一个号码，竞猜开奖号码的对应的三位，号码和位置都对应即中奖"
                                    data-example="投注：456** 开奖：456** 即中奖" data-title="任三直选单式" data-ratio="0.00" data-MaxBonus="1950.00" data-bonus="1700.00"><a href="javascript:;">直选单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_any_group3" data-remark="从0-9中选择2个数字组成两注，所选号码与开奖号码的对应的三位相同，顺序不限"
                                    data-example="投注：112** 开奖：112**（不限顺序）" data-title="任三组三" data-ratio="0.00" data-MaxBonus="649.99" data-bonus="566.66"><a href="javascript:;">组三</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_any_group6" data-remark="从0-9中任意选择3个号码组成一注，所选号码与开奖号码的对应的三位相同，顺序不限"
                                    data-example="投注：123** 开奖：123**（不限顺序）" data-title="任三组六" data-ratio="0.00" data-MaxBonus="324.99" data-bonus="283.33"><a href="javascript:;">组六</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star3_any_group36_single" data-remark="手动输入号码，3个数字为一注组六,两个数字为一注组三，所选号码与开奖号码的对应的三位相同，顺序不限，即为中奖"
                                    data-example="投注：(01),(123) 开奖：(1)001**（不限顺序）即中组三，(2)123**（不限顺序）即中组六" data-title="任三混合组选" data-ratio="0.00" data-MaxBonus="324.99 - 649.99" data-bonus="283.33 - 566.66"><a href="javascript:;">混合组选</a></li>


                            </ul>
                        </div>



                        <div class="lottTypeList">
                            <span class="lottTypeTitle">任选四</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_any" data-remark="每位至少选择一个号码，竞猜开奖号码的任四位，号码和位置都对应即中奖"
                                    data-example="投注：3456* 开奖：3456* 即中奖" data-title="任四直选复式" data-ratio="0.00" data-MaxBonus="19500.00" data-bonus="17000.00"><a href="javascript:;">直选复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_star4_any_single" data-remark="每位至少选择一个号码，竞猜开奖号码的任四位，号码和位置都对应即中奖"
                                    data-example="投注：3456* 开奖：3456* 即中奖" data-title="任四直选单式" data-ratio="0.00" data-MaxBonus="19500.00" data-bonus="17000.00"><a href="javascript:;">直选单式</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_10" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">龙虎和</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_side_lhh" data-remark="从对应两个位上选择一个形态组成一注，前者大于后者为“龙”，反之为“虎”，相等为“和”"
                                    data-example="万千位置投注：“龙” 开奖：21*** 即中奖" data-title="龙虎和" data-ratio="0.00" data-MaxBonus="4.32 - 19.50" data-bonus="3.77 - 17.00"><a href="javascript:;">龙虎和</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_11" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">大小单双</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_dxds" data-remark="从万位、千位、百位、十位、个位任意位置上至少选择1个形态，所选形态与相同位置上的开奖号码一致"
                                    data-example="投注：和**** 开奖：0****或5**** 即中奖" data-title="大小单双" data-ratio="0.00" data-MaxBonus="3.90 - 9.75" data-bonus="3.40 - 8.50"><a href="javascript:;">大小单双</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#ssc_side_tema" data-remark="从0-9中至少选择1个号码投注，竞猜开奖号码中包含这个号码，包含即中奖"
                                    data-example="投注：1 开奖：xx1xx（不限顺序）" data-title="特码" data-ratio="0.00" data-MaxBonus="4.75" data-bonus="4.14"><a href="javascript:;">特码</a></li>


                            </ul>
                        </div>


                    </div>



                    <!--选号区域-->
                    <div class="lottChangeNumMain">
                        <div class="lottChangeNumBox">
                            <!--选号头部-->
                            <div class="explainExample">
                                <a href="javascript:;" class="playingExplain">
                                    <i class="explainLogo"></i>
                                    <span>玩法说明</span>
                                </a>
                                <div class="tips" id="playRemark"></div>
                                <a href="javascript:;" class="changeNumExample">
                                    <i class="exampleLogo"></i>
                                    <span>选号示例</span>
                                </a>
                                <div class="tips" id="playExample"></div>
                                <label class="singleMaxBonus">
                                    <span>单注最高奖金</span>
                                    <span id="playBonus"></span>
                                    <span>元</span>
                                </label>
                            </div>







                            <!--选号列表-->

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">万位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">个位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star5_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star5_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star5_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_group5" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">单号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_group10" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">三重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">二重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_group20" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">单号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_group30" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">单号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_group60" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">单号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_group120" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_other1" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_other2" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_other3" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_other4" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_none1" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_none2" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star5_none3" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_front" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">万位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_front_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star4_front_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star4_front_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star4_front_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_front_group4" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">单号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_front_group6" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_front_group12" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">单号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_front_group24" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_front_none1" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_front_none2" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_last" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">个位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_last_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star4_last_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star4_last_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star4_last_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_last_group4" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">单号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_last_group6" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_last_group12" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">重号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">单号</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_last_group24" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_last_none1" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_last_none2" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">万位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_front_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_front_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_front_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="18" class="smallNum smallNum18"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="19" class="smallNum smallNum19"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="20" class="smallNum smallNum20"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="21" class="smallNum smallNum21"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="22" class="smallNum smallNum22"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="23" class="smallNum smallNum23"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="24" class="smallNum smallNum24"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="25" class="smallNum smallNum25"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="26" class="smallNum smallNum26"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="27" class="smallNum smallNum27"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_kd" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_group3" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_group6" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_group3_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_front_group3_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_front_group3_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_front_group3_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_group6_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_front_group6_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_front_group6_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_front_group6_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_group_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="18" class="smallNum smallNum18"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="19" class="smallNum smallNum19"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="20" class="smallNum smallNum20"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="21" class="smallNum smallNum21"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="22" class="smallNum smallNum22"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="23" class="smallNum smallNum23"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="24" class="smallNum smallNum24"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="25" class="smallNum smallNum25"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="26" class="smallNum smallNum26"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_group_contains" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="1">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_group36_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_front_group36_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_front_group36_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_front_group36_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_none1" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_front_none2" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_mid_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_mid_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_mid_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="18" class="smallNum smallNum18"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="19" class="smallNum smallNum19"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="20" class="smallNum smallNum20"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="21" class="smallNum smallNum21"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="22" class="smallNum smallNum22"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="23" class="smallNum smallNum23"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="24" class="smallNum smallNum24"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="25" class="smallNum smallNum25"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="26" class="smallNum smallNum26"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="27" class="smallNum smallNum27"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_kd" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_group3" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_group6" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_group3_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_mid_group3_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_mid_group3_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_mid_group3_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_group6_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_mid_group6_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_mid_group6_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_mid_group6_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_group_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="18" class="smallNum smallNum18"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="19" class="smallNum smallNum19"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="20" class="smallNum smallNum20"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="21" class="smallNum smallNum21"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="22" class="smallNum smallNum22"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="23" class="smallNum smallNum23"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="24" class="smallNum smallNum24"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="25" class="smallNum smallNum25"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="26" class="smallNum smallNum26"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_group_contains" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="1">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_group36_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_mid_group36_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_mid_group36_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_mid_group36_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_none1" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_mid_none2" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">个位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_last_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_last_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_last_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="18" class="smallNum smallNum18"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="19" class="smallNum smallNum19"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="20" class="smallNum smallNum20"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="21" class="smallNum smallNum21"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="22" class="smallNum smallNum22"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="23" class="smallNum smallNum23"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="24" class="smallNum smallNum24"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="25" class="smallNum smallNum25"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="26" class="smallNum smallNum26"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="27" class="smallNum smallNum27"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_kd" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_group3" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_group6" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_group3_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_last_group3_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_last_group3_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_last_group3_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_group6_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_last_group6_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_last_group6_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_last_group6_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_group_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="18" class="smallNum smallNum18"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="19" class="smallNum smallNum19"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="20" class="smallNum smallNum20"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="21" class="smallNum smallNum21"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="22" class="smallNum smallNum22"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="23" class="smallNum smallNum23"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="24" class="smallNum smallNum24"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="25" class="smallNum smallNum25"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="26" class="smallNum smallNum26"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_group_contains" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="1">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_group36_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_last_group36_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_last_group36_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_last_group36_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_none1" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_last_none2" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_front" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">万位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_front_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star2_front_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star2_front_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star2_front_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_front_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="18" class="smallNum smallNum18"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_front_kd" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_front_group" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_front_group_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star2_front_group_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star2_front_group_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star2_front_group_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_front_group_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_front_group_contains" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="1">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_last" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">个位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_last_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star2_last_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star2_last_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star2_last_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_last_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="18" class="smallNum smallNum18"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_last_kd" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_last_group" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_last_group_single" data-anySelect="">




                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star2_last_group_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star2_last_group_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star2_last_group_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_last_group_and" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_last_group_contains" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="1">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star1_dwd" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">万位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">个位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_any" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">万位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">个位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_any_single" data-anySelect="2">




                                <input class="anySelect" type="checkbox" checked="checked" value="万"/>万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="千"/>千&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <input class="anySelect" type="checkbox" value="百"/>百&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="十"/>十&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="个"/>个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star2_any_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star2_any_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star2_any_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_any_group" data-anySelect="2">




                                <input class="anySelect" type="checkbox" checked="checked" value="万"/>万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="千"/>千&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <input class="anySelect" type="checkbox" value="百"/>百&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="十"/>十&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="个"/>个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;








                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star2_any_group_single" data-anySelect="2">




                                <input class="anySelect" type="checkbox" checked="checked" value="万"/>万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="千"/>千&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <input class="anySelect" type="checkbox" value="百"/>百&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="十"/>十&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="个"/>个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star2_any_group_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star2_any_group_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star2_any_group_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_any" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">万位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">个位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_any_single" data-anySelect="3">




                                <input class="anySelect" type="checkbox" checked="checked" value="万"/>万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="千"/>千&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="百"/>百&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <input class="anySelect" type="checkbox" value="十"/>十&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="个"/>个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_any_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_any_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_any_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_any_group3" data-anySelect="3">




                                <input class="anySelect" type="checkbox" checked="checked" value="万"/>万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="千"/>千&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="百"/>百&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <input class="anySelect" type="checkbox" value="十"/>十&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="个"/>个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;








                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_any_group6" data-anySelect="3">




                                <input class="anySelect" type="checkbox" checked="checked" value="万"/>万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="千"/>千&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="百"/>百&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <input class="anySelect" type="checkbox" value="十"/>十&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="个"/>个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;








                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star3_any_group36_single" data-anySelect="3">




                                <input class="anySelect" type="checkbox" checked="checked" value="万"/>万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="千"/>千&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="百"/>百&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <input class="anySelect" type="checkbox" value="十"/>十&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" value="个"/>个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star3_any_group36_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star3_any_group36_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star3_any_group36_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_any" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">万位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">个位</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_star4_any_single" data-anySelect="4">




                                <input class="anySelect" type="checkbox" checked="checked" value="万"/>万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="千"/>千&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="百"/>百&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;






                                <input class="anySelect" type="checkbox" checked="checked" value="十"/>十&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <input class="anySelect" type="checkbox" value="个"/>个&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;







                                <!-- 单式 -->
                                <div class="changeNumSingle">
                                    <div class="importBetList">
                                        <a href="javascript:;" class="btn uploadFile">导入注单</a>
                                    </div>
                                    <div class="singleNumBox">
                                        <textarea class="singleNum"></textarea>
                                        <div class="singleMsg">
                                            <p>说明：</p>
                                            <p>1.号码无需分割。</p>
                                            <p>2.每一注号码之间的间隔符支持回车 空格[ ] 逗号[ , ] 分号[ ; ]</p>
                                            <p>3.文件格式必须是.txt格式</p>
                                            <p>4. 文件较大时会导致上传时间较长，请耐心等待！</p>
                                            <p>5.导入文本内容后将覆盖文本框中现有的内容。</p>
                                        </div>
                                    </div>
                                    <div class="singleBtns">
                                        <a href="javascript:;" class="btn errBtn" data-playId="#ssc_star4_any_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#ssc_star4_any_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#ssc_star4_any_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_side_lhh" data-anySelect="">





                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">万千</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">万百</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">万十</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">万个</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">千百</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">千十</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">千个</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">百十</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">百个</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail changeNumDouble">
                                    <div class="changeNum">
                                        <span class="detailTitle">十个</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_dxds" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">万</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大单" class="smallNum smallNum-dd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小单" class="smallNum smallNum-xd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大双" class="smallNum smallNum-ds"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小双" class="smallNum smallNum-xs"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">千</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大单" class="smallNum smallNum-dd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小单" class="smallNum smallNum-xd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大双" class="smallNum smallNum-ds"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小双" class="smallNum smallNum-xs"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">百</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大单" class="smallNum smallNum-dd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小单" class="smallNum smallNum-xd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大双" class="smallNum smallNum-ds"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小双" class="smallNum smallNum-xs"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">十</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大单" class="smallNum smallNum-dd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小单" class="smallNum smallNum-xd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大双" class="smallNum smallNum-ds"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小双" class="smallNum smallNum-xs"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>


                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle">个</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="和" class="smallNum smallNum-HE"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大单" class="smallNum smallNum-dd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小单" class="smallNum smallNum-xd"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="大双" class="smallNum smallNum-ds"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小双" class="smallNum smallNum-xs"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>




                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-cqssc" style="display: none;" id="ssc_side_tema" data-anySelect="">





                                <div class="changeNumDetail">
                                    <div class="changeNum">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="0" class="smallNum smallNum0"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="1" class="smallNum smallNum1"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="2" class="smallNum smallNum2"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="3" class="smallNum smallNum3"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="4" class="smallNum smallNum4"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="5" class="smallNum smallNum5"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="6" class="smallNum smallNum6"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="7" class="smallNum smallNum7"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="8" class="smallNum smallNum8"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="9" class="smallNum smallNum9"></a>


                                                <!--                                    <span class="hotspotNum"> -->




                                                <!--                                    </span> -->

                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                            <li><a href="javascript:;" class="numBtn numBtnAll">全</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnBig">大</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnSmall">小</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnOdd">单</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnEven">双</a></li>
                                            <li><a href="javascript:;" class="numBtn numBtnClear">清</a></li>

                                        </ul>
                                    </div>
                                </div>




                            </div>




                            <div id="fileDiv" style="display:none;">
                                <input type="file" name="file" id="file"/>
                            </div>
                        </div>

                        <!--确认投注-->
                        <div class="confirmBetsBox modifyBets">
                            <div class="betsInfo">
                                <label class="betsInfoTips">
                                    <span>共</span>
                                    <span class="fontColorTheme" id="betsCount">0</span>
                                    <span>注，</span>
                                    <!--<span class="fontColorTheme" id="betsPriceCount">0</span>-->
                                    <span>投注</span>
                                    <span class="fontColorTheme" id="betsAmountCount">0.0000</span>
                                    <span>元，若中奖，预计盈利</span>
                                    <span class="fontColorTheme" id="betsAmountForecast">0</span>
                                    <span>元</span>
                                </label>
                                <div class="betsAmountTypeList">
                                    <label class="amountTypeDetail">
                                        <select name="amountType" id="amountType" class="labelCond amountType">
                                            <option value="2">元</option>
                                            <option value="0.2">角</option>
                                            <option value="0.02">分</option>
                                            <option value="0.002">厘</option>
                                        </select>
                                        <!--<a href="javascript:;" class="amountType active" data-unit="2">元</a>-->
                                        <!--<a href="javascript:;" class="amountType" data-unit="0.2">角</a>-->
                                        <!--<a href="javascript:;" class="amountType" data-unit="0.02">分</a>-->
                                        <!--<a href="javascript:;" class="amountType" data-unit="0.002">厘</a>-->
                                    </label>
                                    <div class="changeMultDetail">
                                        <span>倍数</span>
                                        <!-- 可输入下拉框 -->
                                        <div class="inputSelectDiv">
                                            <a href="javascript:;" class="reduceMult" onclick="reduceMult(this)"></a>
                                            <input type="text" class="labelCond" id="betPrice" value="1" onkeyup="inputNumber(this)" />
                                            <!--<a href="javascript:;" class="inputSelectArrow" onclick="inputSelectFrame(this)"></a>-->
                                            <!--<div class="inputOptions">-->
                                            <!--<a href="javascript:;" onclick="inputSelectConfirm(this)">1</a>-->
                                            <!--<a href="javascript:;" onclick="inputSelectConfirm(this)">5</a>-->
                                            <!--<a href="javascript:;" onclick="inputSelectConfirm(this)">10</a>-->
                                            <!--<a href="javascript:;" onclick="inputSelectConfirm(this)">20</a>-->
                                            <!--</div>-->
                                            <a href="javascript:;" class="addMult" onclick="addMult(this)"></a>
                                        </div>
                                        <!--<label for="#" class="fireBox">-->
                                        <!--<canvas class="fire" id="surface"></canvas>-->
                                        <!--</label>-->
                                    </div>
                                    <div class="betsInfoTypeList">
                                        <select class="labelCond betsInfoType" id="bounsType">


                                            <option value="0">
                                                1950-0%(高奖)
                                            </option>
                                            <option value="1">
                                                1700-12.5%(高返)
                                            </option>
                                        </select>



                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="betsBtn">
                                <a href="javascript:;" class="btn allBet" id="allBet">
                                    <i class="confirmBetsIcon"></i>
                                    <span>一键梭哈</span>
                                </a>
                                <a href="javascript:;" class="btn quotaBetBtn" id="quotaBetBtn">
                                    <i class="confirmBetsIcon"></i>
                                    <span>定额投注</span>
                                </a>
                                <a href="javascript:;" class="btn appendNumBtn" id="addSelectNum">
                                    <i class="appNumIcon"></i>
                                    <span>添加号码栏</span>
                                </a>
                                <a href="javascript:;" class="btn confirmBets" id="promptlyBet">
                                    <i class="confirmBetsIcon"></i>
                                    <span>立即投注</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!--追号模块-->
                    <div class="appNumArea">
                        <!--彩种追号信息-->
                        <div class="appNumBox">
                            <table class="appNumList">
                                <thead>
                                <tr class="appNumHeader">
                                    <th width="120">玩法</th>
                                    <th>号码</th>
                                    <th width="40">模式</th>
                                    <th width="60">注</th>
                                    <th width="60">倍</th>
                                    <th width="100">金额</th>
                                    <th width="100">预计盈利</th>
                                    <th width="40" class="appNumClear fontColorTheme">清空</th>
                                </tr>
                                </thead>
                                <tbody id="selectBetPanle"></tbody>
                            </table>
                        </div>
                        <!--确认追号-->
                        <div class="confirmAppNumBox modifyBets">
                            <div class="appNumInfo">
                                <label>
                                    <span>总注数：</span> <span id="appNumCount" class="fontColorTheme">0</span> <span>注</span>
                                </label>
                                <label>
                                    <span>总金额：￥</span> <span id="appNumAmount" class="fontColorTheme">0.00</span> <span>元</span>
                                </label>
                                <label class="currAmountDetail">
                                    <span>余额：</span> <span class="userBalance fontColorTheme" id="appNumUserBalance">27.3552</span> <span>元</span>
                                </label>
                            </div>
                            <div class="betsBtn">
                                <a href="javascript:;" class="btn appendNumBtn" id="appBet">
                                    <i class="appNumIcon"></i>
                                    <span>追号投注</span>
                                </a>
                                <a href="javascript:;" class="btn confirmBets" id="betConfirm">
                                    <i class="confirmBetsIcon"></i>
                                    <span>确认投注</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--最近开奖号码、中奖排行、最近投注、最近追号-->
                <div class="lottRight">
                    <div class="accountAndLottery">
                        <!--最近开奖号码-->
                        <div class="beforeLottNumBox">
                            <h3 class="beforeLottNumHeader beforeLottery">
                                <i class="beforeLottIcon"></i>
                                <span>最近开奖</span>
                                <a href="trend" class="trend" target="_blank">走势图</a>
                            </h3>
                            <table class="beforeLottNumList">
                                <thead>
                                <tr class="listHeader">
                                    <th>奖期</th>
                                    <th>号码</th>

                                </tr>
                                </thead>
                                <tbody id="openList">
                                <c:forEach var="recentOpen1" items="${recentOpen}">
                                <tr class="beforeLottNumDetail">



                                    <td class="smallFont12">${recentOpen1.seasonId}</td>
                                    <td class="fontColorTheme beforeLottNum">
                                        <c:set value="${ fn:split(recentOpen1.nums, ',') }" var="str1" />
                                        <c:forEach items="${ str1 }" var="s">
                                            <span>${s}</span>
                                        </c:forEach>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                        <!--中奖排行-->
                        <div class="beforeLottNumBox">
                            <h3 class="beforeLottNumHeader rewardListHead">
                                <i class="lotteryListIcon"></i>
                                <span>中奖播报</span>
                            </h3>
                            <div class="lotteryListReport">
                                <table class="beforeLottNumList" id="rewardList">
                                    <c:forEach var="recentWin1" items="${recentWin}">
                                        <tr class="beforeLottNumDetail">
                                            <td> </td>
                                            <td width="30%" class="lotteryListImg">

                                                ${recentWin1.lotName}
                                            </td>
                                            <td width="30%">${recentWin1.account}</td>
                                            <td width="40%">
                                                <span class="fontColorRed">${recentWin1.winMoney}</span>
                                                <span>元</span>
                                            </td>
                                        </tr>
                                    </c:forEach>


                                </table>
                            </div>
                        </div>
                        <!--最近投注、最近追号-->
                        <div class="beforeLottNumBox">
                            <h3 class="beforeLottNumHeader accountLottInfo">
                                <a href="javascript:;" class="lottInfoNavDetail active" data-show="#betRecord">最近投注</a>
                                <a href="javascript:;" class="lottInfoNavDetail" data-show="#traceRecord">最近追号</a>
                            </h3>
                            <!-- 最近投注 -->
                            <table class="beforeLottNumList" id="betRecord">
                                <thead>
                                <tr class="listHeader">
                                    <th>彩种</th>
                                    <th>玩法</th>
                                    <th>投注金额</th>
                                    <th>盈亏</th>
                                </tr>
                                </thead>
                                <tbody id="betTable">
                                <c:forEach var="recentBet1" items="${recentBet}">
                                <tr class="beforeLottNumDetail" onclick="showGeneralDetailArea('${recentBet1.orderId}', 0, 1)">
                                    <td class="betListLottName overflowEllipsis" title="${recentBet1.lotName}">${recentBet1.lotName}</td>
                                    <td class="betListPlayName overflowEllipsis" title="${recentBet1.playName}">${recentBet1.playName}</td>
                                    <td>￥${recentBet1.buyMoney}</td>

                                    <td class="fontColorRed">${recentBet1.winMoney}</td>

                                </tr>
                                </c:forEach>


                                </tbody>
                            </table>
                            <!-- 最近追号 -->
                            <table class="beforeLottNumList" id="traceRecord" style="display:none;">
                                <thead>
                                <tr class="listHeader">
                                    <th width="100">开始期号</th>
                                    <th width="60">状态</th>
                                    <th width="100">总投注</th>
                                    <th width="100">盈亏</th>
                                </tr>
                                </thead>
                                <tbody id="traceTable">
                                <c:forEach var="recentTrace1" items="${recentTrace}">
                                <tr class="beforeLottNumDetail" onclick="showTraceSummary('${recentTrace1.id}')">
                                    <td>${recentTrace1.startSeason}</td>
                                    <td>${recentTrace1.status}</td>
                                    <td class="fontColorTheme">${recentTrace1.finishTraceAmount}</td>


                                    <td class="fontColorRed">${recentTrace1.winAmount}</td>

                                </tr>
                                </c:forEach>


                                </tbody>
                            </table>
                        </div>
                        <!--查看完整走势-->
                        <!--<p class="fullTrendBox">-->
                        <!--<a href="trend" class="fullTrend textUnderline" target="_blank">查看完整走势</a>-->
                        <!--</p>-->
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="dialogBoxContent" id="msgBox" style="display: none; width:400px;">
    <p class="dialogTitle">
        <span>温馨提示</span> <a href="javascript:;" class="closeDialog"></a>
    </p>
    <div class="tableBox">
        <div class="msg" id="msgContent"></div>
        <div class="dialogBtn">
            <a href="javascript:;" class="btn closeBtn">确认</a>
        </div>
    </div>
</div>
<div class="layui-layer-content" id="traceBox" style="display: none;">
    <p class="lottTipLayerTitle">追号设置</p>
    <div class="layerBox">
        <ul class="appNumNavList">
            <li><a href="javascript:;" class="appNumNav active" data-show="#trace1" data-hide=".appendBox">同倍追号</a></li>
            <li><a href="javascript:;" class="appNumNav" data-show="#trace2" data-hide=".appendBox">利润率追号</a></li>
            <li><a href="javascript:;" class="appNumNav" data-show="#trace3" data-hide=".appendBox">翻倍追号</a></li>
        </ul>
        <div class="sameMultAppNumBox">
            <!-- 同倍追号 -->
            <div class="appendBox" id="trace1" >
                <div class="createAppNumBar">
                    <span>连续追：</span>
                    <ul class="appendIssue">
                        <li><a href="javascript:;" data-num="5" class="active">5期</a></li>
                        <li><a href="javascript:;" data-num="10">10期</a></li>
                        <li><a href="javascript:;" data-num="15">15期</a></li>
                        <li><a href="javascript:;" data-num="20">20期</a></li>
                    </ul>
                    <label for="#">
                        <span>已选：</span>
                        <input type="text" class="labelCond selectedIssue" value="5" id="traceNum1" />
                        <span>期</span>
                    </label>
                    <label for="#">
                        <span>倍数：</span>
                        <!-- 可输入下拉框 -->
                        <div class="inputSelectDiv">
                            <!--<a href="javascript:;" class="reduceMult" onclick="reduceMult(this)"></a>-->
                            <input type="text" class="labelCond fontColorCyan" id="tracePrice1" value="1"/>
                            <!--<a href="javascript:;" class="inputSelectArrow" onclick="inputSelectFrame(this)"></a>-->
                            <!--<div class="inputOptions fontColorCyan">-->
                            <!--<a href="javascript:;" onclick="inputSelectConfirm(this)">1</a>-->
                            <!--<a href="javascript:;" onclick="inputSelectConfirm(this)">5</a>-->
                            <!--<a href="javascript:;" onclick="inputSelectConfirm(this)">10</a>-->
                            <!--<a href="javascript:;" onclick="inputSelectConfirm(this)">20</a>-->
                            <!--</div>-->
                            <!--<a href="javascript:;" class="addMult" onclick="addMult(this)"></a>-->
                        </div>
                        <span>倍</span>
                    </label>
                    <a href="javascript:;" class="btn createAppNum" id="traceCreate1">生成追号计划</a>
                </div>
                <div class="cfmAppNumTableBox">
                    <table class="cfmAppNumTable">
                        <thead>
                        <tr class="listHeader">
                            <th>序号</th>
                            <th style="text-align: left;"><input type="checkbox" class="checkAll" data-group="seasonId" checked /> <span>追号期次</span></th>
                            <th>倍数</th>
                            <th>金额</th>
                            <th>预计开奖时间</th>
                        </tr>
                        </thead>
                        <tbody class="traceList"></tbody>
                    </table>
                </div>
            </div>


            <!-- 利润率追号-->
            <div id="trace2" class="appendBox" style="display: none;">
                <div class="createAppNumBar">
                    <label for="#"> <span>最低收益率：</span> <input type="text" id="traceBate" class="labelCond selectedIssue" value="10" /> <span>%</span></label>
                    <label for="#"> <span>追号期数：</span> <input type="text" class="labelCond selectedIssue" value="10" id="traceNum2" /> </label>
                    <a href="javascript:;" class="btn createAppNum" id="traceCreate2">生成追号计划</a> <span class="fontColorRed appNumWarn">注意：利润率计算使用当前用户最大奖计算</span>
                </div>
                <div class="cfmAppNumTableBox">
                    <table class="cfmAppNumTable">
                        <thead>
                        <tr class="listHeader">
                            <th>序号</th>
                            <th style="text-align: left;"><input type="checkbox" class="checkAll" data-group="seasonId" checked /> <span>追号期次</span></th>
                            <th>倍数</th>
                            <th>金额</th>
                            <th>奖金</th>
                            <th>预期盈利金额</th>
                            <th>预期盈利率</th>
                        </tr>
                        </thead>
                        <tbody class="traceList"></tbody>
                    </table>
                </div>
            </div>

            <!-- 翻倍追号-->
            <div id="trace3" class="appendBox" style="display: none;">
                <div class="createAppNumBar">
                    <label for="#"> <span>起始倍数：</span> <input type="text" class="labelCond selectedIssue" value="1" id="traceBeginMul3" /></label>
                    <label for="#"> <span>隔</span> <input type="text" class="labelCond selectedIssue" value="1" id="traceMidSeason3" /> <span>期</span></label>
                    <label for="#"> <span>倍X</span> <input type="text" class="labelCond selectedIssue" value="2" id="traceMul3" /></label>
                    <label for="#"> <span>追号期数：</span> <input type="text" class="labelCond selectedIssue" value="10" id="traceNum3" /></label>
                    <a href="javascript:;" class="btn createAppNum" id="traceCreate3">生成追号计划</a>
                </div>
                <div class="cfmAppNumTableBox">
                    <table class="cfmAppNumTable">
                        <thead>
                        <tr class="listHeader">
                            <th>序号</th>
                            <th style="text-align: left;"><input type="checkbox" class="checkAll" data-group="seasonId" checked /> <span>追号期次</span></th>
                            <th>倍数</th>
                            <th>金额</th>
                            <th>预计开奖时间</th>
                        </tr>
                        </thead>
                        <tbody class="traceList"></tbody>
                    </table>
                </div>
            </div>
            <div class="cfmAppNumInfo">
                <div class="cfmAppNumInfoDetail">
                    <span id="traceAllNum">0</span> <span class="fontColorGray">期数</span>
                </div>
                <div class="cfmAppNumInfoDetail">
                    <span id="traceAllCount">0</span> <span class="fontColorGray">注数</span>
                </div>
                <div class="cfmAppNumInfoDetail">
                    <span class="fontColorRed" id="traceAllMoney">0.00</span> <span class="fontColorGray">追号方案总金额(元)</span>
                </div>
                <div class="cfmAppNumInfoDetail">
                    <span class="userBalance">27.3552</span> <span class="fontColorGray">账户可用余额(元)</span>
                </div>
                <div class="cfmAppNumInfoDetail">
                    <span class="seasonTime">00:00:00</span> <span class="fontColorGray">本期投注截止</span>
                </div>
            </div>
            <div class="cfmAppNumBtn dialogBtn">
                <button class="btn" id="traceSubmit">确认追号投注</button>
                <label>
                    <input type="checkbox" id="traceWinStop" value="1" checked />
                    <span>中奖后停止追号</span>
                </label>
            </div>
        </div>
    </div>
</div>

<div class="layui-layer-content" id="quotaBetArea" style="display:none; width: 340px;">
    <p class="lottTipLayerTitle">请输入定额金额</p>
    <div class="layerBox quotaBetBox">
        <p>
            <input type="text" class="labelCond" id="quotaAmount" />
            <span>元</span>
            <label for="#" class="dialogBtn">
                <a href="javascript:;" class="btn" id="quotaBet">立即投注</a>
            </label>
        </p>
        <p>
            <span>若中奖，预计盈利</span>
            <span class="fontColorTheme" id="predictAmount">0</span>
            <span>元</span>
        </p>
    </div>
</div>

<!-- 投注确认 -->
<div class="layui-layer-content" id="betConfirmBox" style="display: none; width: 460px;">
    <p class="lottTipLayerTitle">温馨提示</p>
    <div class="layerBox betConfirmBox">
        <form action="" id="betConfirmForm"></form>
        <p>
            <strong>请核准您的投注信息</strong>
        </p>
        <p>
            <label><span>彩种：重庆时时彩</span></label> <label>期号：<span id="saleSeasonId1">${saleSeasonId1}</span></label>
        </p>
        <div class="betCfmDetail">
            <span class="betCfmDetailTitle">详情：</span>
            <div class="cfmBetsTableBox">
                <table class="cfmBetsTable" id="betConfirmTable"></table>
            </div>
        </div>
        <p>
            <label> <span>付款总金额：</span> <span class="fontColorRed fontBold" id="betConfirmAmount">0.0</span> <span>元</span>
            </label>
        </p>
        <p>
            <label> <span>付款账户：lnzyz1212</span>
            </label>
        </p>
        <div class="dialogBtn">
            <a href="javascript:;" class="btn" id="betSubmit">确认</a>
        </div>
    </div>
</div>

<!-- 完善用户资料 -->
<div class="dialogBoxContent userImproveInfoArea" style="display:none;">
    <div class="improveHeader">
        <div class="improveLogoBox">
            <i class="improveLogo"></i>
        </div>
        <div class="improveHeaderInfo">
            <p class="improveHeaderTitle">
                <span>亲爱的</span>
                <span>lnzyz1212</span>
                <span>,感谢您选择鼎汇·万客平台，请完善以下个人信息</span>
            </p>
            <span class="improveHeaderTips">为了让鼎汇·万客更好的给您提供服务，请修改密码并牢记，不要泄露给其他人</span>
        </div>
        <a href="javascript:;" class="closeDialog"></a>
    </div>
    <div class="improveContent">
        <form action="" class="improveInfoForm">
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>昵称</span>
                <input type="text" class="labelCond" placeholder="由字母或数字或汉字组成" />
                <span class="labelMsg">最小4位字符</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>新的登录密码</span>
                <input type="text" class="labelCond" placeholder="您当前为默认密码登录，存在隐患" />
                <span class="labelMsg fontColorRed">格式不对，请检查重新设置</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>确认登录密码</span>
                <input type="text" class="labelCond" placeholder="确认登录密码，需一致" />
                <span class="labelMsg fontColorRed">与登录密码不一致</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle">QQ</span>
                <input type="text" class="labelCond" placeholder="当您遗忘密码时方便找回密码" />
                <span class="labelMsg">（非必填项）</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle">邮箱</span>
                <input type="text" class="labelCond" placeholder="当您遗忘密码时方便找回密码" />
                <span class="labelMsg fontColorRed">邮箱格式不对，请重新输入</span>
            </div>
            <div class="formBtns">
                <span class="labelTitle"></span>
                <input type="submit" class="btn" value="提交" />
            </div>
        </form>
    </div>
</div>

<!-- 完善资金密码、安全信息 -->
<div class="dialogBoxContent setFundPwdSafeInfoArea" style="display:none;">
    <div class="improveHeader">
        <div class="improveLogoBox">
            <i class="improveLogo"></i>
        </div>
        <div class="improveHeaderInfo">
            <p class="improveHeaderTitle">
                <span>尊敬的</span>
                <span>lishao001</span>
                <span>,请设置您的资金密码，为您账户的资金保驾护航</span>
            </p>
            <span class="improveHeaderTips">当涉及到“充值”、“提款”、“银行卡绑定”的操作时，需要资金密码验证。以确定是您本人进行操作。</span>
        </div>
        <a href="javascript:;" class="closeDialog"></a>
    </div>
    <div class="improveContent">
        <form action="" class="improveInfoForm">
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>资金密码</span>
                <input type="text" class="labelCond" placeholder="不能与登录密码重复,最少8位字母或数字" />
                <span class="labelMsg fontColorRed">格式不对，请检查重新设置</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>确认资金密码</span>
                <input type="text" class="labelCond" placeholder="确认资金密码，需一致" />
                <span class="labelMsg fontColorRed">格式不对，请检查重新设置</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>设置安全信息1</span>
                <select class="labelCond">
                    <option value="0">请选择</option>
                </select>
                <span class="labelMsg">找回资金密码的重要凭证！</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>答案</span>
                <input type="text" class="labelCond" />
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>设置安全信息2</span>
                <select class="labelCond">
                    <option value="0">请选择</option>
                </select>
                <span class="labelMsg">找回资金密码的重要凭证！</span>
            </div>
            <div class="labelDiv">
                <span class="labelTitle"><strong class="fontColorRed">*</strong>答案</span>
                <input type="text" class="labelCond" />
            </div>
            <div class="formBtns">
                <span class="labelTitle"></span>
                <input type="submit" class="btn" value="提交" />
            </div>
        </form>
    </div>
</div>

<!-- 彩中彩游戏，每日提醒一次 -->
<!--<div class='dialogBoxContent awardsLottNotice' id='awardsLottNotice' style="display:none;">-->
<!--<p class='awardsLottTitle'>-->
<!--<a href='javascript:;' class='closeDialog'></a>-->
<!--</p>-->
<!--<div class="awardsNoticeContent">-->
<!--<p>尊敬的用户：</p>-->
<!--<p class="awardsNoticeInfo">您好，鼎汇·万客隆重推出“彩中彩”游戏，如果您有投注注单中奖了，将会触发“彩中彩”。彩中彩更加刺激更加激情，中奖概率随之上涨。</p>-->
<!--<p>如果您喜欢彩中彩，请选择“开启”</p>-->
<!--<p>如果您不喜欢彩中彩，请选择“关闭”</p>-->
<!--<p class="friendTips">温馨提示：投注页面有关闭和开启“彩中彩”的开关哦</p>-->
<!--</div>-->
<!--<div class="awardsLottBtn">-->
<!--<a href="javascript:;" class="btn playAwardsSwitch">激情开启</a>-->
<!--<a href="javascript:;" class="btn stopAwardsSwitch">残忍拒绝</a>-->
<!--<label>-->
<!--<input type="checkbox" class="labelCond" />-->
<!--<span>记住我的选择</span>-->
<!--</label>-->
<!--</div>-->
<!--</div>-->

<!-- 中奖弹窗 -->
<div class="awardsMsgGroup" id="awardsMsgGroup">
    <ul class="awardsLottListBox" id="awardsMsgGroupWin">
    </ul>
</div>

<ul id="winExampleHtml" style="display: none">
    <li class="awardsLottDetail" id="winExample">
        <i class="closeAwardsDialogBtn" data-id="winExample"></i>
        <span>恭喜您中奖了！</span>
        <span id="winExample-amount"></span><span>元</span>
    </li>
</ul>

<div id="betExampleHtml">
    <!-- 彩中彩游戏窗口 -->
    <div class='awardsLottDialog' id='betExample' style="display:none;">
        <embed src='/dd.mp3' autoplay='true' loop='1' style='display: none;'></embed>
        <p class='awardsLottTitle'>
            <i class="awardsLottLogo"></i>
            <label for="#" class="awardsCountDown">
                <span>0</span>
                <span>:</span>
                <span id="betExample-countDown"></span>
            </label>
            <label for="#" class="currAwardsAmount">
                <span>恭喜您中奖</span>
                <span id="betExample-amount"></span>
                <span>元</span>
            </label>
            <a href='javascript:;' class='closeAwardsLott' data-id='betExample'></a>
        </p>
        <div class='awardsLottContent' id="awardsLottGameArea-betExample">
            <div class="awardsGameArea">
                <p class="awardsGameTitle">选择我的好运金额</p>
                <div class="awardsGameContent">
                    <div class="awardsGameTypeList">
                        <div class="awardsGameType" id="awardsGameType-betExample-1">
                            <label class="gameAmountDetail">
                                <span class="gameAmount">1</span>
                                <span>元</span>
                            </label>
                            <span class="awardsBtn">开始</span>
                        </div>
                        <div class="awardsGameType" id="awardsGameType-betExample-5">
                            <label class="gameAmountDetail">
                                <span class="gameAmount">5</span>
                                <span>元</span>
                            </label>
                            <span class="awardsBtn">开始</span>
                        </div>
                        <div class="awardsGameType" id="awardsGameType-betExample-10">
                            <label class="gameAmountDetail">
                                <span class="gameAmount">10</span>
                                <span>元</span>
                            </label>
                            <span class="awardsBtn">开始</span>
                        </div>
                        <div class="awardsGameType" id="awardsGameType-betExample-half">
                            <label class="gameAmountDetail">
                                <span>押一半</span>
                            </label>
                            <span class="awardsBtn">开始</span>
                        </div>
                        <div class="awardsGameType" id="awardsGameType-betExample-all">
                            <label class="gameAmountDetail">
                                <span>全部</span>
                            </label>
                            <span class="awardsBtn">开始</span>
                        </div>
                    </div>
                    <div class="awardsGameMultBox">
                        <span class="awardsGameAmount" id="betExample-gameAmount"></span>
                        <span>元</span>
                        <span>X</span>
                        <div class="awardsGameMultDetail">
                            <div class="awardsGameMult awardsGame-l">
                                <span id="betExample-mult-l">9</span>
                            </div>
                            <div class="awardsGameMult awardsGame-c">
                                <span id="betExample-mult-c">9</span>
                            </div>
                            <div class="awardsGameMult awardsGame-r">
                                <span id="betExample-mult-r">9</span>
                            </div>
                        </div>
                        <span>倍</span>
                    </div>
                </div>
            </div>
            <div class="awardsGameArea">
                <p class="awardsGameTitle currGameTitle">本局结果</p>
                <div class="awardsGameContent">
                    <div class="awardsGameResult">
                        <label for="#">
                            <span>本轮结果</span>
                            <span class="awardsResultAmount" id="betExample-resultAmount"></span>
                            <span>元</span>
                        </label>
                        <label for="#">
                            <span>可挑战次数：</span>
                            <span class="fontColorTheme" id="betExample-gameCount"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="awardsGameArea">
                <div class="awardsLottResultDetail remainAmount">
                    <span>剩余额度</span>
                    <span class="currResultAmount" id="betExample-currResultAmount"></span><span>元</span>
                </div>
                <div class="awardsLottResultDetail" id="prizeList">
                    <a href="/game/index?tabId=betInList" class="fontColorTheme" target="_blank">中奖记录</a>
                </div>
                <div class="awardsLottResultDetail" id="gameRuleBtn">
                    <span class="fontColorTheme">游戏规则</span>
                </div>
            </div>
        </div>
        <div class='awardsLottContent awardsWarnDialog' id="awardsWarn" style="display:none;">
            <div class="awardsLottWarnBox">
                <span>温馨提示：</span>
                <div class="awardsLottWarnInfo">
                    <p>您本轮的挑战次数/余额不足</p>
                    <p>请投注鼎汇·万客彩种，中奖后将再次激活彩中彩</p>
                </div>
                <div class="awardsLottBtn">
                    <a href="javascript:;" class="btn">确定</a>
                    <span id="awardsWarnTime"></span><span>秒后自动关闭</span>
                </div>
            </div>
        </div>
        <div class="awardsGameRuleBox">
            <i class="awardsRuleBtn"></i>
            <div class="awardsGameRule" style="display:none;">
                <p>彩中彩游戏规则介绍：</p>
                <p>
                    投注彩票，中奖激活彩中彩游戏页面，可以选择“1元”“5元”“10元”“押一半”“全部”五种投注方式，中奖倍数从0.01倍-9.99倍不等。
                    举例：彩中彩投注10元，中奖倍数为9.99，则您获得10元*9.99倍=99.9元
                </p>
            </div>
        </div>
    </div>
    <!-- 彩中彩警告窗口 -->
    <!--<div class='awardsLottDialog awardsWarnDialog' id='awardsWarn' style="display:none;">-->
    <!--<p class='awardsLottTitle'>-->
    <!--<i class="awardsLottLogo"></i>-->
    <!--<a href='javascript:;' class='closeAwardsLott' data-id='awardsWarn'></a>-->
    <!--</p>-->
    <!--<div class='awardsLottContent'>-->
    <!--<div class="awardsLottWarnBox">-->
    <!--<span>温馨提示：</span>-->
    <!--<div class="awardsLottWarnInfo">-->
    <!--<p>您本轮的余额不足</p>-->
    <!--<p>请投注鼎汇·万客彩种，中奖后将再次激活彩中彩</p>-->
    <!--</div>-->
    <!--<div class="awardsLottBtn">-->
    <!--<a href="javascript:;" class="btn">确定</a>-->
    <!--<a href="javascript:;" class="btn cancel">取消</a>-->
    <!--<span>5秒后自动关闭</span>-->
    <!--</div>-->
    <!--</div>-->
    <!--</div>-->
    <!--</div>-->
    <!-- 中奖弹窗，点击参加彩中彩游戏 -->
    <!--<div class='awardsLottDialog awardsNoticeDialog' id='awardsNoticeDialog' style="display:none;">-->
    <!--<p class='awardsLottTitle'>-->
    <!--<a href='javascript:;' class='closeAwardsLott' data-id='awardsNoticeDialog'></a>-->
    <!--</p>-->
    <!--<p class="awardsNoticeTitle currAwardsNotice">-->
    <!--<span>运气爆棚，恭喜您中得：</span>-->
    <!--<span>100元</span>-->
    <!--</p>-->
    <!--<span class="playAwardsLottery"></span>-->
    <!--<p class="awardsLottTips">-->
    <!--<span>5秒后自动关闭</span>-->
    <!--<a href="javascript:;" class="btn afterAlert">下次再说</a>-->
    <!--</p>-->
    <!--</div>-->
</div>

<!-- 游戏记录详情弹框 -->
<div id="generalDetailArea" style="display:none;">
    <div class="detailHeaderBox">
        <h3 class="detailHeaderTitle" id="delLotteryName"></h3>
        <div class="headerDetail">
            <p>
                <span>期号：</span>
                <span id="delSeasonId"></span>
            </p>
            <p>
                <span>投注时间：</span>
                <span id="delCreateTime"></span>
            </p>
            <p>
                <span>投注总金额：</span>
                <span id="delAmounts"></span>
            </p>
            <p>
                <span>方案编号：</span>
                <span id="number"></span>
            </p>

        </div>
        <div class="detailNumBox">
            <span><i></i>投注内容：</span>
            <div class="detailNumTextArea" id="delContentPlan" style="OVERFLOW: auto;">
                <div id="delContent" style="word-break: break-all;"></div>
            </div>
        </div>
    </div>
    <div class="detailBody">
        <table class="detailTable overflowTable">
            <tr class="listHeader">
                <th width="120">玩法</th>
                <th width="50">注数</th>
                <th width="50">倍数</th>
                <th width="100">投注金额</th>
                <th width="50">模式</th>
                <th width="180">开奖号码</th>
                <th width="50">备注</th>
                <th width="120">状态</th>
            </tr>
            <tr class="listDetail" id="betRecond">
                <td><span id="delPlayName"></span></td>
                <td><span id="delBetCount"></span></td>
                <td><span id="delPrice"></span></td>
                <td><span class="fontColorTheme" id="delAmount"></span></td>
                <td><span id="delUnit"></span></td>
                <td><span  id="delOpenNum"></span></td>
                <td><span id="delBonusType"></span></td>
                <td><span class="fontColorTheme" id="delWin"></span></td>
            </tr>
        </table>
    </div>
    <div class="dialogBtn">
        <a href="javascript:;" class="btn closeBtn" >关闭</a>
        <span id="cancelOrder"></span>
        <a href="javascript:;" class="btn againBtn" id="reBet">再次投注</a>
    </div>
</div>
<!-- 追号详情 -->
<div id="traceSummaryList" style="display: none;">
    <div class="detailHeaderBox">
        <div class="headerDetail">
            <h3 class="detailHeader-l" id="summaryLotteryName"></h3>
            <div class="detailHeader-r">
                <p>
                    <label for="#">
                        <span>起始期号：</span>
                        <span id="summaryStartSeasonId"></span>
                    </label>
                    <label for="#">
                        <span>追号时间：</span>
                        <span id="summaryCreateTime"></span>
                    </label>
                </p>
                <p>
                    <label for="#">
                        <span>进度：</span>
                        <span id="summaryProcess"></span>
                    </label>
                    <label for="#">
                        <span>已追号金额：</span>
                        <span id="summaryFinishTraceAmount"></span>
                    </label>
                    <label for="#">
                        <span>追号方案金额：</span>
                        <span id="summaryTraceAmount">￥10.00元</span>
                    </label>
                </p>
                <p>
                    <label for="#">
                        <span>终止追号条件：</span>
                        <span id="summaryIsWinStop"></span>
                    </label>
                    <label for="#">
                        <span>已获奖金：</span>
                        <span id="summaryWinAmount"></span>
                    </label>
                    <label for="#">
                        <span>追号编号：</span>
                        <span id="summaryId"></span>
                    </label>
                </p>
            </div>
        </div>
        <div class="tableBox headerDetail">
            <h3 class="detailHeader-l">追号方案</h3>
            <div class="detailHeader-c">
                <table class="detailHeaderTable overflowTable" id="schemeListTable">
                    <thead>
                    <tr class="listHeader">
                        <th>玩法</th>
                        <th width="200">投注内容</th>
                        <th>注数</th>
                        <th>倍数</th>
                        <th>模式</th>
                    </tr>
                    </thead>
                    <tbody  id="detailHeader-c"></tbody>
                </table>
            </div>
            <!--<div class="headerBtn" id="endAppNum">-->
            <!--  <a href="javascript:;" class="btn endAppNum">终止追号</a> -->
            <!--</div>-->
        </div>
    </div>
    <div class="tableBox detailBody">
        <table class="detailTable overflowTable" id="summaryListTable">
            <thead>
            <tr class="listHeader" >
                <th width="100">期号</th>
                <th width="50">追号倍数</th>
                <th width="75">投注金额</th>
                <th width="250">当期开奖号码</th>
                <th width="75">奖金</th>
                <th width="100">状态</th>
                <th width="130">操作项</th>
            </tr>
            </thead>
            <tbody id="detailHeader-d"></tbody>
        </table>
    </div>
    <div class="dialogBtn" id="appNumIntroBtn">
        <a href="javascript:;" class="btn closeBtn" >关闭</a>
    </div>
</div>

<!-- 追号中投注详情 -->
<div id="contentDetailsArea" style="display:none;">
    <div class="detailNumTextArea" id="contentDetailsPlan" style="border:1px solid #ccc;overflow: auto;">
        <div id="contentDetails" style="word-break: break-all;"></div>
    </div>
    <!--<div class="dialogBtn">-->
    <!--<a href="javascript:;" class="btn closeBtn" >确定</a>-->
    <!--</div>-->
</div>

<!-- 左侧浮动：所有游戏 -->


<!-- 左侧浮动：所有游戏 -->
<div id="asideLeft">
    <h3>
        <span>所有游戏</span>
        <i></i>
    </h3>
    <ul class="allGameList">


        <!--
        <li class="gameDetail">
            <a href="/lotts/tiger/index">
                <span>鼎汇秒秒彩</span>
                <i class="hot">H</i>
            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/sj_mmc/index">
                <span>鼎汇40秒</span>
                <i class="hot">H</i>
            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/sj1fc/index">
                <span>鼎汇一分彩</span>
                <i class="hot">H</i>
            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/sj3fc/index">
                <span>鼎汇三分彩</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/sj5fc/index">
                <span>鼎汇五分彩</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/gppl5/index">
                <span>高频排列5</span>

            </a>
        </li>



        <li class="gameDetail">
            <a href="/lotts/tx1fc/index">
                <span>腾讯分分彩</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/jndbsc/index">
                <span>加拿大3.5</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/dj1_5/index">
                <span>东京1.5</span>

            </a>
        </li>
        -->


        <li class="gameDetail">
            <a href="/lotts/cqssc/index">
                <span>重庆时时彩</span>
                <i class="hot">H</i>
            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/xjssc/index">
                <span>新疆时时彩</span>

            </a>
        </li>





        <li class="gameDetail">
            <a href="/lotts/pk10/index">
                <span>北京赛车</span>

            </a>
        </li>


        <!--
        <li class="gameDetail">
            <a href="/lotts/ffpk10/index">
                <span>分分PK10</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/f3pk10/index">
                <span>3分PK10</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/f5pk10/index">
                <span>5分PK10</span>

            </a>
        </li>
         -->




        <li class="gameDetail">
            <a href="/lotts/jsk3/index">
                <span>江苏快3</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/shk3/index">
                <span>上海快3</span>

            </a>
        </li>




        <!--
        <li class="gameDetail">
            <a href="/lotts/f1_11x5/index">
                <span>一分11选5</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/f3_11x5/index">
                <span>三分11选5</span>

            </a>
        </li>
         -->


        <li class="gameDetail">
            <a href="/lotts/ah11x5/index">
                <span>安徽11选5</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/gd11x5/index">
                <span>广东11选5</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/sd11x5/index">
                <span>山东11选5</span>

            </a>
        </li>





        <li class="gameDetail">
            <a href="/lotts/pl3/index">
                <span>排列三</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/pl5/index">
                <span>排列5</span>

            </a>
        </li>

        <li class="gameDetail">
            <a href="/lotts/3d/index">
                <span>福彩3D</span>
                <i class="hot">H</i>
            </a>
        </li>



    </ul>
</div>



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
        <p>@鼎汇·万客  版权所有 2010-2018 copyright DH·VK Interactive Network Techno Co.</p>
    </div>
</div>

</body>
</html>
