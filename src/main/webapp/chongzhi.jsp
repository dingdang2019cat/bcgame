<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/2/13
  Time: 8:22
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
    <link rel="stylesheet" href="/resource/reset.css?ver=20180123"/>
    <link rel="stylesheet" href="/resource/wk-common.css?ver=20180123"/>
    <script type="text/javascript" src="/resource/jquery-1.11.0.min.js?ver=20180123"></script>
    <script type="text/javascript" src="/resource/jquery.timer.js?ver=20180123"></script>
    <script type="text/javascript" src="/resource/layer/layer.js?ver=20180123"></script>
    <script type="text/javascript" src="/resource/jquery.cookie.js?ver=20180123"></script>
    <script type="text/javascript" src="/resource/spinner.js?ver=20180123"></script>
    <script type="text/javascript" src="/resource/audio/audio5.js?ver=20180123"></script>
    <script type="text/javascript" src="/resource/base.js?ver=20180123"></script>


    <link rel="stylesheet" href="/resource/wk-recharge.css?ver=20180123"/>
    <link rel="stylesheet" href="/resource/swiper-4.1.0/swiper.min.css?ver=20180123">

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
        <a href="javascript:;" class="recharge" onclick="javascript:if('0' == 1 || '0' == 3){$.alert('您的充值功能已被冻结！');}else{window.location.href='/recharge/rechargeMoney'}"></a>
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


<div class="areaBigContainer mainWidth" id="rechargeArea">
    <div class="containerFlex">
        <!-- 导航 -->
        <div class="leftListArea" id="rechargeNavUl">
            <div class="leftListDetail">
                <a class="leftListBigItem rechargeA" href="javascript:;"><i></i>充值</a>
                <div class="leftListItem" style="display:none;">


                    <a href="javascript:;" class="categoryBtn" data-categoryId="1" data-commendStatus="1" data-rewardRate="">
                        在线充值

                    </a>

                    <a href="javascript:;" class="categoryBtn" data-categoryId="3" data-commendStatus="1" data-rewardRate="">
                        微信

                    </a>

                    <a href="javascript:;" class="categoryBtn" data-categoryId="4" data-commendStatus="1" data-rewardRate="">
                        QQ钱包

                    </a>

                </div>
                <div class="leftListDetail">
                    <a class="leftListBigItem depositA" id="navDeposit" href="javascript:;" onclick="javascript:if('0' == 2 || '0' == 3){$.alert('您的提现功能已被冻结！');}else{window.location.href='/deposit/deposit'}"><i></i>提现</a>
                </div>
            </div>
        </div>
        <!-- 内容 -->
        <div class="rightArea rechargeBox">
            <div class="accountCentreContent">







                <form action="/recharge/rechargeMoney" class="changeBankAreaForm" id="changeBankAreaForm1" style="display:none;">

                    <div class="changeBankArea">
                        <input type="hidden" class="rechargeType" name="rechargeType" value="1" />
                        <input type="hidden" class="bankApiId" name="bankApiId" value="" />
                        <input type="hidden" class="classKey" name="classKey" value="" />
                        <input type="hidden" name="account" value="${account}" />
                        <input type="hidden" name="sign" value="fba0fe1d536aa9dde319da4e3e456d90" />
                        <input type="hidden" class="categoryId" name="categoryId" value="1" />


                        <div class="changeBankBox">
                            <div class="bank-l">
                                <span class="labelTitle">请选择银行卡：</span>
                            </div>
                            <div class="bank-r">



                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="1"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('1', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/icbc.png" class="bankImg" alt="中国工商银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="2"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('2', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/boc.png" class="bankImg" alt="中国银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="3"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('3', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/abc.png" class="bankImg" alt="中国农业银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="4"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('4', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/ccb.png" class="bankImg" alt="中国建设银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="9"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('9', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/bob.png" class="bankImg" alt="北京银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="11"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('11', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/ceb.png" class="bankImg" alt="中国光大银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="12"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('12', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/cib.png" class="bankImg" alt="兴业银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="13"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('13', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/citic.png" class="bankImg" alt="中信银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="14"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('14', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/cmb.png" class="bankImg" alt="招商银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="15"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('15', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/cmbc.png" class="bankImg" alt="中国民生银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="16"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('16', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/comm.png" class="bankImg" alt="交通银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="18"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('18', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/gdb.png" class="bankImg" alt="广发银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="21"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('21', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/hxb.png" class="bankImg" alt="华夏银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="25"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('25', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/psbc.png" class="bankImg" alt="中国邮政储蓄银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="26"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('26', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/sdb.png" class="bankImg" alt="深圳发展银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="27"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('27', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/shb.png" class="bankImg" alt="上海银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="28"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('28', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/spa.png" class="bankImg" alt="平安银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>

                                <label class="bank">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="29"
                                           data-point="2" data-bankApiId="83" data-classKey="yb" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('29', '100.00','49999.00', this)" />
                                    <img src="/resource/bank/spdb.png" class="bankImg" alt="浦发银行" />
                                    <i class="bankIcon bankApiIcon0"></i>
                                </label>


                            </div>
                        </div>




                        <div class="changeSumBox">
                            <p>
                                <span class="labelTitle">充值金额：</span>
                                <label for="#" class="rechAmountDetail">
                                    <input type="text" class="labelCond" id="chargeamount1" name="chargeamount"/>
                                    <span>元</span>
                                    <label class="rechAmountInfo">
                                        <i class="rechAmountInfo-l"></i>
                                        <span class="rechAmountInfo-c" id="rechAmountInfo1"></span>
                                        <i class="rechAmountInfo-r"></i>
                                        <i class="rechAmountInfo-b"></i>
                                    </label>
                                </label>
                                <span id="errorSpan1" class="fontColorRed"></span>
                            </p>
                            <p class="niceNameBox" id="niceNameBox1" style="display:none;">
                                <span class="labelTitle">存款名字：</span>
                                <label for="#" class="rechAmountDetail">
                                    <input type="text" class="labelCond" id="niceName1" name="niceName" placeHolder="请填写存款的支付宝姓名" />
                                </label>
                                <span id="niceNameError1" class="fontColorRed"></span>
                            </p>
                            <div class="userMsg fontColorGray">
                                <i class="warnIcon"></i>
                                <p class="comChargeBox" id="comChargeBox1" style="display:none;">
                                    本次充值实际到账<span id="actualAmount1">0</span>元，手续费<span id="commissionCharge1">0</span>元（手续费率<span id="comChargeRate1"></span>%）
                                </p>
                                <p>
                                    <span id="initialMoney1" style="display: none">单笔最低充值金额为<span id="txtMinAmount1" class="txtMinAmount"></span>元，最高<span id="txtMaxAmount1" class="txtMaxAmount"></span>元</span>
                                    <span>充值时限：请在15分钟内完成充值。</span>
                                    <a href="javascript:;" class="howRecharge" data-id="1" data-last="">如何充值?<i class="show"></i></a>
                                </p>
                            </div>
                        </div>
                        <div class="changeBankBtn">
                            <input class="btn nextBtn" type="submit" value="立刻充值" />
                        </div>
                    </div>
                </form>

                <form action="/recharge/rechargeMoney" class="changeBankAreaForm" id="changeBankAreaForm3" style="display:none;">

                    <div class="changeBankArea">
                        <input type="hidden" class="rechargeType" name="rechargeType" value="1" />
                        <input type="hidden" class="bankApiId" name="bankApiId" value="" />
                        <input type="hidden" class="classKey" name="classKey" value="" />
                        <input type="hidden" name="account" value="${account}" />
                        <input type="hidden" name="sign" value="${sign}" />
                        <input type="hidden" class="categoryId" name="categoryId" value="3" />



                        <div class="changeBankBox">
                            <div class="bank-l">
                                <span class="labelTitle">请选择充值方式：</span>
                            </div>
                            <div class="bank-r">



                                <label class="bank bankApi">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="33"
                                           data-point="2" data-bankApiId="87" data-classKey="gaotongWx" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('33', '10.00','3000.00', this)" />
                                    <img src="/resource/recharge/3.png" class="cateImg" />
                                    <span>微信扫码一</span>
                                    <i class="bankIcon bankApiIcon1"></i>
                                </label>


                            </div>
                        </div>



                        <div class="changeSumBox">
                            <p>
                                <span class="labelTitle">充值金额：</span>
                                <label for="#" class="rechAmountDetail">
                                    <input type="text" class="labelCond" id="chargeamount3" name="chargeamount"/>
                                    <span>元</span>
                                    <label class="rechAmountInfo">
                                        <i class="rechAmountInfo-l"></i>
                                        <span class="rechAmountInfo-c" id="rechAmountInfo3"></span>
                                        <i class="rechAmountInfo-r"></i>
                                        <i class="rechAmountInfo-b"></i>
                                    </label>
                                </label>
                                <span id="errorSpan3" class="fontColorRed"></span>
                            </p>
                            <p class="niceNameBox" id="niceNameBox3" style="display:none;">
                                <span class="labelTitle">存款名字：</span>
                                <label for="#" class="rechAmountDetail">
                                    <input type="text" class="labelCond" id="niceName3" name="niceName" placeHolder="请填写存款的支付宝姓名" />
                                </label>
                                <span id="niceNameError3" class="fontColorRed"></span>
                            </p>
                            <div class="userMsg fontColorGray">
                                <i class="warnIcon"></i>
                                <p class="comChargeBox" id="comChargeBox3" style="display:none;">
                                    本次充值实际到账<span id="actualAmount3">0</span>元，手续费<span id="commissionCharge3">0</span>元（手续费率<span id="comChargeRate3"></span>%）
                                </p>
                                <p>
                                    <span id="initialMoney3" style="display: none">单笔最低充值金额为<span id="txtMinAmount3" class="txtMinAmount"></span>元，最高<span id="txtMaxAmount3" class="txtMaxAmount"></span>元</span>
                                    <span>充值时限：请在15分钟内完成充值。</span>
                                    <a href="javascript:;" class="howRecharge" data-id="9" data-last="">如何充值?<i class="show"></i></a>
                                </p>
                            </div>
                        </div>
                        <div class="changeBankBtn">
                            <input class="btn nextBtn" type="submit" value="立刻充值" />
                        </div>
                    </div>
                </form>

                <form action="/recharge/rechargeMoney" class="changeBankAreaForm" id="changeBankAreaForm4" style="display:none;">

                    <div class="changeBankArea">
                        <input type="hidden" class="rechargeType" name="rechargeType" value="1" />
                        <input type="hidden" class="bankApiId" name="bankApiId" value="" />
                        <input type="hidden" class="classKey" name="classKey" value="" />
                        <input type="hidden" name="account" value="lnzyz1212" />
                        <input type="hidden" name="sign" value="fba0fe1d536aa9dde319da4e3e456d90" />
                        <input type="hidden" class="categoryId" name="categoryId" value="4" />



                        <div class="changeBankBox">
                            <div class="bank-l">
                                <span class="labelTitle">请选择充值方式：</span>
                            </div>
                            <div class="bank-r">



                                <label class="bank bankApi">
                                    <input type="radio" class="btnRadio" name="bankNameId" value="38"
                                           data-point="2" data-bankApiId="78" data-classKey="gaotongQQ" data-isQrcode="false" data-poundage=""
                                           onclick="selectBank('38', '100.00','3000.00', this)" />
                                    <img src="/resource/recharge/5.png" class="cateImg" />
                                    <span>QQ扫码一</span>
                                    <i class="bankIcon bankApiIcon1"></i>
                                </label>


                            </div>
                        </div>



                        <div class="changeSumBox">
                            <p>
                                <span class="labelTitle">充值金额：</span>
                                <label for="#" class="rechAmountDetail">
                                    <input type="text" class="labelCond" id="chargeamount4" name="chargeamount"/>
                                    <span>元</span>
                                    <label class="rechAmountInfo">
                                        <i class="rechAmountInfo-l"></i>
                                        <span class="rechAmountInfo-c" id="rechAmountInfo4"></span>
                                        <i class="rechAmountInfo-r"></i>
                                        <i class="rechAmountInfo-b"></i>
                                    </label>
                                </label>
                                <span id="errorSpan4" class="fontColorRed"></span>
                            </p>
                            <p class="niceNameBox" id="niceNameBox4" style="display:none;">
                                <span class="labelTitle">存款名字：</span>
                                <label for="#" class="rechAmountDetail">
                                    <input type="text" class="labelCond" id="niceName4" name="niceName" placeHolder="请填写存款的支付宝姓名" />
                                </label>
                                <span id="niceNameError4" class="fontColorRed"></span>
                            </p>
                            <div class="userMsg fontColorGray">
                                <i class="warnIcon"></i>
                                <p class="comChargeBox" id="comChargeBox4" style="display:none;">
                                    本次充值实际到账<span id="actualAmount4">0</span>元，手续费<span id="commissionCharge4">0</span>元（手续费率<span id="comChargeRate4"></span>%）
                                </p>
                                <p>
                                    <span id="initialMoney4" style="display: none">单笔最低充值金额为<span id="txtMinAmount4" class="txtMinAmount"></span>元，最高<span id="txtMaxAmount4" class="txtMaxAmount"></span>元</span>
                                    <span>充值时限：请在15分钟内完成充值。</span>
                                    <a href="javascript:;" class="howRecharge" data-id="7" data-last="">如何充值?<i class="show"></i></a>
                                </p>
                            </div>
                        </div>
                        <div class="changeBankBtn">
                            <input class="btn nextBtn" type="submit" value="立刻充值" />
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

<div style="display: none" id="rechargePayBox">
    <p class="lottTipLayerTitle">温馨提示</p>
    <div class='lottTipBox'>
        <p class='msg'>
            <i></i>
            <span class='content fontColorRed'>请在新打开窗口完成充值！</span>
        </p>
    </div>
    <div class='lottTipBtn'>
        <a href='/recharge/rechargeMoney' class='btn closeBtn'>关闭</a>
    </div>
</div>


<div class="rechTypeLayer" style="display:none;">
    <div class="rechTypeMiddle">
        <div class="rechTypeWhite">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">Slide 1</div>
                    <div class="swiper-slide">Slide 2</div>
                    <div class="swiper-slide">Slide 3</div>
                </div>
            </div>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-close">
            <a href="javascript:;" class="closeRechLayer"></a>
        </div>
    </div>
</div>

<input type="hidden" value="" id="errorMessage" />

<script>
    var categoryId = '';
    var bankNameId = '';
    var bankApiId = '';
</script>
<script src="/resource/swiper.min.js?ver=20180123"></script>
<script type="text/javascript" src="/resource/myStorage.js?ver=20180123"></script>
<script type="text/javascript" src="/resource/recharge.js?ver=20180123"></script>



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
