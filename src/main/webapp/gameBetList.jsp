<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); %>
<% String sss = simpleDateFormat.format(System.currentTimeMillis()); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>金牌娱乐 - 游戏记录</title>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8"/>
    <link rel="icon" href="/resource/favicon.ico"  type="image/x-icon" />
    <link rel="stylesheet" href="/resource/reset.css?ver=20170908"/>
    <link rel="stylesheet" href="/resource/wk-common.css?ver=20170908"/>
    <script type="text/javascript" src="/resource/jquery-1.11.0.min.js?ver=20170908"></script>
    <script type="text/javascript" src="/resource/jquery.timer.js?ver=20170908"></script>
    <script type="text/javascript" src="/resource/layer.js?ver=20170908"></script>
    <script type="text/javascript" src="/resource/jquery.cookie.js?ver=20170908"></script>
    <script type="text/javascript" src="/resource/spinner.js?ver=20170908"></script>
    <script type="text/javascript" src="/resource/audio/audio5.js?ver=20170908"></script>
    <script type="text/javascript" src="/resource/base.js?ver=20170908"></script>


    <link rel="stylesheet" href="/resource/wk-accountCentre.css?ver=20170908" />
    <script type="text/javascript" src="/resource/math.extends.js?ver=20170908"></script>
    <script type="text/javascript" src="/resource/My97DatePicker/WdatePicker.js?ver=20170908"></script>
    <script type="text/javascript">
        var account ="${account}";
    </script>
    <script type="text/javascript" src="/resource/game/index.js?ver=20170908"></script>
    <script type="text/javascript" src="/resource/pagerAjax.js?ver=20170908"></script>

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

                            <ul class="lotteryGroupList">
                                <!--
                                <li><a href="/lotts/tiger/index" class="lottplayExplain">鼎汇秒秒彩</a></li>

                                <li><a href="/lotts/sj_mmc/index" class="lottplayExplain">鼎汇40秒</a></li>

                                <li><a href="/lotts/sj1fc/index" class="lottplayExplain">鼎汇一分彩</a></li>

                                <li><a href="/lotts/sj3fc/index" class="lottplayExplain">鼎汇三分彩</a></li>

                                <li><a href="/lotts/sj5fc/index" class="lottplayExplain">鼎汇五分彩</a></li>

                                <li><a href="/lotts/gppl5/index" class="lottplayExplain">高频排列5</a></li>

                            </ul>

                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/jndbsc/index" class="lottplayExplain">加拿大3.5</a></li>

                                <li><a href="/lotts/tx1fc/index" class="lottplayExplain">腾讯分分彩</a></li>

                                <li><a href="/lotts/dj1_5/index" class="lottplayExplain">东京1.5</a></li>

                            </ul>
                            -->
                            <ul class="lotteryGroupList">

                                <li><a href="/lotts/cqssc/index" class="lottplayExplain">重庆时时彩</a></li><li><a href="/lotts/txssc/index" class="lottplayExplain">腾讯分分彩</a></li>

                                <li><a href="/lotts/tjssc/index" class="lottplayExplain">天津时时彩</a></li>

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

                                <li><a href="/lotts/shk3/index" class="lottplayExplain">上海快3</a></li>

                                <li><a href="/lotts/ahk3/index" class="lottplayExplain">安徽快3</a></li>

                                <li><a href="/lotts/jsk3/index" class="lottplayExplain">江苏快3</a></li>

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

<!-- 报表中心 -->
<div class="areaBigContainer mainWidth" id="reportCenterArea">

    <div class="containerFlex">
        <!-- 列表 -->
        <div class="leftListArea">
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail gameBetListA${gameBetList}" data-id="#gameBetList"><i></i>投注记录</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail traceA${gameBetList}" data-id="#trace"><i></i>追号记录</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail betListA" data-id="#betList" href="/report/index?tabId=betList"><i></i>团队投注明细</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail teamReportListA" data-id="#teamReportList" href="/report/index?tabId=teamReportList"><i></i>团队盈亏报表</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail finRechargeA" data-id="#financeList" href="/report/index?tabId=rechargeList"><i></i>团队充值明细</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail finDepositA" data-id="#financeList" href="/report/index?tabId=depositList"><i></i>团队提款明细</a>
            </div>
            <div class="leftListDetail">
                <a class="leftListBigItem centreNavDetail settlementA" data-id="#settlement" href="/report/index?tabId=settlement"><i></i>团队账变明细</a>
            </div>
        </div>
        <!-- 内容 -->
        <div class="rightArea">
            <div class="accountCentreContent">
                <!-- 投注记录列表 -->
                <div class="userListArea" id="gameBetList" style="display:block;">
                    <!-- 查询条件 -->
                    <form class="searchBar userListSearch" id="searchArgs">
                        <label>
                            <span class="labelTitle">彩种：</span>
                            <select id="lotteryId" name="lotteryId" class="labelCond selectCond lotteryId" >
                                <option value="">所有彩种</option>

                                <option value="tiger">鼎汇秒秒彩</option>

                                <option value="sj_mmc">鼎汇40秒</option>

                                <option value="sj1fc">鼎汇一分彩</option>

                                <option value="sj3fc">鼎汇三分彩</option>

                                <option value="sj5fc">鼎汇五分彩</option>

                                <option value="gppl5">高频排列5</option>

                                <option value="jndbsc">加拿大3.5</option>

                                <option value="jnd3_5">加拿大卑斯彩</option>

                                <option value="tx1fc">腾讯分分彩</option>

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

                                <option value="shk3">上海快3</option>

                                <option value="ahk3">安徽快3</option>

                                <option value="jsk3">江苏快3</option>

                                <option value="f1_11x5">一分11选5</option>

                                <option value="f3_11x5">三分11选5</option>

                                <option value="gd11x5">广东11选5</option>

                                <option value="ah11x5">安徽11选5</option>

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
                            <span class="labelTitle">投注时间：</span>
                            <input type="text" class="labelCond Wdate" id="conditionStartTime" value="<%=sss %> 00:00:00" name="startTime" onClick="WdatePicker({startDate: '%y-%M-%d 04:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width: 135px;"/>
                            <span>~</span>
                            <input type="text" class="labelCond Wdate" id="conditionEndTime" value="<%=sss %> 23:59:59" name="endTime" onClick="WdatePicker({startDate: '%y-%M-%d 04:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width: 135px;" />
                        </label>
                        <label>
                            <a href="javascript:;" class="btn" id="search">搜索</a>
                        </label>
                    </form>
                    <!-- 投注记录数据 -->
                    <div class="tableBox" id="gameRecordBox">
                        <table class="gameRecordListTable" id="gameRecordListTable">
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
                            <tbody id="gameRecordHeader"></tbody>
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
                                <select class="labelCond selectCond" id="pageShowNum_searchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, 'searchArgs', 'search');">
                                    <option value="15" selected="selected" >15条</option>
                                    <option value="25"  >25条</option>
                                    <option value="50"  >50条</option>
                                </select>
                                <span>共<span id="pageRowSpan_searchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_searchArgs">0</span>/</span><span id="pageTotalSpan_searchArgs">0</span><span>页</span>
                            </div>
                            <div class="page-r">
                                <div class="page-home">
                                    <a id="pageHome_searchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                </div>
                                <div class="page-list">
                                    <a id="pagePrev_searchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                    <input type="text" id="pageList_searchArgs" class="labelCond" value="0" />
                                    <a id="pageNext_searchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                </div>
                                <div class="page-end">
                                    <a id="pageEnd_searchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(function() {
                                $("#searchArgs").prepend("<input type='hidden' id='pageSize_searchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_searchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_searchArgs' value='search' />");
                            });
                        </script>
                    </div>
                </div>

                <!-- 追号记录列表 -->
                <div class="traceListArea" id="trace" style="display:none;">
                    <div class="traceListBox" id="traceDelList">
                        <!-- 查询条件 -->
                        <form class="searchBar traceListSearch" id="traceSearchArgs">
                            <label>
                                <span class="labelTitle">彩种：</span>
                                <select id="traceLotteryId" name="lotteryId" class="labelCond selectCond lotteryId" >
                                    <option value="">所有彩种</option>

                                    <option value="tiger">鼎汇秒秒彩</option>

                                    <option value="sj_mmc">鼎汇40秒</option>

                                    <option value="sj1fc">鼎汇一分彩</option>

                                    <option value="sj3fc">鼎汇三分彩</option>

                                    <option value="sj5fc">鼎汇五分彩</option>

                                    <option value="gppl5">高频排列5</option>

                                    <option value="jndbsc">加拿大3.5</option>

                                    <option value="jnd3_5">加拿大卑斯彩</option>

                                    <option value="tx1fc">腾讯分分彩</option>

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

                                    <option value="shk3">上海快3</option>

                                    <option value="jsk3">江苏快3</option>

                                    <option value="f1_11x5">一分11选5</option>

                                    <option value="f3_11x5">三分11选5</option>

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
                                    <option value="">全部</option>
                                    <option value="1">已完成</option>
                                    <option value="0">进行中</option>
                                </select>
                            </label>
                            <label><span class="labelTitle">追号时间：</span>
                                <input type="text" class="labelCond Wdate startTime" value="<%=sss %> 00:00:00" name="startTime" onClick="WdatePicker({startDate: '%y-%M-%d 04:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width: 135px;" />
                                <span>~</span>
                                <input type="text" class="labelCond Wdate endTime" value="<%=sss %> 23:59:59" name="endTime" onClick="WdatePicker({startDate: '%y-%M-%d 04:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width: 135px;" />
                            </label>
                            <label>
                                <a href="javascript:;" class="btn" id="searchTraceList">搜索</a>
                            </label>
                        </form>
                        <!-- 追号记录数据 -->
                        <div class="tableBox" id="gameRecordBox">
                            <table class="traceRecordListTable" id="traceRecordListTable">
                                <thead>
                                <tr class="listHeader" >
                                    <th>用户</th>
                                    <th>彩种/玩法</th>
                                    <th>起始期号</th>
                                    <th>已追/总期数</th>
                                    <th>已投/总金额</th>
                                    <th>追中即停</th>
                                    <th>追号时间</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody id="traceRecordHeader"></tbody>
                            </table>
                            <!-- 没有消息 -->
                            <div class="nullMsg" id="traceNullMsg">
                                <i class="nullMsgImg"></i>
                                <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                            </div>
                            <!-- 分页 -->





                            <div class="pagination">
                                <div class="page-l">
                                    <span>每页</span>
                                    <select class="labelCond selectCond" id="pageShowNum_traceSearchArgs" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, 'traceSearchArgs', 'searchTraceList');">
                                        <option value="15" selected="selected" >15条</option>
                                        <option value="25"  >25条</option>
                                        <option value="50"  >50条</option>
                                    </select>
                                    <span>共<span id="pageRowSpan_traceSearchArgs">0</span>条 </span><span>第<span id="pageCurrSpan_traceSearchArgs">0</span>/</span><span id="pageTotalSpan_traceSearchArgs">0</span><span>页</span>
                                </div>
                                <div class="page-r">
                                    <div class="page-home">
                                        <a id="pageHome_traceSearchArgs" href="javascript:void(0);" class="homePage">第一页</a>
                                    </div>
                                    <div class="page-list">
                                        <a id="pagePrev_traceSearchArgs" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                        <input type="text" id="pageList_traceSearchArgs" class="labelCond" value="0" />
                                        <a id="pageNext_traceSearchArgs" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                                    </div>
                                    <div class="page-end">
                                        <a id="pageEnd_traceSearchArgs" href="javascript:void(0);" class="endPage">最后一页</a>
                                    </div>
                                </div>
                            </div>
                            <script type="text/javascript">
                                $(function() {
                                    $("#traceSearchArgs").prepend("<input type='hidden' id='pageSize_traceSearchArgs' name='rows' value='15' /><input type='hidden' id='pageCurr_traceSearchArgs' name='page' value='1' /><input type='hidden' id='pageBtnId_traceSearchArgs' value='searchTraceList' />");
                                });
                            </script>
                        </div>
                    </div>

                    <!-- 追号详情 -->
                    <div class="betsAppNumListArea" id="traceSummaryList" style="display: none;">
                        <h1 class="areaTitle">追号详情</h1>
                        <a href="javascript:;" class="returnPrev" onclick="getBack()"><--返回</a>
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
                                <div class="headerBtn" id="endAppNum">
                                    <!--  <a href="javascript:;" class="btn endAppNum">终止追号</a> -->
                                </div>
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
                    </div>
                </div>

                <!-- 彩中彩记录列表 -->
                <div class="userListArea" id="betInList" style="display:none;">
                    <!-- 查询条件 -->
                    <form class="searchBar userListSearch" id="betInSearch">

                        <label for="#">
                            <span class="labelTitle">用户名：</span>
                            <input type="text" class="labelCond userName" name="account" value="" />
                            <input type="checkbox" class="checkbox" name="isIncludeChildFlag" value="1" />
                            <span>包含下级</span>
                        </label>

                        <label>
                            <span class="labelTitle">游戏编号：</span>
                            <input type="text" class="labelCond userName" name="betId" value="" />
                        </label>
                        <label>
                            <span class="labelTitle">彩种：</span>
                            <select name="lotteryName" class="labelCond selectCond lotteryId" >
                                <option value="">所有彩种</option>

                                <option value="鼎汇秒秒彩">鼎汇秒秒彩</option>

                                <option value="鼎汇40秒">鼎汇40秒</option>

                                <option value="鼎汇一分彩">鼎汇一分彩</option>

                                <option value="鼎汇三分彩">鼎汇三分彩</option>

                                <option value="鼎汇五分彩">鼎汇五分彩</option>

                                <option value="高频排列5">高频排列5</option>

                                <option value="加拿大3.5">加拿大3.5</option>

                                <option value="加拿大卑斯彩">加拿大卑斯彩</option>

                                <option value="腾讯分分彩">腾讯分分彩</option>

                                <option value="台湾5分彩">台湾5分彩</option>

                                <option value="东京1.5">东京1.5</option>

                                <option value="重庆时时彩">重庆时时彩</option>

                                <option value="天津时时彩">天津时时彩</option>

                                <option value="新疆时时彩">新疆时时彩</option>

                                <option value="北京时时彩">北京时时彩</option>

                                <option value="北京赛车">北京赛车</option>

                                <option value="分分PK10">分分PK10</option>

                                <option value="3分PK10">3分PK10</option>

                                <option value="5分PK10">5分PK10</option>

                                <option value="上海快3">上海快3</option>

                                <option value="安徽快3">安徽快3</option>

                                <option value="江苏快3">江苏快3</option>

                                <option value="一分11选5">一分11选5</option>

                                <option value="三分11选5">三分11选5</option>

                                <option value="广东11选5">广东11选5</option>

                                <option value="安徽11选5">安徽11选5</option>

                                <option value="江西11选5">江西11选5</option>

                                <option value="山东11选5">山东11选5</option>

                                <option value="排列三">排列三</option>

                                <option value="排列5">排列5</option>

                                <option value="福彩3D">福彩3D</option>

                            </select>
                        </label>
                        <label>
                            <span class="labelTitle">投注时间：</span>
                            <input type="text" class="labelCond Wdate" id="conditionStartTime" value="<%=sss %> 00:00:00" name="beginTime" onClick="WdatePicker({startDate: '%y-%M-%d 04:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width:135px;"/>
                            <span>~</span>
                            <input type="text" class="labelCond Wdate" id="conditionEndTime" value="<%=sss %> 23:59:59" name="endTime" onClick="WdatePicker({startDate: '%y-%M-%d 04:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss'})" style="width:135px;" />
                        </label>
                        <label>
                            <a href="javascript:;" class="btn" id="betInBtn">搜索</a>
                        </label>
                    </form>
                    <!-- 彩中彩记录数据 -->
                    <div class="tableBox" id="gameInRecordBox">
                        <table class="gameRecordListTable" id="gameInRecordListTable">
                            <thead>
                            <tr class="listHeader">
                                <th width="5%">序号</th>
                                <th width="10%">账号 </th>
                                <th width="10%">开启彩种 </th>
                                <th width="10%">开启玩法</th>
                                <th width="10%">启动金额</th>
                                <th width="15%">开启时间</th>
                                <th width="10%">游戏次数</th>
                                <th width="10%">游戏金额</th>
                                <th width="10%">中奖金额</th>
                                <th width="10%">操作</th>
                            </tr>
                            </thead>
                        </table>
                        <!-- 没有消息 -->
                        <div class="nullMsg" id="nullMsg">
                            <i class="nullMsgImg"></i>
                            <span class="fontColorGray">没有符合条件的记录，请更改查询条件！</span>
                        </div>
                    </div>
                    <!-- 分页 -->





                    <div class="pagination">
                        <div class="page-l">
                            <span>每页</span>
                            <select class="labelCond selectCond" id="pageShowNum_betInSearch" name="pageShowNum" onchange="hs.pagination.reloadPage(1, this.value, 'betInSearch', 'betInBtn');">
                                <option value="15" selected="selected" >15条</option>
                                <option value="25"  >25条</option>
                                <option value="50"  >50条</option>
                            </select>
                            <span>共<span id="pageRowSpan_betInSearch">0</span>条 </span><span>第<span id="pageCurrSpan_betInSearch">0</span>/</span><span id="pageTotalSpan_betInSearch">0</span><span>页</span>
                        </div>
                        <div class="page-r">
                            <div class="page-home">
                                <a id="pageHome_betInSearch" href="javascript:void(0);" class="homePage">第一页</a>
                            </div>
                            <div class="page-list">
                                <a id="pagePrev_betInSearch" href="javascript:void(0);" class="pageDone pagePrevious">&lt;</a>
                                <input type="text" id="pageList_betInSearch" class="labelCond" value="0" />
                                <a id="pageNext_betInSearch" href="javascript:void(0);" class="pageDone pageNext">&gt;</a>
                            </div>
                            <div class="page-end">
                                <a id="pageEnd_betInSearch" href="javascript:void(0);" class="endPage">最后一页</a>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(function() {
                            $("#betInSearch").prepend("<input type='hidden' id='pageSize_betInSearch' name='rows' value='15' /><input type='hidden' id='pageCurr_betInSearch' name='page' value='1' /><input type='hidden' id='pageBtnId_betInSearch' value='betInBtn' />");
                        });
                    </script>
                </div>

                <!-- 彩中彩详情弹框 -->
                <div id="betInDiv" style="display: none">
                    <div class="tableBox betConfirmBox betInDivBox" id="betInDivBox"></div>
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

<div id="contentDetailsArea" style="display:none;">
    <div class="detailNumTextArea" id="contentDetailsPlan" style="border:1px solid #ccc;overflow: auto;">
        <div id="contentDetails" style="word-break: break-all;"></div>
    </div>
    <div class="dialogBtn">
        <a href="javascript:;" class="btn closeBtn" >确定</a>
    </div>
</div>

<script type="text/javascript">
    $(function() {
        $('#betInBtn').click(function(){
            ajaxLoad('gameInRecordBox','/lotts/betIn/betInTotalTable', $('#betInSearch').serialize(), function() {
                hs.pagination.refleshPages($('#pageCountBetIn').val(), 'betInSearch', 'betInBtn');
            });
        });
        //玩法切换
        $(".centreNavDetail").click(function() {
            $(".centreNavDetail").removeClass("active");
            $(this).addClass("active");
            $(".accountCentreContent>div").hide();
            var id = $(this).attr("data-id");
            $(id).show();
        });

        //标签跳转
        var tabId = "gameBetList";
        if (tabId) {
            $(".centreNavDetail[data-id='#"+tabId+"']").click();
        }
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
        <p>@金牌娱乐  版权所有 2010-2018 copyright DH·VK Interactive Network Techno Co.</p>
    </div>
</div>

</body>
</html>
