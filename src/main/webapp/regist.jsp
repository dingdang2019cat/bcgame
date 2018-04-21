<%--
  Created by IntelliJ IDEA.
  User: lnzyz
  Date: 2018/4/20
  Time: 8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>金牌娱乐 - 注册</title>
    <link rel="icon" href="/resource/favicon.ico"  type="image/x-icon" />
    <link rel="stylesheet" href="/resource/reset.css?ver=20180323"/>
    <link rel="stylesheet" href="/resource/wk-common.css?ver=20180323"/>
    <link rel="stylesheet" href="/resource/wk-login.css?ver=20180323"/>
    <script type="text/javascript" src="/resource/jquery-1.11.0.min.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/jquery.timer.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/layer.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/spinner.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/base.js?ver=20180323"></script>
    <script type="text/javascript" src="/resource/wk-register.js?ver=20180323"></script>
</head>
<body>
<div class="main">
    <!--注册区域-->
    <div class="loginArea">
        <div class="loginLeft"></div>
        <div class="loginRight">
            <div class="loginMethod">
                <p>快速注册入口</p>
            </div>
            <div class="loginDetail">
                <input type="text" class="inputCont" name="userName" id="account" placeholder="字母开头6-14位数字、字母" id="account" maxLength=14  onblur="checkUserName(true)"/>
                <i class="userNameIcon"></i>
            </div>
            <div class="loginDetail">
                <input type="text" class="inputCont" name="code" id="verifyCode" placeholder="请输入验证码" maxlength="4" onblur="checkCode()"/>
                <img src="/code.jsp" id="verify" alt="验证码" class="userCodeImg"/>
                <i class="userCodeIcon"></i>
            </div>
            <div class="loginTips">
                <p class="defaultPwd">默认密码：aa123456</p>
            </div>
            <p class="errorTips" id="errorWarn"></p>
            <div class="loginBtnArea">
                <button type="button" class="btn submitBtn" onclick="doRegist()" value="提交注册">提交注册</button>
            </div>
            <p class="accountLogin">已有账号，<a href="/login">立即登入</a></p>
            <input name="extcode" id="extcode" type="hidden" value="${code}" />
        </div>
    </div>
</div>

<!-- 注册成功 -->
<div id="registerSuccess" style="display:none;">
    <div class="layerBox registerSuccessBox">
        <i class="registerSuccessIcon"></i>
        <div class="registerSuccessInfo">
            <p>
                <span>用户名：</span>
                <span id="registerUser"></span>
            </p>
            <p>
                <span>登录密码：aa123456</span>
            </p>
            <p class="fontColorRed">登录平台后，请及时修改密码！</p>
        </div>
        <div class="dialogBtn">
            <a href="javascript:;" class="btn">确定</a>
        </div>
    </div>
</div>

<!--底部-->
<div class="footer">
    <div class="w920">
        <i class="logo"></i>
        <ul class="download">
            <li class="pc"><a href="/download?t=4"><i></i>pc端下载</a></li>
            <li class="ios"><a href="/download?t=2"><i></i>ios端下载</a></li>
            <li class="android"><a href="/download?t=1"><i></i>安卓客户端下载</a></li>
            <li class="auto"><a href="javascript:;"><i></i>自动投注软件</a></li>
        </ul>
        <p>@金牌娱乐  版权所有 2010-2018 copyright DH·VK Interactive Network Techno Co.&nbsp;&nbsp;|&nbsp;&nbsp;<a class="dnsLink" href="/repairDNS" target="_blank">防劫持教程</a></p>
    </div>
</div>

</body>
</html>
