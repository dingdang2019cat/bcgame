<%@ page import="com.hehaoyisheng.bcgame.utils.ConvertUtils" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/4/30
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<!--
<div id="code"><img src=\"data:image/png;base64,${qrCode}\"/></div>
-->

<div id="code"></div>

</body>

<script>
    $('#code').qrcode("${qrCode}");
</script>
</html>
