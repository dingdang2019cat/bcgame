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

<script src="resource/wysiwyg.js"></script>
<link rel="stylesheet" href="resource/editor.css"/>
<link rel="apple-touch-icon" href="//mindmup.s3.amazonaws.com/lib/img/apple-touch-icon.png" />
<link rel="shortcut icon" href="http://mindmup.s3.amazonaws.com/lib/img/favicon.ico" >
<link href="http://twitter.github.com/bootstrap/assets/js/google-code-prettify/prettify.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
<link href="index.css" rel="stylesheet">

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
							<li><a href="sz.jsp">首页</a></li>
			
				<li><a href="dlaccount.jsp">下级列表</a></li>
				
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"> <span class="glyphicon glyphicon-fire"
						aria-hidden="true"></span> 游戏记录 <span class="caret"></span>
				</a>
					<ul class="dropdown-menu">
						
							<li class=""><a href="gameRecord.jsp">彩票投注记录</a></li>
						
						
						
						
						
					</ul></li>
				<li><a href="noticeAdmin.jsp">公告管理</a></li>
				<li><a href="dlmnyrd.jsp">站内信管理</a></li>
				<li><a href="dlreport.jsp">团队统计</a></li>


					<li><a href="fenhonglist.jsp">分红记录</a></li>
				
				<li><a href="dldrawrd.jsp">取款日志</a></li>
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
						<input type="text" class="form-control" id="noticeTitle"  placeholder="标题">
					</div>

					<div class="form-group">

					</div>
					<input type="hidden" id="noticeid" value="${id}"/>
					<button class="btn btn-primary" onclick="search();">保存</button>
				</div>
			</div>
		</div>
		<div id="datagrid_tb">
		<div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
			<div class="btn-group">
				<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font"><i class="icon-font"></i><b class="caret"></b></a>
				<ul class="dropdown-menu">
				</ul>
			</div>
			<div class="btn-group">
				<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
					<li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
					<li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
				</ul>
			</div>
			<div class="btn-group">
				<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
				<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
				<a class="btn" data-edit="strikethrough" title="Strikethrough"><i class="icon-strikethrough"></i></a>
				<a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
			</div>
			<div class="btn-group">
				<a class="btn" data-edit="insertunorderedlist" title="Bullet list"><i class="icon-list-ul"></i></a>
				<a class="btn" data-edit="insertorderedlist" title="Number list"><i class="icon-list-ol"></i></a>
				<a class="btn" data-edit="outdent" title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
				<a class="btn" data-edit="indent" title="Indent (Tab)"><i class="icon-indent-right"></i></a>
			</div>
			<div class="btn-group">
				<a class="btn" data-edit="justifyleft" title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
				<a class="btn" data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
				<a class="btn" data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
				<a class="btn" data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
			</div>
			<div class="btn-group">
				<a class="btn dropdown-toggle" data-toggle="dropdown" title="Hyperlink"><i class="icon-link"></i></a>
				<div class="dropdown-menu input-append">
					<input class="span2" placeholder="URL" type="text" data-edit="createLink"/>
					<button class="btn" type="button">Add</button>
				</div>
				<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i class="icon-cut"></i></a>

			</div>

			<div class="btn-group">
				<a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="icon-picture"></i></a>
				<input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
			</div>
			<div class="btn-group">
				<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
				<a class="btn" data-edit="redo" title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
			</div>
		</div>
		<div id="editor">testaaaa</div>
		</div>

	</div>

	<script type="text/javascript">
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
            $('#editor').wysiwyg();
			bindbtn();
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
            $.ajax({
                url:"admin/noticeBaocun",
                data : {
                    "id" : $("#noticeid").val(),
                    "content" : $("#editor").html(),
					"title" : $("#noticeTitle").val()
                },
                dataType:"json",
                success:function(j){
                    if(j.status == 200){
                        alert("成功!");
                    }else{
                        alert("失败！");
                    }
                }
            });
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
