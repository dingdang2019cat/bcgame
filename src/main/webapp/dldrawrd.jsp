<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/4/22
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理平台</title>
    <meta charset="utf-8">
</head>
<body>

<%
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String s = simpleDateFormat.format(System.currentTimeMillis());
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


                <li><a href="fenhonglist.jsp">分红记录</a></li>


                <li><a href="dldrawrd.jsp">取款日志</a></li>
            </ul>
        </div>
    </div>
</nav><div style="height: 52px;">&nbsp;</div>
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
        <li class="active">取款日志</li>
    </ol>
</div>

<div class="container">
    <div id="toolbar">
        <div class="form-group">
            <div class="form-inline">

                <div class="form-group">
                    <div class="input-group">
                        <label class="sr-only" for="sstatus">状态</label> <select class="form-control" id="sstatus">
                        <option value="9" class="text-warning">全部记录</option>
                        <option value="0" class="text-warning">处理中</option>
                        <option value="7" class="text-success">处理成功</option>
                        <option value="8" class="text-danger">处理失败</option>
                    </select>
                    </div>
                    <div class="input-group">

                    </div>
                    <div class="input-group">
                        <input type="text" class="form-control" id="userAccount" placeholder="用户账号">
                    </div>

                </div>
                <div class="input-group">
                    <input type="text" class="form-control" value="<%=s %> 00:00:00" id="begin" placeholder="开始日期"> <span class="glyphicon glyphicon-th form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="input-group">
                    <input type="text" id="end" value="<%=s %> 23:59:59" class="form-control" placeholder="线束日期"> <span class="glyphicon glyphicon-th form-control-feedback" aria-hidden="true"></span>
                </div>
                <button class="btn btn-success" onclick="search();">查找</button>
            </div>
        </div>
    </div>
    <table id="datagrid_tb"></table>
</div>
<script type="text/javascript">
    function getTab() {
        var curDate = new Date();
        var options = {
            language : 'zh-CN',
            autoclose : true,
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
            url : '/dldrawrdList',
            queryParams : queryParams,//参数
            toolbar : $('#toolbar'),
            columns : [ {
                field : 'account',
                title : '提款会员',
                align : 'center',
                valign : 'middle',
            }, {
                field : 'id',
                title : '订单号',
                align : 'center',
                valign : 'middle'
            }
            , {
                field : 'card',
                title : '收款账号',
                align : 'center',
                valign : 'middle'
            }
                // 				, {
                // 					field : 'userName',
                // 					title : '收款户名',
                // 					align : 'center',
                // 					valign : 'middle'
                // 				}
                , {
                    field : 'bankName',
                    title : '开户行',
                    align : 'center',
                    valign : 'middle',
                    formatter : addressFormatter
                }, {
                    field : 'amount',
                    title : '提款金额',
                    align : 'center',
                    valign : 'middle',
                    formatter : moneyFormatter
                }, {
                    field : 'createTime',
                    title : '交易时间',
                    align : 'center',
                    valign : 'middle',
                    formatter : dateFormatter
                }, {
                    field : 'status',
                    title : '状态',
                    align : 'center',
                    valign : 'middle',
                    formatter : statusFormatter
                }, {
                    field : 'remark',
                    title : '操作',
                    align : 'center',
                    valign : 'middle',
                    formatter : caozuo
                } ]
        });
    }

    function typeFormatter(value, row, index) {
        return GlobalTypeUtil.getTypeName(1, 1, value);
    }

    function addressFormatter(value, row, index) {
        if (value) {
            return value;
        }
    }

    function statusFormatter(value, row, index) {

        var sn = '';

        if (value === 3) {
            return [ '<span class="text-success">成功', '</span>' ].join(sn);
        } else if (value === 2) {
            return [ '<span class="text-danger">失败', '</span>' ].join(sn);
        } else if (value === 0) {
            return [ '<span class="text-default">未处理', '</span>' ].join(sn);
        }
        return [ '<span class="text-primary">', '</span>' ].join(sn);
    }

    function caozuo(value, row, index) {
        var col = '-';
        if(row.status == 0){
            col = "<a onclick=\"tikuanpass('" + row.id + "', 3)\" href=\"javascript:void(0)\" title=\"通过\">通过</a>&nbsp;<a onclick=\"tikuanpass('" + row.id + "', 2)\" href=\"javascript:void(0)\" title=\"拒绝\">拒绝</a>";
        }
        return col;
    }

    function moneyFormatter(value, row, index) {

        if (value === undefined) {
            return "0.00";
        }

        if (value > 0) {
            return [ '<span class="text-danger">', '</span>' ]
                .join(toDecimal2(value));
        }
        return [ '<span class="text-primary">', '</span>' ].join("0.00");

    }

    //制保留2位小数，如：2，会在2后面补上00.即2.00
    function toDecimal2(x) {
        var f = parseFloat(x);
        if (isNaN(f)) {
            return false;
        }
        var f = Math.round(x * 100) / 100;
        var s = f.toString();
        var rs = s.indexOf('.');
        if (rs < 0) {
            rs = s.length;
            s += '.';
        }
        while (s.length <= rs + 2) {
            s += '0';
        }
        return s;
    }

    function dateFormatter(value, row, index) {
        return DateUtil.formatDatetime(value);
    }
    function remarkFormatter(value, row, index) {
        return [ "<p class='text-danger'>", "</p>" ].join(value);
    }

    //设置传入参数
    function queryParams(params) {
        params['account'] = $("#userAccount").val();
        params['status'] = $("#sstatus").val();
        params['begin'] = $("#begin").val();
        params['end'] = $("#end").val();
        params['accountType'] = $("#saccountType").val();
        return params
    }
    $(function() {
// 			var begin = DateUtil.formatDatetime(DateUtil.getCurrentDate());
// 			setDate(begin, begin);
        getTab();
    })

    function search() {
        $("#datagrid_tb").bootstrapTable('refresh');
    }

    function setDate(begin, end) {
        $('#begin').val(begin);
        $('#end').val(end);
    }
    function tikuanpass(id, status){
        var pass = "";
        if(status == 3){
            pass = prompt("拒绝理由", "");
            if(pass == ""){
                return;
            }
        }
        $.ajax({
            url:"/tikuanpass",
            data : {
                "orderid" : id,
                "status" : status,
                "remark" : pass
            },
            dataType:"json",
            success:function(j){
                if(j.status == 200){
                    alert("成功!");
                    window.location.reload();
                }else{
                    alert("失败！");
                }
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
<script id="recordtype_tpl" type="text/html">
    {{each data as option}}
    <option value="{{option.type}}">{{option.name}}</option>
    {{/each}}
</script>
</body>
</html>

