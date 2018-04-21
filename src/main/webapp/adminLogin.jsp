<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/4/21
  Time: 4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>






<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>代理平台</title>
</head>
<body>


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

<script src="/daili/js/core.js?v=1" path=""></script>
<script src="/common/js/contants.js"></script>
<div class="container">
    <div class="form-group">
        <h2 class="form-signin-heading">代理登录</h2>
        <label for="inputEmail" class="sr-only">用户名</label> <input type="email" id="username" class="form-control" placeholder="用户名" required autofocus> <label for="inputPassword" class="sr-only">密
        码</label> <input type="password" id="password" class="form-control" placeholder="密码" required>
        <div class="form-inline">
            <input type="text" id="verifyCode" class="form-control" placeholder="验证码" required><img id="verifycodeImg" style="cursor: pointer;" alt="验证码" src="verifycode.action" onclick="refreshVerifyCode(this)">
        </div>
        <div class="checkbox">
            <label> <input type="checkbox" value="remember-me"> 记住密码
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" onclick="doLogin();">登录</button>
    </div>
</div>


<div class="modal fade" id="cardModel" tabindex="-1" role="dialog" aria-labelledby="logoutLabel" >
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="logoutLabel">密保卡</h4>
            </div>
            <div class="modal-body">
                <form id="cardForm">
                    <table width="250px" style="margin-left:120px;">
                        <tr>
                            <td align="center"><span class='ccode'></span></td>
                            <td align="center"><span class='ccode'></span></td>
                            <td align="center"><span class='ccode'></span></td>
                        </tr>

                        <tr>
                            <td align="center"><input name="p" maxlength="1" style="width: 50px;" /></td>
                            <td align="center"><input name="p" maxlength="1" style="width: 50px;" /></td>
                            <td align="center"><input name="p" maxlength="1" style="width: 50px;" /></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="login4Card()">确认</button>
            </div>
        </div>
    </div>
</div>

<script language="javascript">
    $(function() {
        $("#verifyCode").keyup(function(event){
            if(event.keyCode ==13){
                doLogin();
            }
        });
        $("#password").keyup(function(event){
            if(event.keyCode ==13){
                if(!$("#verifyCode").val()){
                    $("#verifyCode").focus();
                    return;
                }
                doLogin();
            }
        });
    });
    function refreshVerifyCode() {
        var $img = $("#verifycodeImg");
        var time = (new Date()).getTime();
        $img.attr("src","verifycode.action?time=" + time);
    }
    function doLogin() {

        var account = $("#username").val().trim();
        var pwd = $("#password").val();
        if (account == '') {
            Msg.info("请输入账号");
            $("#username").focus();
            return;
        }
        if (pwd == '') {
            Msg.info("请输入密码");
            $("#password").focus();
            return;
        }
        $ajax({
            url : "dlogin.action",
            data : {
                account : account,
                password : pwd,
                verifyCode : $("#verifyCode").val()
            },
            success : function(data, textStatus, xhr) {
                var ceipstate = xhr.getResponseHeader("ceipstate")
                if (!ceipstate || ceipstate == 1) {// 正常响应
                    if(data.hasCard){
                        showCardWin(data.points);
                        refreshVerifyCode();
                        return;
                    }
                    window.location.href = "dlaccount.jsp";
                } else if (ceipstate == 2) {// 后台异常
                    Msg.error("后台异常，请联系管理员!");
                    refreshVerifyCode();
                } else if (ceipstate == 3) { // 业务异常
                    Msg.info(data.msg);
                    refreshVerifyCode();
                }
            }
        });
    }

    function showCardWin(points){
        $("#cardModel").modal('show');
        $form = $("#cardForm");
        $form[0].reset();
        $form.find(".ccode").each(function(index,element){
            this.innerHTML = points[index];
        });
    }


    function login4Card(){

        $form = $("#cardForm");
        var code = "";
        $form.find("input[name=p]").each(function(index,element){
            var v = $.trim(this.value);
            code += v;
        });

        if(code.length != 3){
            Msg.info("请输入密保卡");
            return;
        }

        $ajax({
            url : "/daili/login4Card.do",
            data : {
                code : code
            },
            success : function(data, textStatus, xhr) {
                var ceipstate = xhr.getResponseHeader("ceipstate")
                if (!ceipstate || ceipstate == 1) {// 正常响应
                    window.location.href = "/daili";
                } else if (ceipstate == 2) {// 后台异常
                    Msg.error("后台异常，请联系管理员!");
                } else if (ceipstate == 3) { // 业务异常
                    Msg.info(data.msg);
                }
            }
        });
    }

</script>
</body>
</html>
