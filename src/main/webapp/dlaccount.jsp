<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<title>管理平台</title>
<meta charset="utf-8">
<style type="text/css">
td {
	vertical-align: middle !important;
}
</style>
</head>
<body>
	

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
							<td width="80%" class="text-left"><input type="text" class="form-control" value="vxmy123" id="head_pwdat" disabled="disabled" /></td>
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

	<div class="container" style="margin-top: 20px;">
		<ol class="breadcrumb">
			<li><a href="#">首页</a></li>
			<li class="active">下级列表</li>
		</ol>
	</div>
	<input type="hidden" value="0" id="agentId">
	<div class="container">
		<div id="toolbar">
			<div id="search" class="form-inline">
				<label class="sr-only" for="saccount">输入会员名查询</label>
				<div class="form-group">

					<div class="input-group">
						<select id="onlineFlag" class="form-control">
							<option value="">全部</option>
							<option value="1">离线</option>
							<option value="2">在线</option>
						</select>
					</div>
					<div class="input-group">
						<input type="text" class="form-control" id="saccount" placeholder="输入会员名查询">
					</div>
				</div>
				<button class="btn btn-primary" onclick="search();">查询</button>
				<button class="btn btn-primary" onclick="back();">返回</button>
			</div>
		</div>
		<table id="datagrid_tb"></table>
	</div>
	<div class="modal fade bs-example-modal-lg" id="editmodel" tabindex="-1" role="dialog" aria-labelledby="editLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="editLabel">用户详情</h4>
				</div>
				<div class="modal-body">
					<input type="hidden" id="accountId">
					<table class="table table-bordered table-striped" style="clear: both">
						<tbody id="tbody1">
							<tr>
								<td width="15%" class="text-right">所属上级：</td>
								<td width="85%" colspan="3" class="text-left"><textarea class="form-control" id="parentNames" disabled="disabled"></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="savestatus();" id="save_btn">保存</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>


	<div class="modal fade bs-example-modal-lg" id="editmodel2" tabindex="-1" role="dialog" aria-labelledby="editLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="editLabel">加款</h4>
				</div>
				<div class="modal-body" id="memmnyope_tb">
					
				</div>
			</div>
		</div>
	</div>

	<!-- 修改返点数 -->
	<input type="hidden" id="curFands">
	<div class="modal fade bs-example-modal-lg" id="editmodel3" tabindex="-1" role="dialog" aria-labelledby="editLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="editLabel">下级返点数修改</h4>
				</div>
				<div class="modal-body">
					<table class="table table-bordered" style="margin-top: 10px; clear: both">
						<tbody>
							<tr>
								<input type="hidden" id="fdsAcc" />
								<td width="35%" class="text-right active">会员账号：</td>
								<td width="65%" colspan="2"><span id="fsAccount" class="text-primary"></span></td>
							</tr>
							<tr>
								<td width="35%" class="text-right active">当前点数：</td>
								<td width="65%" colspan="2"><span id="fsCur" class="text-primary"></span></td>
							</tr>
							<tr>
								<td width="35%" class="text-right active">点数修改为：</td>
								<td width="65%" colspan="2"><input type="text" class="form-control" style="width: 25%; float: left;" id="fsAdd" /> <span style="line-height: 32px;">(可设置返点区间: <span
										class="lable lable-success"><span id="fsCur2"></span>-<span class="cfands"></span></span>)
								</span></td>
							</tr>
							<tr>
								<td width="35%" class="text-right">所属上级：</td>
								<td width="65%" colspan="3" class="text-left"><textarea class="form-control" id="parentNames2" disabled="disabled"></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="addFs();">确认修改</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="head_editpwd1" tabindex="-1" role="dialog" aria-labelledby="head_editpwdLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="head_editpwdLabel">历史记录</h4>
			</div>
			<div class="modal-body">
				<table>
					<tr><th>标题</th><th>账号</th></tr>
					
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="doUpdpwd();">保存</button>
			</div>
		</div>
	</div>
</div>
	<script id="memmnyope_tpl" type="text/html">
		 <table class="table table-bordered" style="margin-top:10px;clear: both">
				<input type="hidden" id="accountId"/>
                <tbody>
					<tr>
						<td width="35%" class="text-right active">会员账号：</td>
                        <td width="65%" colspan="2"><span id="accountspan" class="text-primary"></span></td>
					</tr>
					<tr>
						<td width="35%" class="text-right active">账号余额：</td>
                        <td width="65%" colspan="2"><span id="moneyspan" class="text-danger"></span></td>
					</tr>  
					<tr>
						<td width="35%" class="text-right active">操作类型：</td>
                        <td width="65%" colspan="2"><select id="type" class="form-control"><option value="1">人工加款</option></select></td>
					</tr>
					<tr>
						<td width="35%" class="text-right active">操作金额：</td>
                        <td width="65%" colspan="2"><input type="text" class="form-control" id="money" /></td>
					</tr>
					<tr>
						<td colspan="3" class="text-center"><button type="button" class="btn btn-primary" data-dismiss="modal" onclick="submit1();">确认</button></td>
					</tr>
				</tbody>
		</table>
</script>



	<script type="text/javascript">
		
		function submit1() {
			$.ajax({
				url : "/daili/dlaccount/saveCash.do",
				data : {
					id : $("#accountId").val(),
					type : $("#type").val(),
					money : $("#money").val(),
					remark : $("#remark").val(),
				},
				success : function(data) {
					$("#moneyspan").html(data);
					$("#money").val("");
					$("#type").val("");
					$("#remark").val("");
					Msg.info("操作成功！");
					search();
				}
			});
		}
		function search1(account) {
			$.ajax({
				url : "/daili/dlaccount/memmny.do",
				data : {
					account : account
				},
				success : function(data) {
					$("#accountId").val(data.accountId);
					$("#accountspan").html(data.account);
					$("#moneyspan").html(data.money);
					$("#memmnyope_tb").removeClass("hidden")
				}
			});
		}

		function reset() {
			$("#accountId").val("");
			$("#accountspan").html("");
			$("#moneyspan").html("");
			$("#searchtext").val("");
			$("#money").val("");
			$("#type").val("");
			$("#remark").val("");
			$("#memmnyope_tb").addClass("hidden")
		}

		function refresh(thirdid) {
			Msg.info("暂时没接入...");
		}
	</script>

	<script type="text/javascript">
		var ps = [ {
			"id" : 0,
			"flag" : 0
		} ]; //轨迹
		var parentId = 0; //当前父节点ID
		var opFlag = 0;
		var ops = [ 'agentId', 'agentParentId' ];
		var agentMulti = "";
		function getTab() {
			window.table = new Game.Table({
				id : 'datagrid_tb',
				url : 'dlaccountList',
				sortType:'local',
				queryParams : queryParams,//参数
				toolbar : $('#toolbar'),
				columns : [ {
					field : 'account',
					title : '用户账号',
					align : 'center',
					valign : 'middle',
					events : operateEvents,
					formatter : accountFormatter
				}, {
					field : 'money',
					title : '账号余额',
					align : 'center',
					valign : 'middle',
					sortable: true,
					formatter : moneyFormatter
				},
				
				{
					field : 'gameShare',
					title : '返点数',
					align : 'center',
					valign : 'middle',
					sortable: true
				},{
					field : 'createDatetime',
					title : '注册时间',
					align : 'center',
					valign : 'middle',
					sortable: true,
					formatter : dateFormatter
				}, {
					field : 'lastLoginDatetime',
					title : '最后登录时间',
					align : 'center',
					valign : 'middle',
					sortable: true,
					formatter : dateFormatter
				}, {
					field : 'fenhong',
					title : '分红',
					align : 'center',
					valign : 'middle',
					sortable: true,
					formatter : fenhongFormatter
				},{
					field : 'lastLoginIp',
					title : '最后登录ip',
					align : 'center',
					valign : 'middle'
				}, {
					field : 'online',
					title : '在线情况',
					align : 'center',
					valign : 'middle',
					sortable: true,
					formatter : onlineFormatter,
				}, {
					title : '操作',
					align : 'center',
					width : '200',
					valign : 'middle',
					events : operateEvents,
					formatter : operateFormatter
				} ]
			});
		}

		function userFormatter(value, row, index){
			if(value){
				return value;
			}
		}
		
		// 从右边截取i位有效字符
		String.prototype.Right = function(i) { // 为String对象增加一个Right方法
			return this.slice(this.length - i, this.length); // 返回值为 以“该字符串长度减i”为起始 到
																// 该字符串末尾 的截取字符串
		};
		
		function addFs(){
			var fs = $('#curFands').val();//可分配的返点数
			var inputFs = $('#fsAdd').val();//输入的返点数
			var	curFds = $('#fsCur2').text();//当前返点数
			var accId= $('#fdsAcc').val();
			if(!inputFs){
				Msg.info('请输入返点数!');
				return false;
			}
			if(inputFs*1 > fs*1){
				Msg.info('输入的返点数不能大于可分配返点数!');
				return false;
			}
			if( inputFs*1 < curFds*1){
				Msg.info('输入的返点数不能小于下级最大返点!');
				return false;
			}
			//校验成功,修改返点数
 			$.ajax({
 				url : "/daili/dlaccount/saveFds.do",
 				data:{
 					"id":accId,
 					"rebateNum":inputFs
 				},
 				success : function(result) {
 					Msg.info("修改成功！");
 					$("#datagrid_tb").bootstrapTable('refresh');
 				}
 			});
		}
		
		function onlineFormatter(value, row, index) {
			/*if (row.accountType != 1) {
				return "-";
			}*/
			if (value === 2) {
				return '<span class="label label-success">在线</span>';
			}
			return '<span class="label label-default">离线</span>';
		}

		function accountFormatter(value, row, index) {

			return [
					'<a class="detail" href="javascript:void(0)" title="详情"><span class="text-danger">',
					'</span></a>' ].join(value);
		}

		function typeFormatter(value, row, index) {
			return [ '<span class="text-primary">', '</span>' ]
					.join(GlobalTypeUtil.getTypeName(2, 2, value));
		}

		function statusFormatter(value, row, index) {

			if (value === 2) {
				return '<span class="text-success">启用</span>';
			}
			return '<span class="text-danger">禁用</span>';
		}

		function moneyFormatter(value, row, index) {

			if (value === undefined) {
				return value;
			}

			if (value > 0) {
				return [ '<span class="text-danger">', '</span>' ].join(value);
			}
			return [ '<span class="text-primary">', '</span>' ].join(value);

		}

		function dateFormatter(value, row, index) {
			return DateUtil.formatDatetime(value);
		}

        function fenhongFormatter(value, row, index) {
            var btns = [];
            var down = '';
            if(row.fenhong == 0){
                down += '无';
            }else{
                down += '有';
			}
            if(row.gameShare > 14.3 && row.gameShare < 14.8){
                if(row.fenhong == 0){
                    down += '(<a class="fenhong" href="javascript:void(0)" onclick="fenhong(' + row.id + ')" title="设置分红">设置分红</a>)';
                }else{
                    down += '(<a class="quxiaofenhong" href="javascript:void(0)" onclick="fenhong(' + row.id + ')" title="取消分红">取消分红</a>)';
                }
            }
            btns.push(down);
            return btns.join('');
        }

		function operateFormatter(value, row, index) {
			var btns = [];
			var up = '<a class="doup" href="javascript:void(0)" title="上一级">上一级</a>  ';
			var down = '<a class="chongqian" href="javascript:void(0)" title="加款">加款</a>&nbsp;<a class="kouqian" href="javascript:void(0)" title="扣款">扣款</a>&nbsp;<a class="chongzhi" href="javascript:void(0)" title="重置">重置</a>&nbsp;<a class="shanchu" href="javascript:void(0)" title="删除">删除</a>&nbsp;<a class="shanchu" href="javascript:void(0)" title="禁止投注">禁止投注</a>&nbsp;<a class="shanchu" href="javascript:void(0)" title="禁止提现">禁止提现</a>';
			var updateFanDian = '<a class="updateFanDian" href="javascript:void(0)" title="修改返点">修改返点</a>   ';
			var chongqian = '<a class="chongqian" href="javascript:void(0)" title="加款">加款</a>';

			btns.push(down);
			return btns.join('');
		}

		window.operateEvents = {
		    /*
            'click .quxiaofenhong' : function(e, value, row, index) {
                //$("#save_btn").addClass("hidden");

                $.ajax({
                    url: "/admin/fenhong",
                    data: {
                        id: row.id,
                        fenhong: 0
                    },
                    success: function (j) {
                        if (j.status == 200) {
                            alert("设置成功！");
                            window.location.reload();
                        } else {
                            alert("设置失败！");
                        }
                    }
                });
            },
            'click .fenhong' : function(e, value, row, index) {
                //$("#save_btn").addClass("hidden");

                $.ajax({
                    url: "/admin/fenhong",
                    data: {
                        id: row.id,
                        fenhong: 1
                    },
                    success: function (j) {
                        if (j.status == 200) {
                            alert("设置成功！");
                            window.location.reload();
                        } else {
                            alert("设置失败！");
                        }
                    }
                });
            },
            */


			'click .detail' : function(e, value, row, index) {
				//$("#save_btn").addClass("hidden");

                $.ajax({
                    url : "/admin/listCard",
                    data:{
                        account : row.account,
                    },
                    success:function(j){
                        if(j.status == 200){
                            var html = '<tr>\n' +
                                '\t\t\t\t\t\t\t\t<td width="15%" class="text-right">登录账号：</td>\n' +
                                '\t\t\t\t\t\t\t\t<td width="35%" class="text-left"><input type="text" class="form-control" id="account" disabled="disabled" value="' + row.account + '"/></td>\n' +
                                '\t\t\t\t\t\t\t</tr>';
                            for(var i = 0; i < j.content.length; i++){
                                html += '<tr class="userinfo_tr">\n' +
                                    '<td width="15%" class="text-right">银行账号：</td>\n' +
                                    '<td width="85%" class="text-left"><input type="text" class="form-control" disabled="disabled" value="' + j.content[i].card  + '" /></td><td><a onclick="jiebang(\'' + j.content[i].id + '\')">解绑</a></td>\n' +
                                    '</tr>'

							}
							$("#tbody1").html(html);
                        }
                    }
                });
				if (row.accountType == 4) {

				} else {
					setParam(row);
					$(".rebateNum_tr").addClass("hidden");
				}

			},
			'click .doup' : function(e, value, row, index) {
				$("#saccount").val("");
				doDown(row.agentId, 0);
			},
			'click .dodown' : function(e, value, row, index) {
				$("#saccount").val("");
				doDown(row.id, 1);
			},
			'click .updateFanDian' : function(e, value, row, index) {
				fds(row);
			},
			'click .chongqian' : function(e, value, row, index) {
				var cur = $('#agentId').val();
				if(cur=="1"){
					//给会员或代理加款
					var money = prompt("加款", "");
					if(money){
						$.ajax({
							url : "/admin/chongqian",
							data:{
								account : row.account,
								money : money
							},
							success:function(j){
								if(j.status == 200){
									alert("修改成功!");
									window.location.reload();
								}else{
									alert("修改失败！");
								}
							}
						});
					}
					//$("#editmodel2").modal('toggle');
					//search1(row.account);
				}else{
					Msg.info("只能给下级会员或代理加款");
				}
				
			},
			'click .kouqian' : function(e, value, row, index) {
				var cur = $('#agentId').val();
				if(cur=="1"){
					//给会员或代理加款
					var money = prompt("扣款", "");
					if(money){
						$.ajax({
							url : "/admin/kouqian",
							data:{
								account : row.account,
								money : money
							},
							success:function(j){
								if(j.status == 200){
									alert("修改成功!");
									window.location.reload();
								}else{
									alert("修改失败！");
								}
							}
						});
					}
					//$("#editmodel2").modal('toggle');
					//search1(row.account);
				}else{
					Msg.info("只能给下级会员或代理加款");
				}
				
			},
			'click .chongzhi' : function(e, value, row, index) {
				var cur = $('#agentId').val();
				if(cur=="1"){
					
						$.ajax({
							url : "/admin/chongzhi",
							data:{
								account : row.account
							},
							success:function(j){
								if(j.status == 200){
									alert("修改成功!");
									window.location.reload();
								}else{
									alert("修改失败！");
								}
							}
						});
					//$("#editmodel2").modal('toggle');
					//search1(row.account);
				}else{
					Msg.info("只能给下级会员或代理加款");
				}
				
			},
			'click .shanchu' : function(e, value, row, index) {
				if(!confirm("确定删除？")){
					return;
				}
				var cur = $('#agentId').val();
				if(cur=="1"){
					
						$.ajax({
							url : "shanchu",
							data:{
								account : row.account
							},
							success:function(j){
								if(j.status == 200){
									alert("修改成功!");
									window.location.reload();
								}else{
									alert("修改失败！");
								}
							}
						});
					//$("#editmodel2").modal('toggle');
					//search1(row.account);
				}else{
					Msg.info("只能给下级会员或代理加款");
				}
				
			}
			
		};


		function fdsDate(){
			$.ajax({
				url : "multidata.action",
				data:{limit:1},
				success : function(result) {
					$('#curFands').val(result.rebateMaxNum);
					$('.cfands').html(result.rebateMaxNum);
				}
			});
		}

		function setParam(row) {
			$("#editmodel").modal('toggle');
			$("#account").attr("disabled", "disabled");
			$("#account").val(row.account);
			if(row.cardNo && row.cardNo.length>4){
				$("#cardNo").val(row.cardNo);
			}else{
				$("#cardNo").val('');
			}
			$("#accountId").val(row.id);
			$("#bankName").val(row.bankName);
			
			if(row.userName && row.userName.length>1){
				$("#userName").val(row.userName);
			}else{
				$("#userName").val('');
			}
			if(row.phone){
				$('.showTel').show();
			}else{
				$('.showTel').hide();
			}
			if(row.email){
				$('.showEmail').show();
			}else{
				$('.showEmail').hide();
			}
			if(row.bankAddress){
				$('.showBankAdd').show();
			}else{
				$('.showBankAdd').hide();
			}
			if(row.qq){
				$('.showQQ').show();
			}else{
				$('.showQQ').hide();
			}
			$("#phone").val(row.phone);
			$("#qq").val(row.qq);
			$("#email").val(row.email);
			$("#bankName").val(row.bankName);
			$("#bankAddress").val(row.bankAddress);
			$("#accountStatus").val(row.accountStatus);
			$("#accountType").val(row.accountType);
			if(row.parentNames){
				$("#parentNames").val(row.parentNames+'>'+row.account);
			}
			
			$("#newpwd").val(row.pass);
			$("#newrpwd").val(row.tkpass);
			//$(".newpwd_tr").addClass("hidden");
			$(".userinfo_tr").removeClass("hidden");

			$("#cardNo").attr("disabled", "disabled");
			$("#newpwd").attr("disabled", "disabled");
			$("#newrpwd").attr("disabled", "disabled");
			$("#bankName").attr("disabled", "disabled");
			$("#userName").attr("disabled", "disabled");
			$("#phone").attr("disabled", "disabled");
			$("#qq").attr("disabled", "disabled");
			$("#email").attr("disabled", "disabled");
			$("#bankAddress").attr("disabled", "disabled");
			//$("#accountStatus").attr("disabled", "disabled");
			$("#accountType").attr("disabled", "disabled");
			$("#rebateNum").attr("disabled", "disabled");
			$("#parentNames_tr").removeClass("hidden");
		}

		function doDown(id, flag) {
			if (ps && ps[ps.length - 1].id != id) {
				var data = {};
				data.id = id
				data.flag = flag;
				ps.push(data);
			}
			opFlag = flag;
			parentId = id;
			$("#searchType").val(2);
			$("#datagrid_tb").bootstrapTable('refreshOptions', {
				pageNumber : 1
			});
		}
		//设置传入参数
		function queryParams(params) {
			params["online"] = $("#onlineFlag").val();
			params["account"] = $("#saccount").val();
			var curId = "259454";
			if(parentId==0 || parentId==curId){
				$('#agentId').val('1');
			}else{
				$('#agentId').val('-1');
			}
			if(!params["account"]){
				params[ops[opFlag]] = parentId;
			}else{
				ps = [ {
					"id" : 0,
					"flag" : 0
				} ]; //轨迹
				parentId = 0; //当前父节点ID
				opFlag = 0;
			}
			params["searchType"] = $("#searchType").val();
			return params
		}
		$(function() {
			$("#onlineFlag").val('');
			var searchType = '';
			if(searchType){
				$("#searchType").val(searchType);
			}
			getTab();
			bindType();
		})

		function checkMutli() {
			$.ajax({
				url : "multidata.action",
				data:{limit:1},
				success : function(result) {
					if ("off" == result.multiAgent) {
						$("#datagrid_tb").bootstrapTable("hideColumn",
								"gameShare");
					} else if ("on" == result.multiAgent) {
						$("#datagrid_tb").bootstrapTable("showColumn",
								"gameShare");
					}
				}
			});
		}

		function bindType() {
			$("#accountType").change(function() {
				var selval = $(this).children('option:selected').val();
				if (selval == 4 && agentMulti == "on") {
					$(".multiData").removeClass("hidden");
				} else {
					$(".multiData").addClass("hidden");
				}
			});
		}
		function back() {
			var index = ps.length - 2;

			if (parentId == 0 || index < 0) {
				Msg.info("当前已经是最顶级了");
				return;
			}
			data = ps[index];
			parentId = data.id;
			opFlag = data.flag;
			var nps = [];
			for (var i = 0; i < ps.length; i++) {
				if (i == ps.length - 1) {
					break;
				}
				nps.push(ps[i]);
			}
			ps = nps;
			search();
		}
		function search() {
			$("#datagrid_tb").bootstrapTable('refresh');
		}
		
		function add() {
			$.ajax({
				url : "multidata.action",
				data:{limit:1},
				success : function(result) {
					$("#editmodel").modal('toggle');
					$("#account").val("");
					$("#account").removeAttr("disabled");
					$("#accountId").val("");
					$("#accountStatus").val(2);
					$("#accountStatus").attr("disabled", "disabled");
					$("#accountType").val("");
					$("#newpwd").val("");
					$("#newrpwd").val("");
					$("#rebateNum").val("");
					$(".newpwd_tr").removeClass("hidden");
					$(".userinfo_tr").addClass("hidden");
					$("#save_btn").removeClass("hidden");
					$("#rebateNum").removeAttr("disabled");
					$("#accountType").removeAttr("disabled");
					$("#parentNames").val("");
					$(".parentNames_tr").addClass("hidden");
					$("#general_opt").addClass("hidden");
					if ("off" == result.multiAgent) {
						if('4' == 4){
							$("#agent_opt").addClass("hidden");
						}else{
							$("#member_opt").addClass("hidden");
						}
						$(".multiData").addClass("hidden");
					} else if ("on" == result.multiAgent) {
						$("#agent_opt").removeClass("hidden");
						$("#rebate_desc").html(
								"(可设置返点区间: "+result.rebateMinNum+" - " + result.rebateMaxNum +" )");
					}
					agentMulti = result.multiAgent;
				}
			});
		}
		
		function savestatus(){
			$.ajax({
				url:"accountStatus.action",
				data : {
					"account" : $("#account").val(),
					"caozuo" : $("#accountStatus").val()
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

		function fenhong(id) {
            $.ajax({
                url: "/admin/fenhong",
                data: {
                    id: id,
                },
                success: function (j) {
                    if (j.status == 200) {
                        alert("设置成功！");
                        window.location.reload();
                    } else {
                        alert("设置失败！");
                    }
                }
            });
        }

		function jiebang(id) {
            $.ajax({
                url : "/admin/jiebang",
                data:{
                    id : id
                },
                success:function(j){
                    if(j.status == 200){
                        alert("解绑成功!");
                        window.location.reload();
                    }else{
                        alert("解绑失败！");
                    }
                }
            });
        }
		
		function save() {
			var password = $("#newpwd").val();
			var rpassword = $("#newrpwd").val();
			var accountId = $("#accountId").val();
			if (!accountId) {
				if (!password) {
					Msg.info("新密码不能为空！");
					return;
				}
				if (!rpassword) {
					Msg.info("确认密码不能为空！");
					return;
				}
			}

			if (password !== rpassword) {
				Msg.info("两次密码不一致！");
				return;
			}
			$.ajax({
				url : "save.action",
				data : {
					id : accountId,
					account : $("#account").val(),
					accountStatus : $("#accountStatus").val(),
					pwd : password,
					rpwd : rpassword,
					type : $("#accountType").val(),
					rebateNum : $("#rebateNum").val()
				},
				success : function(result) {
					Msg.info("保存成功！");
					$("#datagrid_tb").bootstrapTable('refresh');
				}
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
				url:"newMessage",
				dataType:"json",
				success:function(j){
					if(j.status == 200){
						playSound();
					}
				}
			});
	    }
	</script>
</body>
</html>