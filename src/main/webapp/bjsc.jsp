

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>金牌娱乐 - 首页</title>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <link rel="icon" href="/res/home/images/favicon.ico"  type="image/x-icon" />
    <link rel="stylesheet" href="/resource/reset.css?ver=20180105"/>
    <link rel="stylesheet" href="/resource/wk-common.css?ver=20180105"/>
    <script type="text/javascript" src="/resource/jquery-1.11.0.min.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/jquery.timer.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/layer.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/jquery.cookie.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/spinner.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/audio/audio5.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/base.js?ver=20180105"></script>


    <link rel="stylesheet" href="/resource/wk-lottery.css?ver=20180105"/>
    <link rel="stylesheet" href="/resource/theme-black.css?ver=20180105"/>
    <link rel="stylesheet" href="/resource/wk-lottery-pk10.css?ver=20180105"/>
    <script type="text/javascript" src="/resource/math.extends.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/lotts/play.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/lotts/play_pk10.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/lotts/fire.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/lotts/lottery.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/ajaxfileupload.js?ver=20180105"></script>
    <script type="text/javascript">
        var hs = hs || {};
        hs.lottery = function() {};
        hs.lottery.betInOpen = false;
        hs.lottery.betInCount = 3;
        hs.lottery.betInAmountMix = 0.10;
        hs.lottery.betInAmountMax = 1000.00;
        hs.lottery.gameSecondMax =  25;
        hs.lottery.pk10 = true;
        var account ="lnzyz1212";
    </script>
    <style>
        body {
            background: url('/resource/pk10-bg.jpg') center no-repeat;
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



                                <li><a href="/lotts/gd11x5/index" class="lottplayExplain">广东11选5</a></li>

                                <li><a href="/lotts/jx11x5/index" class="lottplayExplain">江西11选5</a></li>

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
        <!--
        <label class="outstandingTopBox">
            <a href="javascript:;" class="outstandingIcon"></a>
            <div class="outstandingNav">
                <a href="/recharge/rechargeOutstanding">催充值未到账</a>
                <a href="/deposit/depositOutstanding">催提现未到账</a>
            </div>
        </label>
        -->
        <div class="headerR">
            <label class="serviceSuggest">
                <a href="http://dkc.duokebo.com/webchat/chat.aspx?siteid=730985" class="customerService" target="_blank"><i></i>联系客服</a>
                <!--<a href="/user/suggestIndex" class="suggestUrl">投诉建议</a>-->
            </label>
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
    <input type="hidden" id="theme" value="theme-black" data-lottery="false"/>

    <!--彩种头部-->
    <div class="lotteryHeader">
        <div class="mainWidth">
            <!--彩种Logo-->
            <div class="lotteryLogo">
                <img src="/images/cz_pk10-theme-black.png" class="betsType" />
                <!--<span class="betsType">北京赛车</span>
                    <img src="/res/home/images/lotteryLogo-ssc.png" class="betsType" />
                    <img src="/res/home/images/lotteryLogo-115.png" class="betsType" style="display: none;" />-->
                <!--<p class="currLottNumBox">-->
                <!--<span>当前已开</span>-->
                <!--<span class="openCount" id="openCount">158</span>-->
                <!--<span>/</span>-->
                <!--<span id="allCount">179</span>-->
                <!--<span>期</span>-->
                <!--</p>-->
            </div>

            <!--开奖倒计时-->
            <div class="countDownBox">
                <p class="countDownTitle">
                    <span>第</span> <span class="fontColorTheme" id="saleSeasonId">${saleSeasonId1}</span> <span>期 剩余投注时间</span>
                </p>
                <div class="countDown" id="saleAllSecond" data-second="${saleAllSecond}">
                    <label class="hour"> <a href="javascript:;" id="saleHour">00</a> <span class="tips">:</span></label>
                    <label class="minute"> <a href="javascript:;" id="saleMintue">00</a> <span class="tips">:</span></label>
                    <label class="second"> <a href="javascript:;" id="saleSecond">00</a></label>
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
                        <ul class="lotteryNum pk10" id="openNums" data-num="01,02,03,04,05,06,07,08,09,10">

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                            <li class="lottNumDetail">

                                <p class="">
                                    <span class="bigNum01"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum02"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum03"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum04"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum05"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum06"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum07"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum08"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum09"></span>
                                </p>

                                <p class="">
                                    <span class="bigNum10"></span>
                                </p>

                            </li>

                        </ul>
                    </div>
                </div>
                <!--<p class="lottTypeTips overflowEllipsis" id="openNumStatus">-->
                <!---->
                <!--</p>-->
            </div>
            <!-- 玩法介绍、开奖走势图 -->
            <div class="explainExample">





                <a href="trend" target="_blank">
                    <i class="trendLogo"></i>
                    <span>开奖走势图</span>
                </a>
            </div>
        </div>
    </div>

    <!--彩种内容-->
    <div class="lotteryContent">
        <!--彩种选号区域-->
        <div class="mainWidth">
            <!--彩种导航-->
            <div class="lottNavBox">
                <ul class="lottNav">


                    <li class="lottNavDetail" data-show="#group_0" data-hide=".lottTypeBox"><a href="javascript:;">两面盘</a></li>



                    <li class="lottNavDetail" data-show="#group_1" data-hide=".lottTypeBox"><a href="javascript:;">定位胆</a></li>



                    <li class="lottNavDetail" data-show="#group_2" data-hide=".lottTypeBox"><a href="javascript:;">前二</a></li>



                    <li class="lottNavDetail" data-show="#group_3" data-hide=".lottTypeBox"><a href="javascript:;">前三</a></li>



                    <li class="lottNavDetail" data-show="#group_4" data-hide=".lottTypeBox"><a href="javascript:;">前四</a></li>



                    <li class="lottNavDetail" data-show="#group_5" data-hide=".lottTypeBox"><a href="javascript:;">前五</a></li>


                </ul>
            </div>
            <div class="lottChangeNumArea clr">
                <div class="lottLeft">
                    <!-- 彩种组 -->


                    <div class="lottTypeBox" id="group_0" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">车位</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_side_lh" data-remark="从对应两个位上选择一个形态组成一注，前者大于后者为“龙”，反之为“虎”" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="1V10投注：“龙” 开奖：2,*,*,*,*,*,*,*,*,1 即中奖" data-title="龙虎" data-ratio="0.00" data-MaxBonus="3.90" data-bonus="3.40"><a href="javascript:;">龙虎</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_side_gy_and" data-remark="3-11为小，12-19为大。投注形态与冠亚军2个数字的和符合，即为中奖。" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：“大” 开奖：2,10,*,*,*,*,*,*,*,* 即中奖" data-title="冠亚和大小单双" data-ratio="0.00" data-MaxBonus="3.51 - 4.38" data-bonus="3.06 - 3.82"><a href="javascript:;">冠亚和大小单双</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_side_ds" data-remark="从对应位置上选择一个形态组成一注，1-5为“小”，6-10为“大” 1,3,5,7,9为“单”，2,4,6,8,10 为“双”" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="第一名位置投注：“大” 开奖：6**** 即中奖" data-title="大小" data-ratio="0.00" data-MaxBonus="3.90" data-bonus="3.40"><a href="javascript:;">大小</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_1" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">定位胆</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star1_dwd" data-remark="从任意位置上至少选择1个号码，选号与相同位置上的开奖号码一致" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：01,*,*,*,*,X,X,X,X,X 开奖：01,*,*,*,*,X,X,X,X,X 即中奖" data-title="前五定位胆" data-ratio="0.30" data-MaxBonus="19.44" data-bonus="17.00"><a href="javascript:;">前五定位胆</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star1_dwd_last" data-remark="从任意位置上至少选择1个号码，选号与相同位置上的开奖号码一致" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：X,X,X,X,X,01,*,*,*,* 开奖：X,X,X,X,X,01,*,*,*,* 即中奖" data-title="后五定位胆" data-ratio="0.30" data-MaxBonus="19.44" data-bonus="17.00"><a href="javascript:;">后五定位胆</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_2" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">前二</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star2_and" data-remark="从03-19至少选择1个号码，所选号码与开奖号码前二名车号之和相等，即中奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：04 开奖：01,03,*,*,*,*,*,*,*,* 即中奖" data-title="冠亚和" data-ratio="0.30" data-MaxBonus="174.96" data-bonus="153.00"><a href="javascript:;">冠亚和</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star2" data-remark="冠军、亚军各选一个号码，所选号码与开奖号码前2名车号相同，且顺序一致，即中奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：01,02 开奖：01,02,*,*,*,*,*,*,*,* 即中奖" data-title="前二复式" data-ratio="0.30" data-MaxBonus="174.96" data-bonus="153.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star2_dj" data-remark="冠军、亚军各选一个号码，所选号码与开奖号码前2名车号任意一个相同，且顺序一致，即中奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="开奖：01,02,*,*,*,*,*,*,*,* 投注：01,02 中1等奖  投注:01,03或04,02中2等奖" data-title="猜前二" data-ratio="0.30" data-MaxBonus="3.88 - 109.83" data-bonus="3.40 - 96.05"><a href="javascript:;">猜前二</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_3" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">前三</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star3" data-remark="冠军、亚军、第三名各选一个号码，所选号码与开奖号码前3名车号相同，且顺序一致，即中奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：01,02,03 开奖：01,02,03,*,*,*,*,*,*,* 即中奖" data-title="前三复式" data-ratio="0.30" data-MaxBonus="1399.68" data-bonus="1224.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star3_single" data-remark="冠军、亚军、第三名各选一个号码，所选号码与开奖号码前3名车号相同，且顺序一致，即中奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：01,02,03 开奖：01,02,03,*,*,*,*,*,*,* 即中奖" data-title="前三直选单式" data-ratio="0.30" data-MaxBonus="1399.68" data-bonus="1224.00"><a href="javascript:;">直选单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star3_dj" data-remark="冠军~第三名,各选一个号码，所选号码与开奖号码前3名车号任意一个相同，且顺序一致，即中奖：中1个3等奖，中2个2等奖，中3个1等奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="开奖：01,02,03,*,*,*,*,*,*,* 投注：01,02,03 中1等奖" data-title="猜前三" data-ratio="0.30" data-MaxBonus="3.88 - 313.95" data-bonus="3.40 - 274.55"><a href="javascript:;">猜前三</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_4" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">前四</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star4" data-remark="冠军、亚军、第三名、第四名各选一个号码，所选号码与开奖号码前4名车号相同，且顺序一致，即中奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：01,02,03,04 开奖：01,02,03,04,*,*,*,*,*,* 即中奖" data-title="前四复式" data-ratio="0.30" data-MaxBonus="9797.76" data-bonus="8568.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star4_single" data-remark="冠军、亚军、第三名、第四名各选一个号码，所选号码与开奖号码前4名车号相同，且顺序一致，即中奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：01,02,03,04 开奖：01,02,03,04,*,*,*,*,*,* 即中奖" data-title="前四直选单式" data-ratio="0.30" data-MaxBonus="9797.76" data-bonus="8568.00"><a href="javascript:;">直选单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star4_dj" data-remark="冠军~第四名,各选一个号码，所选号码与开奖号码前4名车号任意一个相同，且顺序一致，即中奖：中1个4等奖，中2个3等奖，中3个2等奖，中4个1等奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="开奖：01,02,03,04,*,*,*,*,*,* 投注：01,02,03,04 中1等奖" data-title="猜前四" data-ratio="0.30" data-MaxBonus="3.88 - 690.12" data-bonus="3.40 - 603.50"><a href="javascript:;">猜前四</a></li>


                            </ul>
                        </div>


                    </div>



                    <div class="lottTypeBox" id="group_5" style="display: none;">


                        <div class="lottTypeList">
                            <span class="lottTypeTitle">前五</span>
                            <ul class="lottType">



                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star5" data-remark="冠军、亚军、第三名、第四名、四五名各选一个号码，所选号码与开奖号码前5名车号相同，且顺序一致，即中奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：01,02,03,04,05 开奖：01,02,03,04,05,*,*,*,*,* 即中奖" data-title="前五复式" data-ratio="0.30" data-MaxBonus="58786.56" data-bonus="51408.00"><a href="javascript:;">复式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star5_single" data-remark="冠军、亚军、第三名、第四名、四五名各选一个号码，所选号码与开奖号码前5名车号相同，且顺序一致，即中奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="投注：01,02,03,04,05 开奖：01,02,03,04,05,*,*,*,*,* 即中奖" data-title="前五直选单式" data-ratio="0.30" data-MaxBonus="58786.56" data-bonus="51408.00"><a href="javascript:;">直选单式</a></li>




                                <li class="lottTypeDetail" data-hide=".changeNumList" data-show="#pk10_star5_dj" data-remark="冠军~第五名,各选一个号码，所选号码与开奖号码前5名车号任意一个相同，且顺序一致，即中奖：中1个5等奖，中2个4等奖，中3个3等奖，中4个2等奖，中5个1等奖" data-a1="0" data-a2="0" data-a3="0" data-a4="0"
                                    data-example="开奖：01,02,03,04,05,*,*,*,*,* 投注：01,02,03,04,05 中1等奖" data-title="猜前五" data-ratio="0.30" data-MaxBonus="3.88 - 991.44" data-bonus="3.40 - 867.00"><a href="javascript:;">猜前五</a></li>


                            </ul>
                        </div>


                    </div>



                    <!--选号区域-->
                    <div class="lottChangeNumMain">
                        <div class="lottChangeNumBox">
                            <!--选号头部-->
                            <div class="explainExample">
                                <a href="javascript:;">
                                    <i class="explainLogo"></i>
                                    <span>玩法介绍</span>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_side_lh" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">1V10</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">2 V 9</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">3 V 8</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">4 V 7</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">5 V 6</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="龙" class="smallNum smallNum-LONG"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="虎" class="smallNum smallNum-HU"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_side_gy_and" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_side_ds" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第一名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第二名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第三名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第四名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第五名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第六名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第七名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第八名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第九名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
                                            </li>

                                        </ul>
                                    </div>
                                    <div class="changeNumBtn">
                                        <ul class="btnList">

                                        </ul>
                                    </div>
                                </div>

                                <!-- 行 -->
                                <div class="changeNumDetail changeNumDouble clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">第十名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="大" class="smallNum smallNum-B"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="小" class="smallNum smallNum-S"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="单" class="smallNum smallNum-O"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="双" class="smallNum smallNum-E"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star1_dwd" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">冠军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">亚军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">三名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">四名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">五名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star1_dwd_last" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">六名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">七名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">八名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">九名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">十名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star2_and" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle"></span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="11" class="smallNum smallNum11"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="12" class="smallNum smallNum12"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="13" class="smallNum smallNum13"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="14" class="smallNum smallNum14"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="15" class="smallNum smallNum15"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="16" class="smallNum smallNum16"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="17" class="smallNum smallNum17"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="18" class="smallNum smallNum18"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="19" class="smallNum smallNum19"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star2" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">冠军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">亚军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star2_dj" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">冠军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">亚军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star3" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">冠军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">亚军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">三名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star3_single" data-anySelect="">




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
                                        <a href="javascript:;" class="btn errBtn" data-playId="#pk10_star3_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#pk10_star3_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#pk10_star3_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star3_dj" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">冠军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">亚军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">三名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star4" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">冠军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">亚军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">三名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">四名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star4_single" data-anySelect="">




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
                                        <a href="javascript:;" class="btn errBtn" data-playId="#pk10_star4_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#pk10_star4_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#pk10_star4_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star4_dj" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">冠军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">亚军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">三名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">四名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star5" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">冠军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">亚军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">三名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">四名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">五名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star5_single" data-anySelect="">




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
                                        <a href="javascript:;" class="btn errBtn" data-playId="#pk10_star5_single">删除错误项</a>
                                        <a href="javascript:;" class="btn cfBtn" data-playId="#pk10_star5_single">删除重复项</a>
                                        <a href="javascript:;" class="btn clearBtn" data-playId="#pk10_star5_single">清空文本框</a>
                                        <span class="msg" style="display: none;">您导入的号码有错误项和重复项，已为您标记，试试功能键由系统修正错误</span>
                                    </div>
                                </div>


                            </div>

                            <!-- 号码盘 -->
                            <div class="changeNumList changeNumList-pk10" style="display: none;" id="pk10_star5_dj" data-anySelect="">




                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">冠军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">亚军</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">三名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">四名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                                <!-- 行 -->
                                <div class="changeNumDetail clr">
                                    <div class="changeNum clr">
                                        <span class="detailTitle">五名</span>
                                        <ul class="numList" data-max="0">

                                            <li>
                                                <a href="javascript:;" data-num="01" class="smallNum smallNum01"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="02" class="smallNum smallNum02"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="03" class="smallNum smallNum03"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="04" class="smallNum smallNum04"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="05" class="smallNum smallNum05"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="06" class="smallNum smallNum06"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="07" class="smallNum smallNum07"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="08" class="smallNum smallNum08"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="09" class="smallNum smallNum09"></a>
                                            </li>

                                            <li>
                                                <a href="javascript:;" data-num="10" class="smallNum smallNum10"></a>
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

                            <!-- 文件上传 -->
                            <div id="fileDiv" style="display:none;">
                                <input type="file" name="file" id="file"/>
                            </div>
                        </div>

                        <!--确认投注-->
                        <div class="confirmBetsBox">
                            <div class="betsInfoBox">
                                <div class="betsInfo">
                                    <div class="amountTypeDetail" id="amountTypeDetail">
                                        <a href="javascript:;" class="amountType active" data-unit="2">元</a>
                                        <a href="javascript:;" class="amountType" data-unit="0.2">角</a>
                                        <a href="javascript:;" class="amountType" data-unit="0.02">分</a>
                                        <a href="javascript:;" class="amountType" data-unit="0.002">厘</a>
                                    </div>
                                    <div class="changeMultDetail">
                                        <span>倍数</span>
                                        <!-- 可输入下拉框 -->
                                        <div class="inputSelectDiv">
                                            <a href="javascript:;" class="reduceMult" onclick="reduceMult(this)"></a>
                                            <input type="text" class="labelCond" id="betPrice" value="1"/>
                                            <a href="javascript:;" class="addMult" onclick="addMult(this)"></a>
                                        </div>
                                        <!--<label for="#" class="fireBox">-->
                                        <!--<canvas class="fire" id="surface"></canvas>-->
                                        <!--</label>-->
                                    </div>
                                    <div class="betsInfoTypeList">
                                        <input type="range" value="${maxFandian}" min="0" max="${maxFandian}" step="0.1" onchange="changeBouns()" id="bounsNumRange"/>&nbsp;<span id="bounsNum">${maxBouns}</span>


                                    </div>
                                </div>
                                <p class="betsInfoTips">
                                    <span>您选择了共</span>
                                    <span class="fontColorTheme" id="betsCount">0</span>
                                    <span>注，</span>
                                    <!--<span class="fontColorTheme" id="betsPriceCount">0</span>-->
                                    <span>共投注</span>
                                    <span class="fontColorTheme" id="betsAmountCount">0.0000</span>
                                    <span>元</span>
                                </p>
                            </div>
                            <div class="betsBtn">
                                <div class="betsBtnLabel">
                                    <a href="javascript:;" class="btn appendNumBtn" id="addSelectNum">
                                        <i class="appNumIcon"></i>
                                        <span>添加</span>
                                    </a>
                                    <a href="javascript:;" class="btn clearNumBtn" id="clearSelectNum">
                                        <i class="clearNumIcon"></i>
                                        <span>清空</span>
                                    </a>
                                </div>
                                <a href="javascript:;" class="btn confirmBets" id="promptlyBet">
                                    <i class="confirmBetsIcon"></i>
                                    <span>立即投注</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 当前期开奖排行 -->
                <div class="lottRight">
                    <div class="accountAndLottery">
                        <!--当前期开奖排行-->
                        <div class="beforeLottNumBox">
                            <table class="beforeLottNumList" id="openList">

                                <tr class="beforeLottNumDetail">
                                    <td>第1名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum06"></span></td>
                                </tr>

                                <tr class="beforeLottNumDetail">
                                    <td>第2名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum10"></span></td>
                                </tr>

                                <tr class="beforeLottNumDetail">
                                    <td>第3名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum03"></span></td>
                                </tr>

                                <tr class="beforeLottNumDetail">
                                    <td>第4名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum05"></span></td>
                                </tr>

                                <tr class="beforeLottNumDetail">
                                    <td>第5名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum02"></span></td>
                                </tr>

                                <tr class="beforeLottNumDetail">
                                    <td>第6名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum08"></span></td>
                                </tr>

                                <tr class="beforeLottNumDetail">
                                    <td>第7名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum04"></span></td>
                                </tr>

                                <tr class="beforeLottNumDetail">
                                    <td>第8名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum01"></span></td>
                                </tr>

                                <tr class="beforeLottNumDetail">
                                    <td>第9名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum07"></span></td>
                                </tr>

                                <tr class="beforeLottNumDetail">
                                    <td>第10名</td>
                                    <!-- class="currLottNum" 为开奖号码 -->
                                    <td><span class="currLottNum09"></span></td>
                                </tr>

                            </table>
                        </div>

                        <!--查看完整走势-->
                        <!--<p class="fullTrendBox">-->
                        <!--<a href="trend" class="fullTrend textUnderline" target="_blank">查看完整走势</a>-->
                        <!--</p>-->
                    </div>
                </div>
            </div>
            <!-- 追号区域、最近投注-->
            <div class="appNumLottListArea clr">
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
                                <th width="40" class="appNumClear fontColorTheme">清空</th>
                            </tr>
                            </thead>
                            <tbody id="selectBetPanle"></tbody>
                        </table>
                    </div>
                    <!--确认追号-->
                    <div class="confirmAppNumBox">
                        <div class="appNumInfo">
                            <label>
                                <span>总注数：</span> <span id="appNumCount" class="fontColorTheme">0</span> <span>注</span>
                            </label>
                            <label>
                                <span>总金额：￥</span> <span id="appNumAmount" class="fontColorTheme">0.00</span> <span>元</span>
                            </label>
                            <label class="currAmountDetail">
                                <span>余额：</span> <span class="userBalance fontColorTheme" id="appNumUserBalance">26.4227</span> <span>元</span>
                            </label>
                        </div>
                        <div class="betsBtn">
                            <a href="javascript:;" class="btn appendNumBtn" id="appBet">追号</a>
                            <a href="javascript:;" class="btn confirmBets" id="betConfirm">确认投注</a>
                        </div>
                    </div>
                </div>
                <!-- 最近投注、最近追号 -->
                <div class="userLotteryListArea">
                    <!--中奖排行-->
                    <!--<div class="beforeLottNumBox">-->
                    <!--<h3 class="beforeLottNumHeader lotteryList">-->
                    <!--<i class="lotteryListIcon"></i>-->
                    <!--<span>中奖排行</span>-->
                    <!--</h3>-->
                    <!--<table class="beforeLottNumList" id="lotteryList">-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>1</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/鼎汇三分彩.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">gt****b</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">2806</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>2</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/江西11选5.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">co****r</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">6501</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>3</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/新疆时时彩.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">mv****d</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">8778</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>4</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/五分11选5.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">tg****0</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">5062</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>5</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/三分11选5.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">dg****h</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">8518</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>6</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/鼎汇一分彩.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">lf****s</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">49379</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>7</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/鼎汇三分彩.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">gp****j</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">14090</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>8</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/鼎汇三分彩.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">cw****j</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">12315</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>9</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/北京赛车.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">ww****4</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">40583</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>10</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/江西11选5.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">pz****4</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">13206</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>11</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/一分11选5.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">jh****u</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">35431</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>12</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/鼎汇一分彩.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">vj****h</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">20138</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>13</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/北京赛车.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">nx****r</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">35078</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>14</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/山东11选5.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">cx****8</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">43052</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>15</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/三分11选5.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">zm****9</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">16830</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>16</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/鼎汇三分彩.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">ni****6</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">75649</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>17</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/重庆时时彩.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">ep****l</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">67943</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>18</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/江西11选5.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">cc****u</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">65364</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>19</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/广东11选5.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">ws****h</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">88710</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--<tr class="beforeLottNumDetail">-->
                    <!--<td>20</td>-->
                    <!--<td width="20%" class="lotteryListImg">-->
                    <!--<img src="/res/home/images/lottery/betList/重庆时时彩.png"/>-->
                    <!--</td>-->
                    <!--<td width="30%">jr****c</td>-->
                    <!--<td width="50%">-->
                    <!--<span class="fontColorRed">53202</span>-->
                    <!--<span>元</span>-->
                    <!--</td>-->
                    <!--</tr>-->
                    <!---->
                    <!--</table>-->
                    <!--</div>-->
                    <!-- 开奖列表、最近投注、最近追号等 -->
                    <div class="beforeLottNumBox accountLottBox">
                        <h3 class="beforeLottNumHeader clr">
                            <a href="javascript:;" class="lottInfoNavDetail active" data-show="#beforeLottNumList">今日开奖</a>
                            <a href="javascript:;" class="lottInfoNavDetail" data-show="#betRecord">最近投注</a>
                            <a href="javascript:;" class="lottInfoNavDetail" data-show="#traceRecord">最近追号</a>
                        </h3>
                        <div class="beforeLottNumContent">
                            <input type="hidden" id="lotteryId" value="pk10" />
                            <table class="beforeLottNumList" id="beforeLottNumList">
                                <thead>
                                <tr class="listHeader">
                                    <th>奖期</th>
                                    <th>开奖号码</th>
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

                                </tbody>
                            </table>
                            <table class="beforeLottNumList" id="betRecord" style="display:none;">
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
                            <table class="beforeLottNumList" id="traceRecord" style="display:none;">
                                <thead>
                                <tr class="listHeader">
                                    <!--<th width="140">时间</th>-->
                                    <th width="100">彩种</th>
                                    <th width="120">开始期号</th>
                                    <!-- 										<th width="120">玩法</th> -->
                                    <!--<th width="120">取消数</th>-->
                                    <!--<th width="100">方案金额</th>-->
                                    <!--<th width="60">追中即停</th>-->
                                    <th width="100">总金额</th>
                                    <!--<th width="60">状态</th>-->
                                    <!-- <th width="40">操作</th> -->
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
                    <span class="userBalance">${amount}</span> <span class="fontColorGray">账户可用余额(元)</span>
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

<!-- 投注确认 -->
<div class="layui-layer-content" id="betConfirmBox" style="display: none; width: 460px;">
    <p class="lottTipLayerTitle">温馨提示</p>
    <div class="layerBox betConfirmBox">
        <form action="" id="betConfirmForm"></form>
        <p>
            <strong>请核准您的投注信息</strong>
        </p>
        <p>
            <label><span>彩种：北京赛车</span></label> <label>期号：<span id="saleSeasonId1">665110</span></label>
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
            <label> <span>付款账户：${account}</span>
            </label>
        </p>
        <div class="dialogBtn">
            <a href="javascript:;" class="btn closeBtn" id="betSubmit">确认</a>
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
                <span>,感谢您选择金牌娱乐平台，请完善以下个人信息</span>
            </p>
            <span class="improveHeaderTips">为了让金牌娱乐更好的给您提供服务，请修改密码并牢记，不要泄露给其他人</span>
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
<!--<p class="awardsNoticeInfo">您好，金牌娱乐隆重推出“彩中彩”游戏，如果您有投注注单中奖了，将会触发“彩中彩”。彩中彩更加刺激更加激情，中奖概率随之上涨。</p>-->
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
                    <p>请投注金牌娱乐彩种，中奖后将再次激活彩中彩</p>
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
    <!--<p>请投注金牌娱乐彩种，中奖后将再次激活彩中彩</p>-->
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
            <a href="/lotts/jx11x5/index">
                <span>江西11选5</span>

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
        <p>@金牌娱乐  版权所有 2010-2018 copyright DH·VK Interactive Network Techno Co.</p>
    </div>
</div>

</body>
</html>