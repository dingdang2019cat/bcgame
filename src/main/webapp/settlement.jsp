<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2017/12/17
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0048)/report/index?tabId=settlement -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>鼎汇·万客 - 报表中心</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8">
    <link rel="icon" href="/resource/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/resource/reset.css">
    <link rel="stylesheet" href="/resource/wk-common.css">
    <script type="text/javascript" src="/resource/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="/resource/jquery.timer.js"></script>
    <script type="text/javascript" src="/resource/layer.js"></script><link rel="stylesheet" href="/resource/layer.css" id="layui_layer_skinlayercss" style="">
    <script type="text/javascript" src="/resource/jquery.cookie.js"></script>
    <script type="text/javascript" src="/resource/spinner.js"></script><style type="text/css"></style>
    <script type="text/javascript" src="/resource/audio/audio5.js"></script>
    <script type="text/javascript" src="/resource/base.js"></script>


    <link rel="stylesheet" href="/resource/wk-accountCentre.css">
    <script type="text/javascript" src="/resource/My97DatePicker/WdatePicker.js"></script>
    <!--<link href="/resource/My97DatePicker/WdatePicker.css" rel="stylesheet" type="text/css">-->
    <script type="text/javascript" src="/resource/math.extends.js"></script>
    <script type="text/javascript">
        var webProfitBiginTime ="2017-12-17";
        var webProfitEndTime ="2017-12-17";
    </script>
    <script type="text/javascript" src="/resource/report/index.js"></script>
    <script type="text/javascript" src="/resource/pagerAjax.js"></script>

</head>
<body style="">


<!--头部-->
<div class="header">
    <div class="w1150">
        <a class="logo" href="/index"></a>
        <div class="betsHallBox">
            <a href="javascript:;" class="betsHall">所有游戏 <span style="font-family:&#39;宋体&#39;;font-size: 14px;">&gt;</span></a>
            <!--所有彩种-->
            <div class="allLotteryList" style="">
                <div class="hotLotteryList" style="height: 384px;">
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
        <a href="javascript:;" class="recharge" onclick="javascript:if(&#39;0&#39; == 1 || &#39;0&#39; == 3){$.alert(&#39;您的充值功能已被冻结！&#39;);}else{window.location.href=&#39;/recharge/rechargeMoney&#39;}"></a>
        <a href="javascript:;" class="drawMoney" onclick="javascript:if(&#39;0&#39; == 2 || &#39;0&#39; == 3){$.alert(&#39;您的提现功能已被冻结！&#39;);}else{window.location.href=&#39;/deposit/deposit&#39;}"></a>
        <label class="outstandingTopBox">
            <a href="javascript:;" class="outstandingIcon"></a>
            <div class="outstandingNav">
                <a href="/recharge/rechargeOutstanding">催充值未到账</a>
                <a href="/deposit/depositOutstanding">催提现未到账</a>
            </div>
        </label>
        <div class="headerR">
            <a href="https://kf1.learnsaas.com/chat/chatClient/chatbox.jsp?companyID=814048&amp;configID=62880&amp;jid=3635228849&amp;s=1" class="customerService" target="_blank"><i></i>联系客服</a>
            <a href="javascript:;" class="refresh" id="refererUser"><i class=""></i>刷新</a>
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
    <a class="bbzx active" href="/report/index" title="报表中心"></a>
    <a class="bzzx" href="/helpCenter/index" title="帮助中心"></a>
    <a class="top" href="/report/index?tabId=settlement#top"></a>
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

<!-- 报表中心 -->
<div class="areaBigContainer mainWidth" id="reportCenterArea">

    <div class="containerFlex">
        <!-- 列表 -->
        <div class="leftListArea">
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail gameBetListA" data-id="#gameBetList" href="/game/index?tabId=gameBetList"><i></i>投注记录</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail traceA" data-id="#trace" href="/game/index?tabId=trace"><i></i>追号记录</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail betListA" data-id="#betList"><i></i>团队投注明细</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail teamReportListA" data-id="#teamReportList"><i></i>团队盈亏报表</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail finRechargeA" data-id="#rechargeList"><i></i>团队充值明细</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail finDepositA" data-id="#depositList"><i></i>团队提款明细</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail settlementA active" data-id="#settlement"><i></i>团队账变明细</a>
            </div>
        </div>
        <!-- 内容 -->
        <div class="rightArea">
            <div class="accountCentreContent">
                <!-- 团队投注明细列表 -->
                <div class="betListArea" id="betList" style="display: none;">
                    <!-- 查询条件 -->
                    <form class="searchBar betListSearch" id="betSearchArgs"><input type="hidden" id="pageSize_betSearchArgs" name="rows" value="15"><input type="hidden" id="pageCurr_betSearchArgs" name="page" value="1"><input type="hidden" id="pageBtnId_betSearchArgs" value="searchBetList">
                        <label>
                            <span class="labelTitle">时间：</span>
                            <input type="text" class="labelCond Wdate" id="conditionStartTime" value="2017-12-17 00:00:00" name="startTime" onclick="WdatePicker({startDate: &#39;%y-%M-%d 04:00:00&#39;,dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width:135px;">
                            <span>至</span>
                            <input type="text" class="labelCond Wdate" id="conditionEndTime" value="2017-12-17 23:59:59" name="endTime" onclick="WdatePicker({startDate: &#39;%y-%M-%d 04:00:00&#39;,dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width:135px;">
                        </label>
                        <label>
                            <span class="labelTitle">游戏：</span>
                            <select id="lotteryId" name="lotteryId" class="labelCond selectCond lotteryId">
                                <option value="">所有彩种</option>

                                <option value="tiger">鼎汇秒秒彩</option>

                                <option value="sj_mmc">鼎汇40秒</option>

                                <option value="sj1fc">鼎汇一分彩</option>

                                <option value="sj3fc">鼎汇三分彩</option>

                                <option value="sj5fc">鼎汇五分彩</option>

                                <option value="gppl5">高频排列5</option>

                                <option value="tx1fc">腾讯分分彩</option>

                                <option value="jnd3_5">加拿大卑斯彩</option>

                                <option value="jndbsc">加拿大3.5</option>

                                <option value="tw5fc">台湾5分彩</option>

                                <option value="dj1_5">东京1.5</option>

                                <option value="cqssc">重庆时时彩</option>

                                <option value="tjssc">天津时时彩</option>

                                <option value="xjssc">新疆时时彩</option>

                                <option value="bjssc">北京时时彩</option>

                                <option value="pk10">北京赛车</option>

                                <option value="ffpk10">分分PK10</option>

                                <option value="f3pk10">3分PK10</option>

                                <option value="f5pk10">5分PK10</option>

                                <option value="ahk3">安徽快3</option>

                                <option value="jsk3">江苏快3</option>

                                <option value="shk3">上海快3</option>

                                <option value="f1_11x5">一分11选5</option>

                                <option value="f3_11x5">三分11选5</option>

                                <option value="ah11x5">安徽11选5</option>

                                <option value="gd11x5">广东11选5</option>

                                <option value="jx11x5">江西11选5</option>

                                <option value="sd11x5">山东11选5</option>

                                <option value="pl3">排列三</option>

                                <option value="pl5">排列5</option>

                                <option value="3d">福彩3D</option>

                            </select>
                        </label>
                        <label>
                            <span class="labelTitle">状态：</span>
                            <select name="status" class="labelCond selectCond playerId" id="status">
                                <option value="">所有状态</option>
                                <option value="0">未开奖</option>
                                <option value="1">已中奖</option>
                                <option value="2">未中奖</option>
                                <option value="10">已撤单</option>
                            </select>
                        </label>
                        <label>
                            <span class="labelTitle">用户名：</span>
                            <input type="text" class="labelCond" name="account">
                        </label>
                        <label>
                            <a href="javascript:;" class="btn" id="searchBetList">搜索</a>
                        </label>
                    </form>
                    <!-- 团队投注明细数据 -->
                    <div class="tableBox" id="betRecordBox">
                        <table class="betRecordListTable" id="betRecordListTable">
                            <thead>
                            <tr class="listHeader">
                                <th>用户</th>
                                <th>彩种</th>
                                <th>玩法</th>
                                <th>投注期号</th>
                                <th width="200">投注内容</th>
                                <th>投注时间</th>
                                <th>投注金额</th>
                                <th>奖金</th>
                                <th>追号</th>
                                <th>状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="betRecordHeader"></tbody>
                        </table>
                        <!-- 没有消息 -->
                        <div class="nullMsg" id="betNullMsg">
                            <i class="nullMsgImg"></i>
                            <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                        </div>
                        <!-- 分页 -->





                        <div class="pagination">
                            <div class="page-l">
                                <span>每页</span>
                                <select class="labelCond selectCond" id="pageShowNum_betSearchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, &#39;betSearchArgs&#39;, &#39;searchBetList&#39;);">
                                    <option value="15" selected="selected">15条</option>
                                    <option value="25">25条</option>
                                    <option value="50">50条</option>
                                </select>
                                <span>共<span id="pageRowSpan_betSearchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_betSearchArgs">0</span>/</span><span id="pageTotalSpan_betSearchArgs">0</span><span>页</span>
                            </div>
                            <div class="page-r">
                                <div class="page-home">
                                    <a id="pageHome_betSearchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                </div>
                                <div class="page-list">
                                    <a id="pagePrev_betSearchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                    <input type="text" id="pageList_betSearchArgs" class="labelCond" value="0">
                                    <a id="pageNext_betSearchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                </div>
                                <div class="page-end">
                                    <a id="pageEnd_betSearchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function() {
                                $("#betSearchArgs").prepend("<input type='hidden' id='pageSize_betSearchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_betSearchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_betSearchArgs' value='searchBetList' />");
                            });
                        </script>
                    </div>
                </div>
                <!-- 团队账变明细 -->
                <div class="settlementListArea" id="settlement" style="">
                    <!-- 查询条件 -->
                    <form class="searchBar settlementListSearch" id="settlementSearchArgs"><input type="hidden" id="pageSize_settlementSearchArgs" name="rows" value="15"><input type="hidden" id="pageCurr_settlementSearchArgs" name="page" value="1"><input type="hidden" id="pageBtnId_settlementSearchArgs" value="searchSettlementList">
                        <!--                         <label> -->
                        <!--                             <span class="labelTitle">&emsp;彩种：</span> -->
                        <!--                             <select id="settlementLotteryId" class="labelCond selectCond lottery" name="lotteryId"> -->
                        <!--                                 <option value="">所有彩种</option> -->



                        <!--                             </select> -->
                        <!--                         </label> -->
                        <!--                         <label> -->
                        <!--                            <span class="labelTitle">账变类型：</span> -->
                        <!--                            <select name="accountChangeTypeId" class="labelCond selectCond accountChangeTypeId" id="accountChangeTypeId"> -->
                        <!--                                 <option value="0">所有类型</option> -->



                        <!--                             </select> -->
                        <!--                        </label> -->
                        <!--                        <label> -->
                        <!--                             <span class="labelTitle">期号：</span> -->
                        <!--                             <input type="text" class="labelCond" id="seasonIds" name="seasonId" /> -->
                        <!--                        </label> -->
                        <label>
                            <span class="labelTitle" style="width: 50px;"> 时间：</span>
                            <input type="text" class="labelCond  Wdate" name="begin" value="2017-12-17 00:00:00" onclick="WdatePicker({startDate: &#39;%y-%M-%d 00:00:00&#39;,dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width:160px;">
                            <span>~</span>
                            <input type="text" class="labelCond Wdate" name="end" value="2017-12-17 23:59:59" onclick="WdatePicker({startDate: &#39;%y-%M-%d 23:59:59&#39;,dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width:160px;">
                        </label>

                        <label>
                            <span class="labelTitle">用户名：</span>
                            <input type="text" class="labelCond" name="account" value="">
                            <input name="status" class="checkbox" type="checkbox" value="1">
                            <span>包含下级</span>
                        </label>

                        <label>
                            <a href="javascript:;" class="btn" id="searchSettlementList">搜索</a>
                        </label>
                    </form>
                    <!-- 彩票账变数据 -->
                    <div class="tableBox" id="settlementRecordBox">
                        <table class="settlementRecordListTable" id="settlementRecordListTable">
                            <thead>
                            <tr class="listHeader">
                                <th>序号</th>
                                <th>用户</th>
                                <th>彩种</th>
                                <th>期号</th>
                                <th>玩法</th>
                                <th>类别</th>
                                <th>时间</th>
                                <th>金额</th>
                                <th>模式</th>
                                <th>用户余额</th>
                                <th>账变类型</th>
                            </tr>
                            </thead>
                            <tbody id="settlementRecordHeader"></tbody>
                        </table>
                        <!-- 没有消息 -->
                        <div class="nullMsg" id="settlementNullMsg">
                            <i class="nullMsgImg"></i>
                            <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                        </div>
                        <!-- 分页 -->





                        <div class="pagination">
                            <div class="page-l">
                                <span>每页</span>
                                <select class="labelCond selectCond" id="pageShowNum_settlementSearchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, &#39;settlementSearchArgs&#39;, &#39;searchSettlementList&#39;);">
                                    <option value="15" selected="selected">15条</option>
                                    <option value="25">25条</option>
                                    <option value="50">50条</option>
                                </select>
                                <span>共<span id="pageRowSpan_settlementSearchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_settlementSearchArgs">0</span>/</span><span id="pageTotalSpan_settlementSearchArgs">0</span><span>页</span>
                            </div>
                            <div class="page-r">
                                <div class="page-home">
                                    <a id="pageHome_settlementSearchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                </div>
                                <div class="page-list">
                                    <a id="pagePrev_settlementSearchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                    <input type="text" id="pageList_settlementSearchArgs" class="labelCond" value="0">
                                    <a id="pageNext_settlementSearchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                </div>
                                <div class="page-end">
                                    <a id="pageEnd_settlementSearchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function() {
                                $("#settlementSearchArgs").prepend("<input type='hidden' id='pageSize_settlementSearchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_settlementSearchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_settlementSearchArgs' value='searchSettlementList' />");
                            });
                        </script>
                    </div>
                </div>

                <!-- 个人盈亏报表-->
                <div class="userListArea" id="userReportList" style="display:none;">
                    <!-- 查询条件 -->
                    <form class="searchBar userReportSearch" id="userReportSearchArgs"><input type="hidden" id="pageSize_userReportSearchArgs" name="rows" value="15"><input type="hidden" id="pageCurr_userReportSearchArgs" name="page" value="1"><input type="hidden" id="pageBtnId_userReportSearchArgs" value="search">
                        <label>
                            <span class="labelTitle">设定时间：</span>
                            <select name="historyAndNow" class="labelCond selectCond test" id="historyAndNow">
                                <option value="0">今天统计</option>
                                <option value="1">历史总计</option>
                            </select>
                        </label>
                        <label style="display:none;" id="conditionDate">
                            <input type="text" class="labelCond  Wdate" id="conditionStartTime" value="2017-12-17" name="startTime" onclick="WdatePicker({maxDate:&#39;%y-%M-%d&#39;})"><span>(00:00:00)</span>
                            <span>~</span>
                            <input type="text" class="labelCond Wdate" id="conditionEndTime" value="2017-12-17" name="endTime" onclick="WdatePicker({maxDate:&#39;%y-%M-%d&#39;})"><span>(23:59:59)</span>
                        </label>
                        <label>
                            <a href="javascript:;" class="btn" id="search">搜索</a>
                        </label><br>
                        <label>
                            <span class="labelTitle">备注：</span>
                            <span class="fontColorRed" id="remarks">※今天统计※ 会统计您今日的盈亏总和</span>
                        </label>
                    </form>
                    <!-- 个人盈亏报表数据 -->
                    <div class="tableBox" id="userReportBox">
                        <table class="userReportListTable" id="userReportdListTable">
                            <thead>
                            <tr class="listHeader">
                                <th>用户</th>
                                <th>时间</th>
                                <th>投注总额</th>
                                <th>返点总额</th>
                                <th>实际销售总额</th>
                                <th>中奖总额</th>
                                <th>活动总额</th>
                                <th>充值总额</th>
                                <th>提款总额</th>
                                <th>总盈亏</th>
                            </tr>
                            </thead>
                            <tbody id="userReportHeader"></tbody>
                        </table>
                        <!-- 没有消息 -->
                        <div class="nullMsg" id="nullMsg">
                            <i class="nullMsgImg"></i>
                            <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                        </div>
                        <!-- 分页 -->





                        <div class="pagination">
                            <div class="page-l">
                                <span>每页</span>
                                <select class="labelCond selectCond" id="pageShowNum_userReportSearchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, &#39;userReportSearchArgs&#39;, &#39;search&#39;);">
                                    <option value="15" selected="selected">15条</option>
                                    <option value="25">25条</option>
                                    <option value="50">50条</option>
                                </select>
                                <span>共<span id="pageRowSpan_userReportSearchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_userReportSearchArgs">0</span>/</span><span id="pageTotalSpan_userReportSearchArgs">0</span><span>页</span>
                            </div>
                            <div class="page-r">
                                <div class="page-home">
                                    <a id="pageHome_userReportSearchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                </div>
                                <div class="page-list">
                                    <a id="pagePrev_userReportSearchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                    <input type="text" id="pageList_userReportSearchArgs" class="labelCond" value="0">
                                    <a id="pageNext_userReportSearchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                </div>
                                <div class="page-end">
                                    <a id="pageEnd_userReportSearchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function() {
                                $("#userReportSearchArgs").prepend("<input type='hidden' id='pageSize_userReportSearchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_userReportSearchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_userReportSearchArgs' value='search' />");
                            });
                        </script>
                    </div>
                </div>

                <!-- 团队盈亏报表-->
                <div class="userListArea" id="teamReportList" style="display:none;">
                    <!-- 查询条件 -->
                    <form class="searchBar teamReportSearch" id="teamReportSearchArgs"><input type="hidden" id="pageSize_teamReportSearchArgs" name="rows" value="15"><input type="hidden" id="pageCurr_teamReportSearchArgs" name="page" value="1"><input type="hidden" id="pageBtnId_teamReportSearchArgs" value="teamReportSearch">
                        <label class="searchCondition">
                            <span class="labelTitle">查询条件：</span>
                            <a href="javascript:;" class="btn searchTeamBtn active" onclick="teamRecord(2, this)">团队盈亏详情</a>
                            <a href="javascript:;" class="btn searchTeamBtn" onclick="teamRecord(1, this)">每日盈亏记录</a>
                            <input name="teamStatus" value="2" id="teamHistoryAndNow" type="hidden">
                        </label>
                        <label>
                            <span class="labelTitle">时间：</span>
                            <input type="text" class="labelCond  Wdate" id="teamConditionStartTime" value="2017-12-17" name="startTime" onclick="WdatePicker({minDate:&#39;2017-11-02&#39;,maxDate:&#39;%y-%M-%d&#39;})"><span>(00:00:00)</span>
                            <span>至</span>
                            <input type="text" class="labelCond Wdate" id="teamConditionEndTime" value="2017-12-17" name="endTime" onclick="WdatePicker({minDate:&#39;2017-11-02&#39;,maxDate:&#39;%y-%M-%d&#39;})"><span>(23:59:59)</span>
                            <span class="changeTime" id="showChoose">
	   							<a href="javascript:;" class="active" onclick="chooseTime(1, this)">今日</a>
	                        	<a href="javascript:;" onclick="chooseTime(2, this)" class="">昨日</a>
	                        	<a href="javascript:;" onclick="chooseTime(3, this)" class="">本月</a>
	    					</span>
                        </label>
                        <label id="accountArea">
                            <span class="labelTitle"> 用户名：</span>
                            <input type="text" class="labelCond" id="teamAccount" name="account">
                        </label>
                        <label>
                            <a href="javascript:;" class="btn" id="teamReportSearch">搜索</a>
                        </label>
                        <label>
                            <span class="labelTitle">备注：</span>
                            <span class="fontColorRed" id="teamRemarks">※团队盈亏详情※ 会统计您查询时间内的团队盈亏总和，以及下一级的团队盈亏总和。包含当天数据</span>
                        </label>
                    </form>
                    <p class="userBreadCrumb" id="testing"></p>
                    <!-- 团队汇总 -->
                    <div class="tableBox" id="allTeamReportBox">
                        <h2>团队整体汇总结果</h2>
                        <table class="allTeamReportListTable" id="allTeamReportListTable">
                            <thead>
                            <tr class="listHeader">
                                <th>总实际投注</th>
                                <th>总返点</th>
                                <th>总中奖</th>
                                <th>总活动</th>
                                <th>总日工资</th>
                                <th>总盈亏</th>
                                <th>总充值</th>
                                <th>总提款</th>
                            </tr>
                            </thead>
                            <tbody id="allTeamReportHeader"></tbody>
                        </table>
                    </div>
                    <!-- 个人汇总 -->
                    <div class="tableBox" id="allPersonalReportBox">
                        <h2>个人整体汇总结果</h2>
                        <table class="allTeamReportListTable" id="allPersonalReportListTable">
                            <thead>
                            <tr class="listHeader">
                                <th>总实际投注</th>
                                <th>总返点</th>
                                <th>总中奖</th>
                                <th>总活动</th>
                                <th>总日工资</th>
                                <th>总盈亏</th>
                                <th>总充值</th>
                                <th>总提款</th>
                            </tr>
                            </thead>
                            <tbody id="allPersonalReportHeader"></tbody>
                        </table>
                    </div>
                    <!-- 团队盈亏报表数据 -->
                    <div class="tableBox" id="teamReportBox">
                        <h2>直接下级(即各自团队)分列详细结果</h2>
                        <table class="teamReportListTable" id="teamReportListTable">
                            <thead>
                            <tr class="listHeader">
                                <th>账号</th>
                                <th>实际投注</th>
                                <th>返点</th>
                                <th>中奖</th>
                                <th>活动</th>
                                <th>日工资</th>
                                <th>盈亏</th>
                                <th>充值</th>
                                <th>提款</th>
                            </tr>
                            </thead>
                            <tbody id="teamReportHeader"></tbody>
                        </table>
                        <!-- 没有消息 -->
                        <div class="nullMsg" id="teamNullMsg">
                            <i class="nullMsgImg"></i>
                            <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                        </div>
                        <!-- 分页 -->





                        <div class="pagination">
                            <div class="page-l">
                                <span>每页</span>
                                <select class="labelCond selectCond" id="pageShowNum_teamReportSearchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, &#39;teamReportSearchArgs&#39;, &#39;teamReportSearch&#39;);">
                                    <option value="15" selected="selected">15条</option>
                                    <option value="25">25条</option>
                                    <option value="50">50条</option>
                                </select>
                                <span>共<span id="pageRowSpan_teamReportSearchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_teamReportSearchArgs">0</span>/</span><span id="pageTotalSpan_teamReportSearchArgs">0</span><span>页</span>
                            </div>
                            <div class="page-r">
                                <div class="page-home">
                                    <a id="pageHome_teamReportSearchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                </div>
                                <div class="page-list">
                                    <a id="pagePrev_teamReportSearchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                    <input type="text" id="pageList_teamReportSearchArgs" class="labelCond" value="0">
                                    <a id="pageNext_teamReportSearchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                </div>
                                <div class="page-end">
                                    <a id="pageEnd_teamReportSearchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function() {
                                $("#teamReportSearchArgs").prepend("<input type='hidden' id='pageSize_teamReportSearchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_teamReportSearchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_teamReportSearchArgs' value='teamReportSearch' />");
                            });
                        </script>
                    </div>
                    <!-- 每日盈亏记录报表数据 -->
                    <div class="tableBox" id="dayReportBox" style="display:none;">
                        <table class="teamReportListTable" id="dayReportListTable">
                            <thead>
                            <tr class="listHeader">
                                <th>账号</th>
                                <th>时间</th>
                                <th>总实际投注</th>
                                <th>总返点</th>
                                <th>总中奖</th>
                                <th>总活动</th>
                                <th>总日工资</th>
                                <th>总盈亏</th>
                                <th>总充值</th>
                                <th>总提款</th>
                            </tr>
                            </thead>
                            <tbody id="dayReportHeader"></tbody>
                        </table>
                        <!-- 没有消息 -->
                        <div class="nullMsg" id="dayNullMsg">
                            <i class="nullMsgImg"></i>
                            <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                        </div>
                        <!-- 分页 -->





                        <div class="pagination">
                            <div class="page-l">
                                <span>每页</span>
                                <select class="labelCond selectCond" id="pageShowNum_dayReportSearchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, &#39;dayReportSearchArgs&#39;, &#39;dayReportSearch&#39;);">
                                    <option value="15" selected="selected">15条</option>
                                    <option value="25">25条</option>
                                    <option value="50">50条</option>
                                </select>
                                <span>共<span id="pageRowSpan_dayReportSearchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_dayReportSearchArgs">0</span>/</span><span id="pageTotalSpan_dayReportSearchArgs">0</span><span>页</span>
                            </div>
                            <div class="page-r">
                                <div class="page-home">
                                    <a id="pageHome_dayReportSearchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                </div>
                                <div class="page-list">
                                    <a id="pagePrev_dayReportSearchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                    <input type="text" id="pageList_dayReportSearchArgs" class="labelCond" value="0">
                                    <a id="pageNext_dayReportSearchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                </div>
                                <div class="page-end">
                                    <a id="pageEnd_dayReportSearchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function() {
                                $("#dayReportSearchArgs").prepend("<input type='hidden' id='pageSize_dayReportSearchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_dayReportSearchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_dayReportSearchArgs' value='dayReportSearch' />");
                            });
                        </script>
                    </div>
                </div>

                <!-- 团队充值明细报表-->
                <div class="userListArea" id="rechargeList" style="display:none;">
                    <!-- 查询条件 -->
                    <form class="searchBar rechargeSearch" id="rechargeSearchArgs"><input type="hidden" id="pageSize_rechargeSearchArgs" name="rows" value="15"><input type="hidden" id="pageCurr_rechargeSearchArgs" name="page" value="1"><input type="hidden" id="pageBtnId_rechargeSearchArgs" value="rechargeSearch">
                        <label>
                            <span class="labelTitle">时间：</span>
                            <input type="text" class="labelCond Wdate" id="conditionStartTime" value="2017-12-17 00:00:00" name="startTime" onclick="WdatePicker({startDate: &#39;%y-%M-%d 04:00:00&#39;,dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width:135px;">
                            <span>至</span>
                            <input type="text" class="labelCond Wdate" id="conditionEndTime" value="2017-12-17 23:59:59" name="endTime" onclick="WdatePicker({startDate: &#39;%y-%M-%d 04:00:00&#39;,dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width:135px;">
                        </label>
                        <label>
                            <span class="labelTitle"> 用户名：</span>
                            <input type="text" class="labelCond" id="rechargeAccount" name="account">
                        </label>
                        <label>
                            <input type="radio" checked="checked" name="isIncludeChildFlag" value="0">
                            <span class="labelTitle">个人</span>
                            <input type="radio" name="isIncludeChildFlag" value="1">
                            <span class="labelTitle">团队</span>
                        </label>
                        <label>
                            <a href="javascript:;" class="btn" id="rechargeSearch">搜索</a>
                        </label>

                    </form>
                    <!-- 团队充值明细数据 -->
                    <div class="tableBox" id="rechargeBox">
                        <table class="userListTable" id="rechargeListTable">
                            <thead>
                            <tr class="listHeader">
                                <th>账户</th>
                                <th>充值编号</th>
                                <th>充值时间</th>
                                <th>充值金额</th>
                                <th>到账金额</th>
                                <th>充值方式</th>
                                <th>状态</th>
                            </tr>
                            </thead>
                            <tbody id="rechargeHeader"></tbody>
                        </table>
                        <!-- 没有消息 -->
                        <div class="nullMsg" id="rechargeNullMsg">
                            <i class="nullMsgImg"></i>
                            <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                        </div>
                        <!-- 分页 -->





                        <div class="pagination">
                            <div class="page-l">
                                <span>每页</span>
                                <select class="labelCond selectCond" id="pageShowNum_rechargeSearchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, &#39;rechargeSearchArgs&#39;, &#39;rechargeSearch&#39;);">
                                    <option value="15" selected="selected">15条</option>
                                    <option value="25">25条</option>
                                    <option value="50">50条</option>
                                </select>
                                <span>共<span id="pageRowSpan_rechargeSearchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_rechargeSearchArgs">0</span>/</span><span id="pageTotalSpan_rechargeSearchArgs">0</span><span>页</span>
                            </div>
                            <div class="page-r">
                                <div class="page-home">
                                    <a id="pageHome_rechargeSearchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                </div>
                                <div class="page-list">
                                    <a id="pagePrev_rechargeSearchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                    <input type="text" id="pageList_rechargeSearchArgs" class="labelCond" value="0">
                                    <a id="pageNext_rechargeSearchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                </div>
                                <div class="page-end">
                                    <a id="pageEnd_rechargeSearchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function() {
                                $("#rechargeSearchArgs").prepend("<input type='hidden' id='pageSize_rechargeSearchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_rechargeSearchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_rechargeSearchArgs' value='rechargeSearch' />");
                            });
                        </script>
                    </div>
                </div>

                <!-- 团队提现明细报表-->
                <div class="userListArea" id="depositList" style="display:none;">
                    <!-- 查询条件 -->
                    <form class="searchBar depositSearch" id="depositSearchArgs"><input type="hidden" id="pageSize_depositSearchArgs" name="rows" value="15"><input type="hidden" id="pageCurr_depositSearchArgs" name="page" value="1"><input type="hidden" id="pageBtnId_depositSearchArgs" value="depositSearch">
                        <label>
                            <span class="labelTitle">时间：</span>
                            <input type="text" class="labelCond Wdate" id="conditionStartTime" value="2017-12-17 00:00:00" name="startTime" onclick="WdatePicker({startDate: &#39;%y-%M-%d 04:00:00&#39;,dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width:135px;">
                            <span>至</span>
                            <input type="text" class="labelCond Wdate" id="conditionEndTime" value="2017-12-17 23:59:59" name="endTime" onclick="WdatePicker({startDate: &#39;%y-%M-%d 04:00:00&#39;,dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width:135px;">
                        </label>
                        <label>
                            <span class="labelTitle"> 用户名：</span>
                            <input type="text" class="labelCond" id="depositAccount" name="account">
                        </label>
                        <label>
                            <input type="radio" checked="checked" name="isIncludeChildFlag" value="0">
                            <span class="labelTitle">个人</span>
                            <input type="radio" name="isIncludeChildFlag" value="1">
                            <span class="labelTitle">团队</span>
                        </label>
                        <label>
                            <a href="javascript:;" class="btn" id="depositSearch">搜索</a>
                        </label>

                    </form>
                    <!-- 团队提现明细数据 -->
                    <div class="tableBox" id="depositBox">
                        <table class="userListTable" id="depositListTable">
                            <thead>
                            <tr class="listHeader">
                                <th>账户</th>
                                <th>提现编号</th>
                                <th>提现时间</th>
                                <th>提现金额</th>
                                <th>到账金额</th>
                                <th>状态</th>
                                <th>备注</th>
                            </tr>
                            </thead>
                            <tbody id="depositHeader"></tbody>
                        </table>
                        <!-- 没有消息 -->
                        <div class="nullMsg" id="depositNullMsg">
                            <i class="nullMsgImg"></i>
                            <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                        </div>
                        <!-- 分页 -->





                        <div class="pagination">
                            <div class="page-l">
                                <span>每页</span>
                                <select class="labelCond selectCond" id="pageShowNum_depositSearchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, &#39;depositSearchArgs&#39;, &#39;depositSearch&#39;);">
                                    <option value="15" selected="selected">15条</option>
                                    <option value="25">25条</option>
                                    <option value="50">50条</option>
                                </select>
                                <span>共<span id="pageRowSpan_depositSearchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_depositSearchArgs">0</span>/</span><span id="pageTotalSpan_depositSearchArgs">0</span><span>页</span>
                            </div>
                            <div class="page-r">
                                <div class="page-home">
                                    <a id="pageHome_depositSearchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                </div>
                                <div class="page-list">
                                    <a id="pagePrev_depositSearchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                    <input type="text" id="pageList_depositSearchArgs" class="labelCond" value="0">
                                    <a id="pageNext_depositSearchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                </div>
                                <div class="page-end">
                                    <a id="pageEnd_depositSearchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function() {
                                $("#depositSearchArgs").prepend("<input type='hidden' id='pageSize_depositSearchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_depositSearchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_depositSearchArgs' value='depositSearch' />");
                            });
                        </script>
                    </div>
                </div>


                <!-- 银行充提 -->
                <div class="userListArea" id="financeList" style="display:none;">
                    <!-- 查询条件 -->
                    <form class="searchBar userListSearch" id="financeForm"><input type="hidden" id="pageSize_financeForm" name="rows" value="15"><input type="hidden" id="pageCurr_financeForm" name="page" value="1"><input type="hidden" id="pageBtnId_financeForm" value="financeSearch">
                        <label for="#">
                            <span class="labelTitle">帐变时间：</span>
                            <input type="text" class="labelCond Wdate" id="startTime" name="startTime" value="2017-12-17 00:00:00" onclick="WdatePicker({dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width: 160px;">
                            <span>~</span>
                            <input type="text" class="labelCond Wdate" id="endTime" name="endTime" value="2017-12-17 23:59:59" onclick="WdatePicker({dateFmt:&#39;yyyy-MM-dd HH:mm:ss&#39;})" style="width: 160px;">
                        </label>

                        <label for="#">
                            <span class="labelTitle">用户名：</span>
                            <input type="text" class="labelCond userName" id="changeUser" name="changeUser" value="">
                            <input type="checkbox" class="checkbox" id="isIncludeChildFlag" name="isIncludeChildFlag" value="0">
                            <span>包含下级</span>
                        </label>

                        <label for="#">
                            <span class="labelTitle">帐变类型：</span>
                            <select class="labelCond selectCond" name="accountChangeTypeId">
                                <option value="-1">不限</option>

                                <option value="11">在线充值

                                </option><option value="12">银行充值

                            </option><option value="13">充值手续费

                            </option><option value="14">上级充值

                            </option><option value="15">为下级充值

                            </option><option value="16">提款申请

                            </option><option value="17">提款失败

                            </option><option value="18">提款成功

                            </option><option value="19">活动派发

                            </option><option value="20">理赔充值

                            </option><option value="21">现金充值

                            </option><option value="22">系统分红

                            </option><option value="23">后台扣减

                            </option><option value="24">平台充值

                            </option><option value="25">消费佣金

                            </option><option value="26">为下级充值失败

                            </option><option value="28">日工资

                            </option><option value="29">团队活动

                            </option><option value="30">周期分红

                            </option><option value="40">下级日工资

                            </option><option value="41">私返

                            </option><option value="88">为下级分红

                            </option><option value="89">上级分红

                            </option></select>
                        </label>
                        <a href="javascript:;" class="btn" id="financeSearch">搜索</a>
                    </form>
                    <div class="tableBox" id="financeListBox">
                        <table class="userListTable">
                            <tbody><tr class="listHeader">
                                <th width="10%">帐变用户</th>
                                <th width="10%">帐变编号</th>
                                <th width="8%">帐变类型</th>
                                <th width="12%">帐变时间</th>
                                <th width="10%">收入</th>
                                <th width="10%">支出</th>
                                <th width="10%">帐变金额</th>
                                <th width="10%">用户余额</th>
                                <th width="10%">备注</th>
                                <th width="5%">状态</th>
                            </tr>
                            </tbody></table>
                        <!-- 没有消息 -->
                        <div class="nullMsg" id="nullMsg">
                            <i class="nullMsgImg"></i>
                            <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                        </div>
                    </div>





                    <div class="pagination">
                        <div class="page-l">
                            <span>每页</span>
                            <select class="labelCond selectCond" id="pageShowNum_financeForm" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, &#39;financeForm&#39;, &#39;financeSearch&#39;);">
                                <option value="15" selected="selected">15条</option>
                                <option value="25">25条</option>
                                <option value="50">50条</option>
                            </select>
                            <span>共<span id="pageRowSpan_financeForm">0</span>条 </span><span>第<span id="pageCurrSpan_financeForm">0</span>/</span><span id="pageTotalSpan_financeForm">0</span><span>页</span>
                        </div>
                        <div class="page-r">
                            <div class="page-home">
                                <a id="pageHome_financeForm" href="javascript:void(0);" class="homePage">第一页</a>
                            </div>
                            <div class="page-list">
                                <a id="pagePrev_financeForm" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                <input type="text" id="pageList_financeForm" class="labelCond" value="0">
                                <a id="pageNext_financeForm" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                            </div>
                            <div class="page-end">
                                <a id="pageEnd_financeForm" href="javascript:void(0);" class="endPage">最后一页</a>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(function() {
                            $("#financeForm").prepend("<input type='hidden' id='pageSize_financeForm' name='rows' value='15' /><input type='hidden' id='pageCurr_financeForm' name='page' value='1' /><input type='hidden' id='pageBtnId_financeForm' value='financeSearch' />");
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
                <div id="delContent"></div>
            </div>
        </div>
    </div>
    <div class="detailBody">
        <table class="detailTable overflowTable">
            <tbody><tr class="listHeader">
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
                <td><span id="delOpenNum"></span></td>
                <td><span id="delBonusType"></span></td>
                <td><span class="fontColorTheme" id="delWin"></span></td>
            </tr>
            </tbody></table>
    </div>
    <div class="dialogBtn">
        <a href="javascript:;" class="btn closeBtn">关闭</a>
    </div>
</div>

<div id="contentDetailsArea" style="display:none;">
    <div class="detailNumTextArea" id="contentDetailsPlan" style="border:1px solid #ccc;overflow: auto;">
        <div id="contentDetails" style="word-break: break-all;"></div>
    </div>
    <div class="dialogBtn">
        <a href="javascript:;" class="btn closeBtn">确定</a>
    </div>
</div>

<script type="text/javascript">
    var acc = '';
    $(function() {
        $('#financeSearch').click(function(){
            ajaxLoad('financeListBox','/finance/financeChangeTable', $('#financeForm').serialize(), function() {
                hs.pagination.refleshPages($('#pageCountFinance').val(), 'financeForm', 'financeSearch');
            });
        });
        //玩法切换
        $(".centreNavDetail").click(function() {
            $(".centreNavDetail").removeClass("active");
            $(this).addClass("active");
            $(".accountCentreContent>div").hide();
            var id = $(this).attr("data-id");
            $(id).show();

            // 第一次点击面板时，自动查询
            if(id == "#settlement" && acc!='') {
                $("#searchSettlementList").click();
            }
        });

        //标签跳转
        var tabId = "settlement";
        if (tabId) {
            $(".centreNavDetail[data-id='#"+tabId+"']").click();
        }
        $('#isIncludeChildFlag').click(function(){
            if(this.value==0){
                this.value=1;
            } else {
                this.value=0;
            }
        });
    });
</script>



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


</body></html>