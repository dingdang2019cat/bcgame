<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/1/11
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>金牌娱乐 - 帮助中心</title>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <link rel="icon" href="/resource/favicon.ico"  type="image/x-icon" />
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

    <link rel="stylesheet" href="/resource/wk-helpCenter.css?ver=20180105"/>
    <script type="text/javascript" src="/resource/helpCenter/index.js?ver=20180105"></script>
    <script type="text/javascript">
        var id = '';
        $(function() {
            if (id) {
                $(".leftListArea a[data-id='"+id+"']").click();
            }
        });
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
                </div>
                <div class="lotteryList" id="lotteryList">

                    <div class="lottDetail">
                        <i class="lotteryTitle title_ssc" title="时时彩"></i>
                        <div class="lotteryDetdailList">

                            <ul class="lotteryGroupList">

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


<!-- 帮助中心 -->
<div class="areaBigContainer mainWidth" id="helpCenterArea">
    <div class="containerFlex">
        <!-- 帮助中心-列表 -->
        <div class="leftListArea">

            <div class="leftListDetail">

                <h2 class="leftListBigItem"> 常见问题</h2>
                <div class="leftListItem" style="display:none;">

                    <a href='javascript:;' class="nav" data-id="7"> 游戏类</a>

                    <a href='javascript:;' class="nav" data-id="6"> 充提类</a>

                    <a href='javascript:;' class="nav" data-id="8"> 安全类</a>

                </div>

            </div>

            <div class="leftListDetail">

                <h2 class="leftListBigItem"> 账户</h2>
                <div class="leftListItem" style="display:none;">

                    <a href='javascript:;' class="nav" data-id="11"> 个人资料</a>

                    <a href='javascript:;' class="nav" data-id="10"> 密码</a>

                    <a href='javascript:;' class="nav" data-id="9"> 注册开户</a>

                </div>

            </div>

            <div class="leftListDetail">

                <h2 class="leftListBigItem"> 充值提现</h2>
                <div class="leftListItem" style="display:none;">

                    <a href='javascript:;' class="nav" data-id="17"> 银行卡相关</a>

                    <a href='javascript:;' class="nav" data-id="16"> 提现相关</a>

                    <a href='javascript:;' class="nav" data-id="15"> 充值相关</a>

                    <a href='javascript:;' class="nav" data-id="14"> 快捷支付充值步骤</a>

                    <a href='javascript:;' class="nav" data-id="13"> 网银充值</a>

                    <a href='javascript:;' class="nav" data-id="12"> 充值方式</a>

                    <a href='javascript:;' class="nav" data-id="50"> 支付宝转银行卡步骤</a>

                    <a href='javascript:;' class="nav" data-id="54"> 微信扫码步骤</a>

                    <a href='javascript:;' class="nav" data-id="52"> 在线网银充值步骤</a>

                    <a href='javascript:;' class="nav" data-id="53"> 支付宝扫码步骤</a>

                </div>

            </div>

            <div class="leftListDetail">

                <h2 class="leftListBigItem"> 彩种玩法</h2>
                <div class="leftListItem" style="display:none;">

                    <a href='javascript:;' class="nav" data-id="45"> 玩法介绍</a>

                    <a href='javascript:;' class="nav" data-id="43"> 鼎汇娱乐特色彩种介绍</a>

                    <a href='javascript:;' class="nav" data-id="39"> 北京赛车</a>

                    <a href='javascript:;' class="nav" data-id="41"> 彩种介绍</a>

                    <a href='javascript:;' class="nav" data-id="18"> 时时彩玩法</a>

                    <a href='javascript:;' class="nav" data-id="19"> 11选5玩法</a>

                    <a href='javascript:;' class="nav" data-id="20"> P3/P5</a>

                    <a href='javascript:;' class="nav" data-id="21"> 3D</a>

                </div>

            </div>

            <div class="leftListDetail">

                <h2 class="leftListBigItem"> 平台信息</h2>
                <div class="leftListItem" style="display:none;">

                    <a href='javascript:;' class="nav" data-id="24"> 平台各彩种开奖时间表</a>

                    <a href='javascript:;' class="nav" data-id="25"> 派奖流程</a>

                    <a href='javascript:;' class="nav" data-id="26"> 派奖时间</a>

                    <a href='javascript:;' class="nav" data-id="27"> 奖金限额</a>

                    <a href='javascript:;' class="nav" data-id="28"> 中奖查看</a>

                </div>

            </div>

            <div class="leftListDetail">

                <h2 class="leftListBigItem"> 安全保障</h2>
                <div class="leftListItem" style="display:none;">

                    <a href='javascript:;' class="nav" data-id="29"> 账号安全</a>

                    <a href='javascript:;' class="nav" data-id="34"> 加密防盗技术</a>

                    <a href='javascript:;' class="nav" data-id="33"> 隐私安全</a>

                    <a href='javascript:;' class="nav" data-id="32"> 购彩安全</a>

                    <a href='javascript:;' class="nav" data-id="31"> 资金安全</a>

                    <a href='javascript:;' class="nav" data-id="30"> 充提安全</a>

                </div>

            </div>

            <div class="leftListDetail">

            </div>

        </div>
        <!-- 帮助中心内容 -->
        <div class="rightArea">
            <!-- 帮助中心刚进入展示区域 -->
            <div class="indexBox">
                <div class="helpCenterIndex-l">
                    <!-- 自主服务 -->
                    <div class="autoServicesBox">
                        <h3>自主服务</h3>
                        <div class="autoServices">
                            <a href="/user/index?tabId=modLoginPwd" class="autoServiceDetail">
                                <i class="lock-white"></i>
                                <span>修改登录密码</span>
                            </a>
                            <a href="/user/index?tabId=modAccountPwd" class="autoServiceDetail">
                                <i class="money-white"></i>
                                <span>修改资金密码</span>
                            </a>
                            <a href="/user/index?tabId=personInfo" class="autoServiceDetail">
                                <i class="qq-white"></i>
                                <span>修改QQ</span>
                            </a>
                            <a href="/user/index?tabId=personInfo" class="autoServiceDetail">
                                <i class="msg-white"></i>
                                <span>修改邮箱</span>
                            </a>
                        </div>
                    </div>
                    <!-- 最受关注的问题 -->
                    <div class="focusQuestionsBox" id="focusQuestionsBox">














                        <h3>最受关注的问题</h3>
                        <ol class="focusQuestions">

                            <li class="focusQuestionDetail"><a href='javascript:;' class='textUnderline' data-id="49">防劫持教程</a></li>

                            <li class="focusQuestionDetail"><a href='javascript:;' class='textUnderline' data-id="38">交易协定</a></li>

                        </ol>


                    </div>
                </div>
                <div class="helpCenterIndex-r">
                    <h3>在线客服</h3>
                    <div class="helpOnlineService">
                        <a href="http://dkc.duokebo.com/webchat/chat.aspx?siteid=730985" class="btn" target="_blank">点击开始</a>
                    </div>
                    <span>以下是我们的客服人员，我们绝对不会以任何形式向您索要您的账号和密码，请妥善保管好您的账号信息！</span>
                    <div class="onlineServicePersons">
                        <label for="#">
                            <img src="/resource/helpCenter/servicePersonIcon1.png" alt="春兰" />
                            <span>Candy</span>
                        </label>
                        <label for="#">
                            <img src="/resource/helpCenter/servicePersonIcon2.png" alt="夏荷" />
                            <span>Linda</span>
                        </label>
                        <label for="#">
                            <img src="/resource/helpCenter/servicePersonIcon3.png" alt="秋菊" />
                            <span>大山</span>
                        </label>
                        <label for="#">
                            <img src="/resource/helpCenter/servicePersonIcon4.png" alt="冬梅" />
                            <span>婷婷</span>
                        </label>
                        <label for="#">
                            <img src="/resource/helpCenter/servicePersonIcon5.png" alt="春雷" />
                            <span>美美</span>
                        </label>












                    </div>
                </div>
            </div>
            <!-- 帮助中心-通用详情 -->
            <div class="helpCenterCommonDetail" style="display:none;" id="helpCenterCommonDetail">
                <div class="helpCenterCommonTitle">
                    <h3 id="helpCenterCommonTitle">如何在金牌娱乐平台进行购彩？</h3>
                    <span id="helpCenterCommonTime">2015-12-21 18:26</span>
                </div>
                <div class="helpCenterCommonContent" id="helpCenterCommonContent"></div>
                <div class="helpCenterCommonBtn">
                    <p>如果以上内容无法解决您的问题，请联系我们的客服</p>
                    <a href="http://dkc.duokebo.com/webchat/chat.aspx?siteid=730985" class="btn helpCenterServiceOL" target="_blank">在线咨询</a>
                </div>
            </div>
        </div>
    </div>
    <i class="shadow"></i>
    <i class="shadow2"></i>
    <i class="shadow3"></i>
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
