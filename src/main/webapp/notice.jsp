<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/1/8
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>鼎汇·万客 - 平台公告</title>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <link rel="icon" href="/res/home/images/favicon.ico"  type="image/x-icon" />
    <link rel="stylesheet" href="/resource/reset.css?ver=20180105"/>
    <link rel="stylesheet" href="/resource/wk-common.css?ver=20180105"/>
    <script type="text/javascript" src="/resource/jquery-1.11.0.min.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/jquery.timer.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/layer/layer.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/jquery.cookie.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/spinner.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/audio/audio5.js?ver=20180105"></script>
    <script type="text/javascript" src="/resource/base.js?ver=20180105"></script>

    <meta charset="UTF-8">

    <link rel="stylesheet" href="/resource/wk-platNotice.css?ver=20180105"/>
    <script type="text/javascript" src="/resource/playNotice/index.js?ver=20180105"></script>

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
        <div class="headerR">
            <label class="serviceSuggest">
                <a href="https://kf1.learnsaas.com/chat/chatClient/chatbox.jsp?companyID=814048&configID=62880&jid=3635228849&s=1" class="customerService" target="_blank"><i></i>联系客服</a>
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

<div class="areaBigContainer mainWidth" id="userCenterArea">
    <div class="containerFlex">
        <!-- 列表 -->
        <div class="leftListArea">
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail msgA active"><i></i>公告列表</a>
                <div class="leftListItem" id="platformNoticeList">
                    <a class="nav active" href="javascript:;" data-id="#personInfo">个人信息</a>
                    <a class="nav" href="javascript:;" data-id="#myCard" id="myBankCard">我的银行卡</a>
                    <a class="nav" href="javascript:;" data-id="#modLoginPwd">修改登录密码</a>
                    <a class="nav" href="javascript:;" data-id="#modAccountPwd">修改资金密码</a>
                    <a class="nav" href="javascript:;" data-id="#safeQA">安全问答</a>
                    <a class="nav" href="javascript:;" data-id="#findSafeByQa">找回资金密码</a>
                </div>
                <div class="platPaginationBox">
                    <span class="fontColorTheme" id="currentPage"></span>
                    <span>/</span>
                    <span id="totalPages"></span>
                    <span class="paginationBtn" id="PrevAndNext"></span>
                    <span>转至</span>
                    <input type="text" class="skipPage" value="1" onblur="listByPage(this.value)"/>
                    <span>页</span>
                </div>
            </div>
        </div>
        <!-- 内容 -->
        <div class="rightArea">
            <div class="accountCentreContent platNoticeContentBox">
                <!-- 公告详情-->
                <div class="noticeDetailHeader">
                    <p class="noticeDetailTitle" id="noticeDetailTitle">【平台更新】2018年01月05日版本升级更新</p>
                    <p class="noticeDetailDate" id="noticeDetailDate">2018-01-05 22:43:41.0</p>
                    <p class="noticeDetailSize">
                        <a href="javascript:;" class="noticeFontSize smallFont14 active" id="smallFont14">A</a>
                        <a href="javascript:;" class="noticeFontSize mediumFont18" id="mediumFont18">A</a>
                        <a href="javascript:;" class="noticeFontSize bigFont22" id="bigFont22">A</a>
                    </p>
                </div>
                <div class="noticeDetailText" id="noticeDetailText">
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;">尊敬的鼎汇·万客用户：</span>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
	<span style="color:#666666;"><br />
</span>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><strong>01月05日平台更新细节：</strong></span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;">为了您的充值和游戏体验更加舒适、顺畅，本平台将升级到最新版本，具体更新内容如下：</span></span>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"><span style="font-size:14px;font-family:'Microsoft YaHei';">&nbsp; &nbsp; &nbsp; </span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">1.</span></strong><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">新增玩法</span></strong><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">：</span></strong><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;">时时彩系列新增“</span><span style="color:#666666;font-size:14px;font-weight:700;font-family:'Microsoft YaHei';">斗牛</span><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;">”玩法（牛牛，大小单双）。</span></span></span>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"><span style="font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; &nbsp; </span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">2.站内信优化：</span></strong><span style="font-family:'Microsoft YaHei';font-size:14px;">新增批量删除功能。</span></span></span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"><span style="font-family:Microsoft YaHei;"><span style="font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; &nbsp; </span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">3.投诉建议功能：</span></strong></span><span style="color:#666666;font-size:14px;font-family:'Microsoft YaHei';">电脑PC端新增投诉建议功能，欢迎随时给平台提出意见和建议。</span></span></span>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"><span style="font-family:Microsoft YaHei;"><span style="font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; &nbsp; </span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">4.下级充值功能：</span></strong></span><span style="color:#666666;font-size:14px;font-family:'Microsoft YaHei';">删除“红包”和“其他”两种备注类型。</span></span></span>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"><span style="font-family:Microsoft YaHei;"><span style="font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; &nbsp; </span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">5.银行维护状态：</span></strong></span><span style="color:#666666;font-size:14px;font-family:'Microsoft YaHei';">新增银行维护状态，维护期间，仍可绑卡，不可充提。</span></span></span>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"><span style="font-family:Microsoft YaHei;"><span style="font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; &nbsp;</span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;"> 6.公告跳转功能：</span></strong></span><span style="color:#666666;font-size:14px;font-family:'Microsoft YaHei';">点击某条轮播的公告可跳转至某具体公告，不再是默认公告页。</span></span></span>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"><span style="font-family:Microsoft YaHei;"><span style="font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; &nbsp; </span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">7.投注页面优化：</span></strong></span><span style="color:#666666;font-size:14px;font-family:'Microsoft YaHei';">点击投注页下方的我的投注中的任意一条投注记录或追号记录可以直接显示详情。</span></span></span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"><span style="color:#666666;font-size:14px;font-family:'Microsoft YaHei';"><span style="font-family:Microsoft YaHei;"><span style="font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; &nbsp; </span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">8.时时彩组三单式：</span></strong></span><span style="color:#666666;font-size:14px;font-family:'Microsoft YaHei';">录入格式变更，录入格式由两位变更为三位，即录入如112,223这样的格式，各为一注。</span></span></span></span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"><span style="color:#666666;font-size:14px;font-family:'Microsoft YaHei';"><span style="font-family:Microsoft YaHei;"><span style="font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; &nbsp;&nbsp;</span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">9.充值引导优化：</span></strong></span><span style="color:#666666;font-size:14px;font-family:'Microsoft YaHei';">平台推荐的充值方式将会显示“充值有奖”的红色标签。</span></span></span></span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';"><span style="color:#666666;font-size:14px;font-family:&quot;"><span style="font-family:'Microsoft YaHei';font-size:14px;">&nbsp; &nbsp; </span><strong><span style="font-family:'Microsoft YaHei';font-size:14px;">10.以及其他相关功能的升级和优化。</span></strong></span></span></span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;background-color:#EEEEEE;"></span></span>
                    </p>
                    <p>
                        <br />
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <strong><span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;">温馨提示：更新将于01月06日凌晨2点开始，通常需1-2个小时，更新过程将影响您的游戏操作。</span></strong><strong><span style="color:#009999;font-family:'Microsoft YaHei';font-size:14px;">请您提前做好游戏规划</span></strong>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
	<span style="color:#009999;"><strong><br />
</strong></span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <span style="color:#333333;font-family:&quot;font-size:14px;"><span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;">请您周知如上更新，感谢您对我们的信任与支持！</span></span>
                    </p>
                    <p style="color:#000033;font-family:'Microsoft YaHei';font-size:14px;">
                        <br />
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
	<span style="color:#333333;"><span style="color:#666666;"><span style="font-family:'Microsoft YaHei';font-size:14px;"></span><br />
</span></span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;">--鼎汇·万客运营部--</span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <span style="color:#666666;font-family:'Microsoft YaHei';font-size:14px;">2018年01月05日</span>
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <img src="https://upload.cc/i/wXYbDW.png" alt="" />
                    </p>
                    <p style="color:#000033;font-family:&quot;font-size:14px;">
                        <br />
                    </p>
                    <div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
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
