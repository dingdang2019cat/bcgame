<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/4/20
  Time: 5:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>金牌娱乐 - 充值-提现</title>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <link rel="icon" href="/resource/favicon.ico"  type="image/x-icon" />
    <link rel="stylesheet" href="/resource/reset.css?ver=20180323"/>
    <link rel="stylesheet" href="/resource/wk-common.css?ver=20180323"/>
    <script type="text/javascript" src="/resource/jquery-1.11.0.min.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/jquery.timer.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/layer.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/jquery.cookie.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/spinner.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/audio/audio5.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/base.js?ver=20180323"></script>


    <link rel="stylesheet" href="/resource/wk-recharge.css?ver=20180323"/>

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
                </div>
                <div class="lotteryList" id="lotteryList">

                    <div class="lottDetail">
                        <i class="lotteryTitle title_ssc" title="时时彩"></i>
                        <div class="lotteryDetdailList">

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/cqssc/index" class="lottplayExplain">重庆时时彩</a></li><li><a href="/lotts/txssc/index" class="lottplayExplain">腾讯分分彩</a></li>

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
        <a href="javascript:;" class="recharge" onclick="javascript:if('0' == 1 || '0' == 3){$.alert('您的充值功能已被冻结！');}else{window.location.href='/recharge/rechargeMoney1'}"></a>
        <a href="javascript:;" class="drawMoney" onclick="javascript:if('0' == 2 || '0' == 3){$.alert('您的提现功能已被冻结！');}else{window.location.href='/deposit/deposit'}"></a>
        <div class="headerR">
            <label class="serviceSuggest">
                <a href="http://dkc.duokebo.com/webchat/chat.aspx?siteid=730985" class="customerService" target="_blank"><i></i>联系客服</a>
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


<div class="areaBigContainer mainWidth" id="depositArea">
    <div class="containerFlex">
        <!-- 列表 -->


        <!-- 导航 -->
        <div class="leftListArea" id="rechargeNavUl">
            <div class="leftListDetail">
                <a class="leftListBigItem rechargeA" href="javascript:;"><i></i>充值</a>
                <div class="leftListItem" style="display:none;">


                </div>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem depositA" id="navDeposit" href="javascript:;" onclick="javascript:if('0' == 2 || '0' == 3){$.alert('您的提现功能已被冻结！');}else{window.location.href='/deposit/deposit'}"><i></i>提现</a>
            </div>
        </div>
        <script type="text/javascript">
            $(function(){
                var categoryNavId = '';
                var href = window.location.href;
                if ($("#rechargeNavUl .active").length == 0) {
                    if (href.indexOf('deposit') > 0 && href.indexOf('Outstanding') < 0) {
                        $("#navDeposit").addClass("active");
                        $(".rechargeA").attr("onclick","javascript:if('0' == 1 || '0' == 3){$.alert('您的充值功能已被冻结！');}else{window.location.href='/recharge/rechargeMoney1'}");
                    }else if (href.indexOf('Outstanding') > 0){
                        $('.outstandingA').addClass("active").click();
                        if(href.indexOf('rechargeOutstanding') > 0){
                            $('.rechNav').addClass("active");
                        }else{
                            $('.depoNav').addClass("active");
                        }
                        $(".rechargeA").attr("onclick","javascript:if('0' == 1 || '0' == 3){$.alert('您的充值功能已被冻结！');}else{window.location.href='/recharge/rechargeMoney1'}");
                    }else{
                        $('.leftListBigItem').eq(0).click();
                        if(categoryNavId){
                            $('.nav[data-categoryId="' + categoryNavId + '"]').addClass('active');
                        }else{
                            $('#nvaRechargeMoney').addClass('active');
                        }
                    }
                }
                else{
                    $('.leftListBigItem').eq(0).click();
                }
            });
        </script>
        <!-- 内容 -->
        <div class="rightArea">
            <div class="accountCentreContent">
                <!-- 提现 -->
                <form id="depositAreaForm" method="post" onsubmit="return checkForm();">
                    <div class="depositArea">
                        <p class="userMsg fontColorGray depositMsg">
                            <i class="warnIcon"></i>
                            <span>提现所产生的银行手续费由平台为您免除。提现限额：最低100.0000元，最高5000000.0000元</span>
                        </p>
                        <div class="depositBox">
                            <p>
                                <span class="labelTitle">可用余额：</span>
                                <span class="fontColorRed">${amount}元</span>
                            </p>
                            <p>
                                <span class="labelTitle">可提现额度：</span>
                                <span class="fontColorRed">${amount}元</span>
                            </p>
                            <div class="depositChangeBank">
                                <span class="labelTitle">选择银行卡：</span>
                                <p class="depositBanks">
                                    <c:forEach var="bookCards1" items="${bookCards}">
                                    <label class="bank">
                                        <input type="radio" class="btnRadio" id="bankCardId" name="bankCardId" data-maintenanceStatus="0" value="${bookCards1.id}" checked />
                                        <img src="/res/home/images/bank/icbc.png" class="bankImg" alt="${bookCards1.bankName}" />
                                        <span>开户人姓名：${bookCards1.niceName} 银行卡号：${bookCards1.card}</span>

                                    </label>
                                    </c:forEach>
                                </p>
                                <input type="hidden" id="bankCardNum" value="${bankCardNum}" />
                            </div>
                            <p>
                                <span class="labelTitle">提现金额：</span>
                                <label for="#" class="rechAmountDetail">
                                    <input type="text" class="labelCond depositAmount" id="amount" name="amount" />
                                    <span>元</span>
                                    <label class="rechAmountInfo">
                                        <i class="rechAmountInfo-l"></i>
                                        <span class="rechAmountInfo-c" id="rechAmountInfo"></span>
                                        <i class="rechAmountInfo-r"></i>
                                        <i class="rechAmountInfo-b"></i>
                                    </label>
                                </label>
                                <span class="errorWarn fontColorGray">(您本次最多提现${max}元，今天还可以提现${count}次)</span>
                            </p>
                            <p style="margin-top: -15px;">
                                <span class="labelTitle">资金密码：</span>
                                <label for="#" class="rechAmountDetail">
                                    <input type="password" class="labelCond" id="safePassword" name="safePassword" />
                                </label>
                            </p>
                            <label>
                                <span class="labelTitle"></span>
                                <input type="hidden" name="isAgreeFee" value="true" />
                                <input class="btn depositBtn" id="depositSubmit" type="submit" value="申请提现" />
                                <span id="errorSpan" class="fontColorRed"></span>
                            </label>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>




<script type="text/javascript">
    function checkHadNotSafePassword() {
        var needSet = $("#setSafePassword")[0];
        if (needSet) {
            layer.closeAll();
            layer.open({
                type: 1,
                skin: 'setSafePswLayer',
                shift: 5,
                area:'755px',
                title:false,
                content:$('#setSafePassword')
            });
            return false;
        }
        return true;
    }
</script>
<script>
    var sysMinDeposit = "100.0000";
    var sysMaxDeposit = "5000000.0000";
    var canDepositMoney = "${amount}";
    var canDepositCount = "${count}";
    var needSetSafePassword = '';
</script>
<script src="/resource/finance/deposit.js?ver=20180323"></script>



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