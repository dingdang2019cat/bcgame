<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE html>
<html>
<head>
<title>管理平台</title>
<meta charset="utf-8">
</head>
<body>
	
<%
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	String s = format.format(System.currentTimeMillis());
%>
<div id="dailiheadmenu"></div>
<div class="modal fade" id="logout" tabindex="-1" role="dialog" aria-labelledby="logoutLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="logoutLabel">提示</h4>
			</div>
			<div class="modal-body">确定退出登录吗？</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="doLogout();">确定</button>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="head_editpwd" tabindex="-1" role="dialog" aria-labelledby="head_editpwdLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="head_editpwdLabel">修改密码</h4>
			</div>
			<div class="modal-body">
				<table class="table table-bordered table-striped" style="clear: both">
					<tbody>
						<tr>
							<td width="20%" class="text-right">用户名：</td>
							<td width="80%" class="text-left"><input type="text" class="form-control" value="<%=session.getAttribute("user") %>" id="head_pwdat" disabled="disabled" /></td>
						</tr>
						<tr>
							<td width="20%" class="text-right">密码类型：</td>
							<td width="80%" class="text-left"><select class="form-control" id="ohead_pwd_type"><option value="1">登录密码</option>
									<option value="2">提款密码</option></select></td>
						</tr>
						<tr>
							<td width="20%" class="text-right">旧密码：</td>
							<td width="80%" class="text-left"><input type="password" class="form-control" id="ohead_pwd" /></td>
						</tr>
						<tr>
							<td width="20%" class="text-right">新密码：</td>
							<td width="80%" class="text-left"><input type="password" class="form-control" id="head_pwd" /></td>
						</tr>
						<tr>
							<td width="20%" class="text-right">确认密码：</td>
							<td width="80%" class="text-left"><input type="password" class="form-control" id="rhead_pwd" /></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="doUpdpwd();">保存</button>
			</div>
		</div>
	</div>
</div>


<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="common/jquery-1.12.3.min.js"></script>
<script src="common/moment.min.js"></script>
<script src="common/zh-cn.js" charset="gbk"></script>

<!-- 可选的Bootstrap -->
<script src="common/bootstrap.min.js"></script>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="common/bootstrap.min.css"/>

<!-- 最新的 Bootstrap table 核心 JavaScript 文件 -->
<script src="common/bootstrap-table.min.js"></script>
<!-- 新 Bootstrap table 核心 CSS 文件 -->
<link rel="stylesheet" href="common/bootstrap-table.min.css"/>

<!-- 最新的 Bootstrap table 核心 JavaScript 文件 -->
<script src="common/bootstrap-table-zh-CN.min.js" charset="gbk"></script>


<!-- x-editable (bootstrap 3) -->
<link href="common/bootstrap-editable.css" rel="stylesheet"/>
<script src="common/bootstrap-editable.min.js"></script>

<!-- 最新的 Bootstrap table 核心 JavaScript 文件 -->
<script src="common/bootstrap-datetimepicker.min.js" charset="gbk"></script>
<script src="common/bootstrap-datetimepicker.zh-CN.js" charset="gbk"></script>

<!-- switch (bootstrap 3) -->
<link href="common/bootstrap-switch.min.css" rel="stylesheet"/>
<script src="common/bootstrap-switch.min.js" charset="gbk"></script>


<!-- 最新的 Bootstrap table 核心 JavaScript 文件 -->
<script src="common/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="common/bootstrap-datepicker.min.css"/>
<link rel="stylesheet" href="common/bootstrap-datetimepicker.min.css"/>

<script type="text/javascript" src="common/template.js"></script>

<script src="common/core.js?v=1" path="" charset="gbk"></script>
<script src="common/contants.js" charset="gbk"></script>

<link rel="stylesheet" href="common/layer.css" id="layui_layer_skinlayercss" />
<script src="common/layer.js" charset="gbk"></script>
<script src="common/layer.src.js" charset="gbk"></script>
<script src="common/dailistyle.js" charset="gbk"></script>
<!-- 复制工具 -->
<script src="common/jquery.zclip.min.js"></script>



<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="/admin">设置</a></li>

				<li><a href="dlaccount.jsp">会员管理</a></li>

				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> <span class="glyphicon glyphicon-fire"
																																								aria-hidden="true"></span> 游戏记录 <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">

						<li class=""><a href="gameRecord.jsp">彩票投注记录</a></li>

					</ul></li>
				<li><a href="noticeAdmin.jsp">公告管理</a></li>
				<li><a href="znxManager.jsp">站内信管理</a></li>

				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> <span class="glyphicon glyphicon-fire"
																																								aria-hidden="true"></span> 分红提成 <span class="caret"></span>
				</a>
				<li><a href="fenhonglist.jsp">分红记录</a></li>


				<li><a href="dldrawrd.jsp">取款日志</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><%=session.getAttribute("user") %><span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						<li><a href="#" data-toggle="modal" data-target="#head_editpwd">修改密码</a></li>
						<li><a href="#" data-toggle="modal" data-target="#logout">退出</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</nav>
<div style="height: 52px;">&nbsp;</div>
<script type="text/javascript">
	$(function() {
		$("#navbar > ul li").hover(function() {
			$(this).addClass('open');
		}, function() {
			$(this).removeClass('open');
		});
	});
	function doLogout() {
		window.location.href = "mlogout.action";
	}

	function doUpdpwd() {
		var opassword = $("#ohead_pwd").val();
		var password = $("#head_pwd").val();
		var rpassword = $("#rhead_pwd").val();

		if (!opassword) {
			Msg.info("旧密码不能为空！");
			return;
		}

		if (!password) {
			Msg.info("新密码不能为空！");
			return;
		}
		if (!rpassword) {
			Msg.info("确认密码不能为空！");
			return;
		}

		if (password !== rpassword) {
			Msg.info("两次密码不一致！");
			return;
		}
		$.ajax({
			url : "updloginpwd.action",
			data : {
				pwd : password,
				rpwd : rpassword,
				opwd : opassword,
				pwdType : $("#ohead_pwd_type").val()
			},
			success : function(result) {
				if ($("#ohead_pwd_type").val() == 1) {
					Msg.confirm('修改成功,请重新登录', {
						btn : [ '确定' ]
					}, function() {
						window.location.href = "mlogout.action";
					});
				} else {
					Msg.info("修改成功！");
				}
			}
		});
	}
</script>

<input type="hidden" id="lottype" value="-1">
	<div class="container">
		<div id="toolbar">
			<div class="form-group">
				<div class="form-inline">
					<div class="input-group">
						<input type="text" class="form-control" value="<%=s %> 00:00:00" id="begin" placeholder="开始日期"> <span class="glyphicon glyphicon-th form-control-feedback" aria-hidden="true"></span>
					</div>
					<button class="btn btn-default">今日</button>
					<button class="btn btn-default">昨日</button>
					<button class="btn btn-default">本周</button>
					<div class="form-group">
						<div class="input-group">
							<input type="text" class="form-control" id="account" placeholder="会员账号">
						</div>
						<div class="input-group">
							<label class="sr-only" for="type">类型</label> 
							<select class="form-control" id="type">
								<option value="9">全部类型</option>
								<option value="0">等待开奖</option>
								<option value="1">已中奖</option>
								<option value="2">未中奖</option>
								<option value="10">撤单</option>
								<option value="5">派奖回滚成功</option>
								<option value="6">回滚异常的</option>
								<option value="7">开奖异常</option>
								<option value="8">和局</option>
							</select>
						</div>
						<div class="input-group">
							<label class="sr-only" for="czType">彩种类型</label> 
							<select class="form-control" id="czType">
								<option value="-1">全部彩种</option>
							</select>
						</div>
					</div>
					<button class="btn btn-primary" onclick="search();">查询</button>
				</div>
				<div class="form-inline" style="margin-top: 5px;">
					<div class="input-group">
						<input type="text" id="end" value="<%=s %> 23:59:59" class="form-control" placeholder="线束日期"> <span class="glyphicon glyphicon-th form-control-feedback" aria-hidden="true"></span>
					</div>
					<button class="btn btn-default">上周</button>
					<button class="btn btn-default">本月</button>
					<button class="btn btn-default">上月</button>
					<div class="input-group">
						<input type="text" class="form-control" id="yxQiHao" placeholder="投注期号">
					</div>
					<div class="input-group">
						<input type="text" class="form-control" id="yxOrder" placeholder="订单号">
					</div>
				</div>
			</div>
		</div>
		<table id="datagrid_tb"  data-show-footer="true"></table>

	</div>
	
	<div class="modal fade" id="editmodel"
		tabindex="-1" role="dialog" aria-labelledby="editLabel"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="editLabel">订单详情</h4>
				</div>
				<div class="modal-body">
					<table class="table table-bordered table-striped"
						style="clear: both">
						<tbody>
							<tr>
								<td width="20%" class="text-center" colspan="4">订单号:<span id="dingdh"></span></td>
							</tr>
							<tr>
								<td width="20%" class="text-right">账号:</td>
								<td width="35%" class="text-left"><span id="zhangh"></span></td>
								<td width="20%" class="text-right">单注金额:</td>
								<td width="35%" class="text-left"><span id="danzje"></span></td>
							</tr>
							<tr>
								<td width="20%" class="text-right">下注时间:</td>
								<td width="35%" class="text-left"><span id="xiazsj"></span></td>
								<td width="20%" class="text-right">投注注数:</td>
								<td width="35%" class="text-left"><span id="touzzs"></span></td>
							</tr>
							<tr>
								<td width="20%" class="text-right">彩种:</td>
								<td width="35%" class="text-left"><span id="caiz"></span></td>
								<td width="20%" class="text-right">倍数:</td>
								<td width="35%" class="text-left"><span id="beis"></span></td>
							</tr>
							<tr>
								<td width="20%" class="text-right">期号:</td>
								<td width="35%" class="text-left"><span id="qih"></span></td>
								<td width="20%" class="text-right">投注总额:</td>
								<td width="35%" class="text-left"><span id="touzze"></span></td>
							</tr>
							<tr>
								<td width="20%" class="text-right">玩法:</td>
								<td width="35%" class="text-left"><span id="wanf"></span></td>
								<!-- 如果是第二版则显示赔率 -->
								<td width="20%" class="text-right version1">单注奖金:</td>
								<td width="35%" class="text-left version1"><span id="danzjj"></span></td>
								
								<td width="20%" class="text-right version2 hide">赔率:</td>
								<td width="35%" class="text-left version2 hide"><span id="peilv"></span></td>
							</tr>
							<tr>
								<td width="20%" class="text-right">开奖号码:</td>
								<td width="35%" class="text-left"><span id="kaijhm"></span></td>
								<td width="20%" class="text-right">中奖注数:</td>
								<td width="35%" class="text-left"><span id="zhongjzs"></span></td>
							</tr>
							<tr>
								<td width="20%" class="text-right">状态:</td>
								<td width="35%" class="text-left"><span id="zhuangt"></span></td>
								<td width="20%" class="text-right ">中奖金额:</td>
								<td width="35%" class="text-left"><span id="zhongjje"></span></td>
							</tr>
							
								
								
							
							<tr>
								<td width="20%" class="text-right">盈亏:</td>
								<td width="35%" class="text-left"><span id="yingkui"></span></td>
							</tr>
							<tr>
							<td width="20%" class="text-right" colspan="4">
							<textarea class="form-control" rows="3" id="touzhm"></textarea>
							</td>
								 
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		function getTab() {
			var options = {
				language : 'zh-CN',
				autoclose : 1,
			    weekStart: 1,
		        todayBtn:  1,
		        autoclose: 1,
		        todayHighlight: 1,
		        startView: 2,
		        forceParse: 0,
		        showSecond:1,
		        minuteStep:1,
				format : 'yyyy-mm-dd hh:ii:00'
			};
			$('#begin').datetimepicker(options);
			options.format="yyyy-mm-dd hh:ii:59";
			$('#end').datetimepicker(options);

			window.table = new Game.Table({
				id : 'datagrid_tb',
				url : '/admin/fenhongList',
				queryParams : queryParams,//参数
				toolbar : $('#toolbar'),
				showPageSummary:true,
				showAllSummary:true,
				columns : [ 
				   {
					field : 'id',
					title : '分红编号',
					align : 'center',
					valign : 'bottom',
					formatter : orderFormatter
				}, {
					field : 'account',
					title : '分红账号',
					align : 'center',
					valign : 'middle',
					events : operateEvents,
				}, {
					title : '分红时间',
					align : 'center',
					valign : 'middle',
					formatter : dateFormatter
				}, {
					field : 'allMoney',
					title : '总盈亏',
					align : 'center',
					valign : 'middle'
				}, {
					field : 'money',
					title : '分红',
					align : 'center',
					width : '100',
					valign : 'middle'
				}, {
					field : 'bili',
					title : '分红比例',
					align : 'center',
					width : '140',
					formatter : wsFormatter
				},
				 {
					field : 'status',
					title : '状态',
					width : '80',
					align : 'center',
					formatter : statusFormatter
				},
				{
					field : 'status',
					title : '操作',
					width : '80',
					align : 'center',
					formatter : cdorder
				}
			]
			});
		}
		function accountFormatter(value, row, index) {
			return '<a class="detail" href="javascript:void(0)" title="用户详情"><span class="text-danger">'+value+'</span></a>';
		}
		
		window.operateEvents = {
			'click .detail' : function(e, value, row, index) {
				$.get("view.action?id="+row.accountId,function(html){
					Msg.info(html,"查看账户详细");
				},"html");
			}
		};
		//位数格式化
		function wsFormatter(value, row, index) {
			if(value!=null && value.length>10){
				return  value.substring(0, 10)+"...";
			}else{
				return value;
			}
		}
		
		function dateFormatter(value, row, index) {
			return DateUtil.formatDatetime(value);
		}
		
		//格式化订单详情		
		function orderFormatter(value, row, index){
			return '<a href="#" onClick="orderDesc(\''+row.orderId+'\',\''+row.account+'\',\''+row.lotCode+'\');">' + row.orderId+ '</a>';
		}
		
		//查看化订单详情		
		function orderDesc(orderId,account,lotCode) {
			$.ajax({
				url : "getOrderDetailForList.action",
				data : {
					"orderId" : orderId,
					"account" : account,
					"lotCode" : lotCode
				},
				success:function(j){
					$("#editmodel").modal('toggle');
		 			$('#dingdh').html(j.orderId);
		 			$('#zhangh').html(j.account);
		 			$('#sellingTime').html(DateUtil.formatDatetime(j.sellingTime));
		 			$('#sealTime').html(DateUtil.formatDatetime(j.sealTime));
		 			$('#xiazsj').html(DateUtil.formatDatetime(j.createTime));
		 			$('#touzzs').html(j.buyZhuShu);
		 			$('#caiz').html(cz(j.lotCode));
		 			$('#beis').html(j.multiple);
		 			$('#qih').html(j.qiHao);
		 			if(j.buyMoney != null){
		 				$('#touzze').html(fmoney(j.buyMoney,2));
		 			}
		 			if(j.peilv){
		 				$('#peilv').html(j.peilv);
		 				$('.version1').addClass("hide");
		 				$('.version2').removeClass("hide");
		 				if(j.playCode.indexOf("zuxuansan")>=0 || j.playCode.indexOf("zuxuanliu") >=0){
		 					$("#danzje").html("- -");
		 				}else{
		 					$('#danzje').html(fmoney(j.buyMoney,2)/j.buyZhuShu);
		 				}
		 			}else{
		 				$('.version2').addClass("hide");
		 				$('.version1').removeClass("hide");
		 				if(j.playCode.indexOf("zuxuansan")>=0 || j.playCode.indexOf("zuxuanliu") >=0){
		 					$("#danzje").html("- -");
		 				}else{
		 					$('#danzje').html(fmoney(2/j.model,2));
		 				}
		 			}
		 			
		 			if(j.groupName){
		 				$('#wanf').html(j.groupName+'--'+j.playName);
		 			}else{
		 				$('#wanf').html(j.playName);
		 			}
		 			if(j.minBonusOdds != null){
		 				$('#danzjj').html(fmoney(j.minBonusOdds,2));
		 			}
		 			
	 				if(j.winZhuShu){
		 				$('#zhongjzs').html(j.winZhuShu);
		 			}else{
		 				$('#zhongjzs').html("0");
		 			}
		 			
		 			$('#kaijhm').html(j.lotteryHaoMa||"");
		 			if(j.rollBackMoney != null){
		 				$('#jine').html(fmoney(j.rollBackMoney,2));
		 			}
		 			$('#zhuangt').html(kjzt(j.status));
		 			
		 			$('#touzhm').html(j.haoMa);
		 			
		 			var yk = '0.00';
		 			var wm = j.winMoney;
		 			var rb = j.rollBackMoney;
		 			var bm = j.buyMoney;
		 			if(wm && wm*1 >=0){
		 				yk = yk*1 + wm*1;
		 			}
		 			if(rb && rb*1 >=0){
		 				yk = yk*1 + rb*1;
		 			}
		 			if(bm && bm*1 >=0){
		 				yk = yk*1 - bm*1;
		 			}
		 			if(j.status == 8){
		 				$('#yingkui').html('0.00');
		 				$('#zhongjje').html(fmoney(j.buyMoney*1,2));
		 			}else{
		 				$('#yingkui').html(fmoney(yk*1,2));
			 			if(j.winMoney){
			 				$('#zhongjje').html(fmoney(j.winMoney,2));
			 			}else{
			 				$('#zhongjje').html('0.00');
			 			}
		 			}
		 			
		 			
		 			if(""){
		 				$('#mutil').html("返点状态:");
		 				$('#fanszt').html(mutilFormatter(j.rollBackStatus,1));
		 			}else{
		 				$('#mutil').html("返水状态:");
		 				$('#fanszt').html(mutilFormatter(j.rollBackStatus,2));
		 			}

				}
			});
		}
		
		function mutilFormatter(value,type){
			var col = '';
			if(type == 1){
				col = "返点";
			}else{
				col = "返水";
			}
			switch(value){
			case 1:
			case 2:
				col = "还未"+col;
				break;
			case 3:
				col = col + "已经回滚"
				break;
			case 4:
				col = "已经"+col;
				break;
			}
			return col;
		}
		
		//格式化彩种
		function czFormatter(value, row, index) {
			return cz(row.lotCode);
		}
		
		function cz(obj){
			var lotName = '';
			switch(obj){
			case 'CQSSC':
				lotName = "重庆时时彩";
				break;
			case 'PL3':
				lotName = "排列三";
				break;
			case 'SH11X5':
				lotName = "上海11选5";
				break;
			case 'FC3D':
				lotName = "福彩3D";
				break;
			case 'BJSC':
				lotName = "北京赛车";
				break;
			case 'EFC':
				lotName = "二分彩";
				break;
			case 'WFC':
				lotName = "五分彩";
				break;
			case 'XJSSC':
				lotName = "新疆时时彩";
				break;
			case 'PCEGG':
				lotName = "PC蛋蛋";
				break;
			case 'JX11X5':
				lotName = "江西11选5";
				break;
			case 'GD11X5':
				lotName = "广东11选5";
				break;
			case 'SD11X5':
				lotName = "山东11选5";
				break;
			case 'TJSSC':
				lotName = "天津时时彩";
				break;
			case 'FFC':
				lotName = "分分彩";
				break;
			case 'HNKLSF':
				lotName = "湖南快乐十分";
				break;
			case 'GDKLSF':
				lotName = "广东快乐十分";
				break;
			case 'JSSB3':
				lotName = "江苏骰宝(快3)";
				break;
			
			}
			return lotName;
		}
		
		//格式化成两位小数
		function fmoney(s, n) { 
			n = n > 0 && n <= 20 ? n : 2; 
			s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + ""; 
			var l = s.split(".")[0].split("").reverse(), r = s.split(".")[1]; 
			t = ""; 
			for (i = 0; i < l.length; i++) { 
			t += l[i] + ((i + 1) % 3 == 0 && (i + 1) != l.length ? "" : ""); 
			} 
			return t.split("").reverse().join("") + "." + r; 
			} 
		
		function modeFormatter(value, row, index) {
			var col = '';
			switch(value){
			case 1:
				col = '元';
				break;
			case 10:
				col = '角';
				break;
			case 100:
				col = '分';
				break;
			}
			return col;
		}
		
		function statusFormatter(value, row, index) {
			return kjzt(row.status);
		}
		
		function cdorder(value, row, index) {
			var col = '';
			if(row.status == 1){
				col = "<a onclick=\"cd(" + row.id + ")\" href=\"javascript:void(0)\" title=\"撤单\">撤单</a>&nbsp;";
			}
			col += "<a onclick=\"shanchu(" + row.id + ")\">删除</a>";
			return col;
		}
		
		function cd(id){
			$.ajax({
				url:"chedan",
				data : {
					"id" : id
				},
				dataType:"json",
				success:function(j){
					if(j.success){
						alert("成功!");
					}else{
						alert("失败！");
					}
				}
			});
		}
		
		function shanchu(id){
			$.ajax({
				url:"shanchudingdan",
				data : {
					"id" : id
				},
				dataType:"json",
				success:function(j){
					if(j.success){
						alert("成功!");
					}else{
						alert("失败！");
					}
				}
			});
		}
		
		function kjzt(obj){
			var col = '';
			switch(obj){
			case 0:
				col = '<span class="label label-primary" >等待开奖</span>';
				break;
			case 1:
				col = '<span class="label label-success" >已中奖</span>';
				break;
			case 2:
				col = '<span class="label label-danger" >未中奖</span>';
				break;
			case 10:
				col = '<span class="label label-info" >撤单</span>';
				break;
			case 5:
				col = '<span class="label label-success">派奖回滚成功</span>';
				break;
			case 6:
				col = '<span class="label label-warning">回滚异常的</span>';
				break;
			case 7:
				col = '<span class="label label-warning">开奖异常</span>';
				break;
			case 8:
				col = '<span class="label label-success">和局</span>';
				break;
			}
			return col;
		}
		
		//设置传入参数
		function queryParams(params) {
			params['account'] = $("#account").val();
			params['startTime'] = $("#begin").val();
			params['endTime'] = $("#end").val();
			params['status'] = $("#type").val();
			params['qihao'] = $("#yxQiHao").val();
			params['orderCode'] = $("#yxOrder").val();
			var code = $("#czType").val();
			if(code.indexOf('-1')==-1){
				params['code'] = code;
			}
			return params
		}
		$(function() {
			bindbtn();
			getTab();
		})
		
			function czGroup(){
			$.ajax({
				url:"czGroup.action",
				data:"GET",
				DataType:"json",
				success:function(j){
					var col = '<option value="-1" selected="selected">全部彩种</option>';
					for(var i in j){
						if(j[i].code!='LHC'){
							col+='<option value="'+j[i].code+'" id="'+j[i].code+'">'+j[i].name+'</option>';
						}
					}
					$('#czType').html(col);
				}
					
			});
		}
		
		function search() {
			$('.zhtj').val('0');
			$("#datagrid_tb").bootstrapTable('refreshOptions',{pageNumber:1});
		}

		function setDate(begin, end) {
			$('#begin').val(begin);
			$('#end').val(end);
		}

		function bindbtn() {
			$(".form-inline .btn-default").click(function() {
				var type = $(this).html();
				var begin = "";
				var end = "";
				if ('今日' === type) {
					begin = DateUtil.getCurrentDate();;
					end = begin;
				} else if ('昨日' === type) {
					begin = DateUtil.getLastDate();
					end = begin;
				} else if ('本周' === type) {
					begin = DateUtil.getWeekStartDate();
					end = DateUtil.getCurrentDate();
				} else if ('上周' === type) {
					begin = DateUtil.getLastWeekStartDate();
					end = DateUtil.getLastWeekEndDate();
				} else if ('本月' === type) {
					begin = DateUtil.getMonthDate();
					end = DateUtil.getCurrentDate();
				} else if ('上月' === type) {
					begin = DateUtil.getLastMonthStartDate();
					end = DateUtil.getLastMonthEndDate();
				}
				$('.zhtj').val('0');
				setDate(begin+" 00:00:00", end+" 23:59:59");
				search();
			});
		}
		
		var au = document.createElement("audio");
		au.preload="auto";
		au.src = "sounds/5103.mp3";
		function playSound() {
		    au.play();
		}
	    window.setInterval(showalert, 3000); 
	    function showalert() { 
	    	$.ajax({
				url:"newMessage.action",
				dataType:"json",
				success:function(j){
					if(j.success){
						playSound();
					}
				}
			});
	    }
	</script>
<style>
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{
	vertical-align : middle;
}
</style>
</body>
</html>
