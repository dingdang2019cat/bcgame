<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/4/21
  Time: 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>金牌娱乐 - 首页</title>
    <meta charset="UTF-8">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <meta content="email=no" name="format-detection">
    <link rel="icon" href="/resource/favicon.ico"  type="image/x-icon" />
    <script src="/resource/mobile/flexible.js?ver=20180323"></script>
    <link rel="stylesheet" href="/resource/mobile/m-reset.css?ver=20180323" />
    <script src="/resource/jquery-1.11.0.min.js?ver=20180323"></script>


    <link rel="stylesheet" href="/resource/mobile/css/m-index.css?ver=20180323" />
    <link rel="stylesheet" href="/resource/mobile/swiper/swiper-3.4.1.min.css?ver=20180323">

</head>
<body>
<section class="slideContent" id="page">

    <section id="index">
        <header class="header firstHeader">
            <span class="font20">金牌娱乐</span>
            <a href="javascript:;" class="headRight headUser"></a>
        </header>
        <section class="main">
            <div class="swiper-container">
                <div class="swiper-wrapper">

                    <a class="swiper-slide" href="javascript:;" title="手机标语">
                        <img src="/resource/add8b86349ce49ffb8db0375f88ef895.jpg" />
                    </a>

                    <a class="swiper-slide" href="javascript:;" title="支付宝转银行卡手机端">
                        <img src="/resource/bc389fe37a6247d6ba1c4ec5e72ede34.jpg" />
                    </a>

                    <a class="swiper-slide" href="javascript:;" title="签到">
                        <img src="/resource/6db905915bc04b12bc98bbfc1941096f.jpg" />
                    </a>

                    <a class="swiper-slide" href="javascript:;" title="微信充值手机端">
                        <img src="/resource/0cc999214bd344149ddc083ca40390e8.jpg" />
                    </a>

                </div>
                <div class="swiper-pagination"></div>
            </div>

            <div class="platNoticeBox">
                <i></i>
                <ul class="platNoticeList">
                    <c:forEach var="signs" items="${signs}">
                        <li class="platNotice">
                            <a href="/notice/indexDel?id=${signs.id}" class="overflowEllipsis">${signs.key}</a>
                        </li>
                    </c:forEach>

                </ul>
            </div>
            <div class="lottType">
                <h2 class="boxTitle">定制彩种</h2>
                <article class="lottTypeList">
                    <a href="javascript:;" class="addLott" id="addLott">
                        <i class="lottIcon"></i>
                        <span class="name font16">添加彩种</span>
                    </a>
                </article>
            </div>
            <div class="gladMsgBox">
                <h2 class="boxTitle">中奖喜报</h2>
                <article class="gladMsg">
                    <div class="gladMsgListBox">
                        <ul class="gladMsgList">
                            <c:forEach var="lotterys" items="${lotterys}">
                                <li>
                                    <p class="name">${lotterys.account}</p>
                                    <p class="content">刚刚中得${lotterys.winMoney}元，恭喜!</p>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                </article>
            </div>
        </section>



        <footer id="footer" class="font12">
            <a href="/index" class="home">
                <i></i>
                <span>首页</span>
            </a>
            <a href="/lotts/betsHall" class="hall">
                <i></i>
                <span>购彩大厅</span>
            </a>
            <a href="/game/gameRecordList" class="myGameRecord">
                <i></i>
                <span>游戏记录</span>
            </a>
            <a href="/activity/index" class="activity">
                <i></i>
                <span>优惠活动</span>
            </a>
        </footer>

        <script>
            $(function(){
                var href = document.location.href;
                if(href == document.location.origin || href == (document.location.origin+'/') || href == (document.location.origin+'/index')|| href == (document.location.origin+'/?agree=1')){
                    $('.home').addClass('active');
                }else if(href.indexOf('betsHall')>0){
                    $('.hall').addClass('active');
                }else if(href.indexOf('gameRecordList')>0 || href.indexOf('traceRecordList')>0 || href.indexOf('rechargeList')>0 || href.indexOf('depositList')>0){
                    $('.myGameRecord').addClass('active');
                }else if(href.indexOf('activity/index')>0){
                    $('.activity').addClass('active');
                }else if(href.indexOf('plan')>0){
                    $('.plan').addClass('active');
                }
            });
        </script>
    </section>
    <!-- 添加彩种 -->
    <section id="addLottery" style="display:none;">
        <header class="header">
            <a href="javascript:;" class="headLeft leftArrow" id="returnIndex">返回</a>
            <span class="font20">添加彩种</span>
            <a href="javascript:;" class="headRight headUser"></a>
        </header>
        <div class="main">
            <div class="choosedLottType">
                <h2 class="boxTitle">已选彩种</h2>
                <article class="choosedLottTypeList font16"></article>
            </div>
            <div class="addLotteryTip font12">
                <i></i>
                <span>点击上下彩种即可实现添加/删除</span>
            </div>
            <div class="allLottType">
                <h2 class="boxTitle">全部彩种</h2>
                <article class="allLottTypeList font16">

                    <div class="lottTypeGroup group0">

                        <h3 class="lottTitle"><span class="font19">时时彩</span></h3>
                        <div class="lottTypeItems">



                            <a href="javascript:;" class="isj_mmc" data-group="group0" data-link="/lotts/sj_mmc/index" data-title="鼎汇40秒" data-remark="">
                                <i class="lottIcon"></i>
                                <span>鼎汇40秒</span>
                            </a>



                            <a href="javascript:;" class="isj1fc" data-group="group0" data-link="/lotts/sj1fc/index" data-title="鼎汇一分彩" data-remark="">
                                <i class="lottIcon"></i>
                                <span>鼎汇一分彩</span>
                            </a>



                            <a href="javascript:;" class="isj3fc" data-group="group0" data-link="/lotts/sj3fc/index" data-title="鼎汇三分彩" data-remark="">
                                <i class="lottIcon"></i>
                                <span>鼎汇三分彩</span>
                            </a>



                            <a href="javascript:;" class="isj5fc" data-group="group0" data-link="/lotts/sj5fc/index" data-title="鼎汇五分彩" data-remark="">
                                <i class="lottIcon"></i>
                                <span>鼎汇五分彩</span>
                            </a>



                            <a href="javascript:;" class="igppl5" data-group="group0" data-link="/lotts/gppl5/index" data-title="高频排列5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>高频排列5</span>
                            </a>





                            <a href="javascript:;" class="itx1fc" data-group="group0" data-link="/lotts/tx1fc/index" data-title="腾讯分分彩" data-remark="">
                                <i class="lottIcon"></i>
                                <span>腾讯分分彩</span>
                            </a>



                            <a href="javascript:;" class="ijndbsc" data-group="group0" data-link="/lotts/jndbsc/index" data-title="加拿大3.5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>加拿大3.5</span>
                            </a>



                            <a href="javascript:;" class="idj1_5" data-group="group0" data-link="/lotts/dj1_5/index" data-title="东京1.5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>东京1.5</span>
                            </a>





                            <a href="javascript:;" class="icqssc" data-group="group0" data-link="/lotts/cqssc/index" data-title="重庆时时彩" data-remark="">
                                <i class="lottIcon"></i>
                                <span>重庆时时彩</span>
                            </a>



                            <a href="javascript:;" class="ixjssc" data-group="group0" data-link="/lotts/xjssc/index" data-title="新疆时时彩" data-remark="">
                                <i class="lottIcon"></i>
                                <span>新疆时时彩</span>
                            </a>



                        </div>

                    </div>

                    <div class="lottTypeGroup group1">

                        <h3 class="lottTitle"><span class="font19">北京赛车</span></h3>
                        <div class="lottTypeItems">



                            <a href="javascript:;" class="ipk10" data-group="group1" data-link="/lotts/pk10/index" data-title="北京赛车" data-remark="">
                                <i class="lottIcon"></i>
                                <span>北京赛车</span>
                            </a>





                            <a href="javascript:;" class="iffpk10" data-group="group1" data-link="/lotts/ffpk10/index" data-title="分分PK10" data-remark="">
                                <i class="lottIcon"></i>
                                <span>分分PK10</span>
                            </a>



                            <a href="javascript:;" class="if3pk10" data-group="group1" data-link="/lotts/f3pk10/index" data-title="3分PK10" data-remark="">
                                <i class="lottIcon"></i>
                                <span>3分PK10</span>
                            </a>



                            <a href="javascript:;" class="if5pk10" data-group="group1" data-link="/lotts/f5pk10/index" data-title="5分PK10" data-remark="">
                                <i class="lottIcon"></i>
                                <span>5分PK10</span>
                            </a>



                        </div>

                    </div>

                    <div class="lottTypeGroup group2">

                        <h3 class="lottTitle"><span class="font19">快3</span></h3>
                        <div class="lottTypeItems">



                            <a href="javascript:;" class="ijsk3" data-group="group2" data-link="/lotts/jsk3/index" data-title="江苏快3" data-remark="">
                                <i class="lottIcon"></i>
                                <span>江苏快3</span>
                            </a>



                            <a href="javascript:;" class="ishk3" data-group="group2" data-link="/lotts/shk3/index" data-title="上海快3" data-remark="">
                                <i class="lottIcon"></i>
                                <span>上海快3</span>
                            </a>



                        </div>

                    </div>

                    <div class="lottTypeGroup group3">

                        <h3 class="lottTitle"><span class="font19">11选5</span></h3>
                        <div class="lottTypeItems">



                            <a href="javascript:;" class="if1_11x5" data-group="group3" data-link="/lotts/f1_11x5/index" data-title="一分11选5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>一分11选5</span>
                            </a>



                            <a href="javascript:;" class="if3_11x5" data-group="group3" data-link="/lotts/f3_11x5/index" data-title="三分11选5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>三分11选5</span>
                            </a>





                            <a href="javascript:;" class="iah11x5" data-group="group3" data-link="/lotts/ah11x5/index" data-title="安徽11选5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>安徽11选5</span>
                            </a>



                            <a href="javascript:;" class="igd11x5" data-group="group3" data-link="/lotts/gd11x5/index" data-title="广东11选5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>广东11选5</span>
                            </a>



                            <a href="javascript:;" class="ijx11x5" data-group="group3" data-link="/lotts/jx11x5/index" data-title="江西11选5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>江西11选5</span>
                            </a>



                            <a href="javascript:;" class="isd11x5" data-group="group3" data-link="/lotts/sd11x5/index" data-title="山东11选5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>山东11选5</span>
                            </a>



                        </div>

                    </div>

                    <div class="lottTypeGroup group4">

                        <h3 class="lottTitle"><span class="font19">低频</span></h3>
                        <div class="lottTypeItems">



                            <a href="javascript:;" class="ipl3" data-group="group4" data-link="/lotts/pl3/index" data-title="排列三" data-remark="">
                                <i class="lottIcon"></i>
                                <span>排列三</span>
                            </a>



                            <a href="javascript:;" class="ipl5" data-group="group4" data-link="/lotts/pl5/index" data-title="排列5" data-remark="">
                                <i class="lottIcon"></i>
                                <span>排列5</span>
                            </a>



                            <a href="javascript:;" class="i3d" data-group="group4" data-link="/lotts/3d/index" data-title="福彩3D" data-remark="">
                                <i class="lottIcon"></i>
                                <span>福彩3D</span>
                            </a>



                        </div>

                    </div>

                </article>
            </div>
        </div>
    </section>

    <!-- 公告 -->

    <article id="noticeBox" style="display:none;" data-title="【平台消息】QQ的充值上限从300元调整为最高4999元"><div class="noticeContent"><span style="background-color:#EEEEEE;">
<p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
	<span style="color:#666666;">尊敬的金牌娱乐客户：</span>
</p>
<p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
	<span style="color:#666666;"><br />
</span>
</p>
<p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
	<span style="color:#009999;font-size:14px;"><strong><strong>&nbsp; &nbsp; &nbsp; &nbsp;温馨提示：为了提高您的充值体验，平台</strong>QQ钱包的充值上限从300元调整为最高4999元。</strong></span>
</p>
<p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
	<span style="color:#333333;font-size:14px;"><span style="color:#666666;font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; &nbsp; &nbsp;您可以在充值页面的【QQ钱包】中查看并体验QQ扫码充值方式（电脑和手机）和手机QQ充值方式（手机）的充值上下限。</span></span></span><span style="color:#666666;font-size:14px;"><span style="font-size:14px;">&nbsp;</span></span>
</p>
<p style="font-family:'Microsoft YaHei';font-size:14px;">
	<br />
</p>
</span>
        <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
            <span style="font-family:'Microsoft YaHei';font-size:14px;color:#666666;">--金牌娱乐运营部--</span>
        </p>
        <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
            <span style="font-family:'Microsoft YaHei';font-size:14px;color:#666666;">2018年02月28日</span>
        </p>
        <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
	<span style="font-family:'Microsoft YaHei';font-size:14px;color:#666666;"><img src="https://upload.cc/i/wXYbDW.png" /><br />
</span>
        </p>
        <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
	<span style="color:#666666;"><br />
</span>
        </p></div></article>


    <div id="qkRecharge"><a href="/recharge/rechargeMoney" title="快速充值"></a></div>
    <input type="hidden" id="pageGrade" value="1" />



</section>




<section class="slideMenu" id="menu">
    <header class="menuHeader font16">
        <i class="headImg"></i>
        <p class="headName">${account}</p>
    </header>
    <nav class="menuList font16">
        <div class="menuGroup">
            <a href="/recharge/rechargeMoney" class="a1">
                <i></i>充值
                <span class="userBalanceBox"><em id="userBalance" class="font14" data-value="${amount}">${amount}</em>元</span>
            </a>
            <a href="/deposit/deposit" class="a2"><i></i>提现</a>
            <a href="/user/bindCard" class="a3"><i></i>我的银行卡</a>
        </div>
        <div class="menuGroup">
            <a href="/report/selfList?status=0" class="a4"><i></i>个人盈亏</a>

            <a href="/report/teamRecordList" class="a8"><i></i>团队盈亏</a>

        </div>
        <div class="menuGroup">

            <a href="/user/list" class="a5"><i></i>代理中心</a>

        </div>
        <div class="menuGroup">
            <a href="https://kf1.learnsaas.com/chat/chatClient/chatbox.jsp?companyID=814048&configID=62880&jid=3635228849&s=1" target="_blank" class="a6"><i></i>在线客服</a>
            <a href="/message/messageList" class="a7"><i></i>我的消息<span id="platNoticeNumSpan"></span></a>
        </div>
    </nav>
    <footer class="menuFooter font16">
        <a href="/pc" class="PCBtn font16">电脑版</a>
        <a href="/safe/setting" class="setBtn font16">设置</a>
        <a href="/logout" class="logoutBtn font16">退出</a>
    </footer>
</section>

<script>
    $(function(){
        getUnRead();
    });
    //获取未读消息数
    function getUnRead(){
        $.ajax({
            url:'/message/messageCountUnRead',
            method:'post',
            dataType:'json',
            success:function(data) {
                if (data.content > 0) {
                    $("#platNoticeNumSpan").addClass("messageNum").text(data.content);
                    $("#platNoticeNumSpan2").addClass("platNoticeNum").text(data.content);
                    $('.headUser').addClass('active');
                } else {
                    $("#platNoticeNumSpan").removeClass("messageNum").text("");
                    $("#platNoticeNumSpan2").removeClass("platNoticeNum").text("");
                    $('.headUser').removeClass('active');
                }
            }
        });
    }
</script>


<input id="metaId" type="hidden" value=""/>
<input id="metaClass" type="hidden" value=""/>

<script src="/resource/mobile/layer/layer.js?ver=20180323"></script>
<script src="/resource/spinner.js?ver=20180323"></script>
<script src="/resource/mobile/myStorage.js?ver=20180323"></script>
<script src="/resource/mobile/base.js?ver=20180323"></script>

<script>
    var flag = "0";
</script>
<script src="/resource/mobile/swiper/swiper-3.4.1.jquery.min.js?ver=20180323"></script>
<script src="/resource/mobile/dh-index.js?ver=20180323"></script>


</body>
</html>
