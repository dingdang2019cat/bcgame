<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/4/21
  Time: 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/>
    <!-- 删除苹果默认的工具栏和菜单栏 -->
    <meta content="yes" name="apple-mobile-web-app-capable">
    <!-- 设置苹果工具栏颜色 -->
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <!-- 忽略页面中的数字识别为电话，忽略email识别 -->
    <meta name="format-detection" content="telephone=no, email=no" />
    <title>欢迎使用金牌娱乐-登录页</title>
    <link rel="icon" href="/resource/favicon.ico"  type="image/x-icon" />
    <script src="/resource/mobile/flexible.js?ver=20180323"></script>
    <link rel="stylesheet" href="/resource/mobile/m-reset.css?ver=20180323" />
    <link rel="stylesheet" href="/resource/mobile/m-login.css?ver=20180323" />
</head>
<body>
<!-- 登录窗口 -->
<section class="main loginArea">
    <a href="https://kf1.learnsaas.com/chat/chatClient/chatbox.jsp?companyID=814048&configID=62880&jid=3635228849&s=1" target="_blank" class="onlineServices" title="在线客服"></a>
    <form action="/login" method="post" id="mobileLoginForm" class="loginBox" autocapitalize="off" autocorrect="off" data-token="WeZhDCdA">
        <div class="loginUserBarBox">
            <label class="loginUserBar">
                <input type="text" class="inputCont" id="userName" placeholder="用户名" />
                <i class="accountIcon"></i>
                <input type="hidden" name="account" id="account" />
            </label>
            <label class="loginUserBar">
                <input type="password" class="inputCont" id="userPassword" placeholder="密码" />
                <i class="pswIcon"></i>
                <input type="hidden" name="password" id="password" />
            </label>

        </div>
        <div class="loginBtnBox">
            <button type="submit" class="btn" id="login">登录</button>
        </div>
        <div class="rememberBox">
            <span class="rememberPsw"><input type="checkbox" class="rememberPwd" id="rememberPwd"/><label for="rememberPwd"></label>记住密码</span>
            <a href="/findPswByMobile" class="findPwdLink">找回密码</a>
        </div>
    </form>
</section>
<input type="hidden" id="errorWarn" value="">

<script src="/resource/jquery-1.11.0.min.js?ver=20180323"></script>
<script src="/resource/mobile/layer/layer.js?ver=20180323"></script>
<script src="/resource/jquery.md5.js?ver=20180323"></script>
<script src="/resource/spinner.js?ver=20180323"></script>
<script src="/resource/mobile/base.js?ver=20180323"></script>
<script src="/resource/mobile/login.js?ver=20180323"></script>
</div>
</body>
</html>

