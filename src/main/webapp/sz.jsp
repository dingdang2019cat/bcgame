<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<title>main.html</title>

	<meta name="keywords" content="keyword1,keyword2,keyword3">
	<meta name="description" content="this is my page">
	<meta name="content-type" content="text/html; charset=UTF-8">
	<link href="http://cdn.staticfile.org/twitter-bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">


	<script type="text/javascript" src="http://cdn.staticfile.org/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript" src="http://cdn.staticfile.org/jqueryui/1.10.2/jquery-ui.min.js"></script>
	<script type="text/javascript" src="http://cdn.staticfile.org/jqueryui-touch-punch/0.2.2/jquery.ui.touch-punch.min.js"></script>
	<script type="text/javascript" src="http://cdn.staticfile.org/twitter-bootstrap/3.0.1/js/bootstrap.min.js"></script>

	<script type="text/javascript" src="http://ibootstrap-file.b0.upaiyun.com/www.layoutit.com/js/jquery.htmlClean.js"></script>
	<script type="text/javascript" src="http://ibootstrap-file.b0.upaiyun.com/www.layoutit.com/js/builder/v3/scripts.min.js"></script>



	<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

</head>

<body>
<script type="text/javascript">
    var pass = prompt("请输入密码！", "");
    $.ajax({
        url:"adminsz.action",
        dataType:"json",
        data : {
            password : pass,
        },
        success:function(j){
            if(j.success){
            }else{
                alert("密码错误!");
                window.location.href="dlaccount.jsp";
            }
        }
    });
</script>
<div class="modal fade" id="head_editpwd" tabindex="-1" role="dialog" aria-labelledby="head_editpwdLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="head_editpwdLabel">群发站内信</h4>
			</div>
			<div class="modal-body">
				标题：<input id="znxtitle" type="text" size="60"/><br/>
				<br/>
				内容：<textarea id="znxtext" rows="15" cols="65"></textarea>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="qunfa();">发送</button>
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
<div class="modal fade" id="head_editpwd2" tabindex="-1" role="dialog" aria-labelledby="head_editpwdLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="head_editpwdLabel">修改密码</h4>
			</div>
			<div class="modal-body">

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="doUpdpwd();">保存</button>
			</div>
		</div>
	</div>
</div>
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
			<li><a href="dlmnyrd.jsp">团队账变</a></li>
			<li><a href="dlreport.jsp">团队统计</a></li>

			<li><a href="generalizeLink.jsp">修改密码</a></li>

			<li><a href="dlfh.jsp">业绩提成</a></li>

			<li><a href="dldrawrd.jsp">取款日志</a></li>
		</ul>
	</div>
	<div class="row clearfix">
		<div style="text-align:center">
			<table>

				<table border="1" align="center">
					<tr><td>人工开奖</td><td colspan="4">期数:<input type="text" id="rgkjqishu"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号码:<input type="text" id="rgkjhaoma"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="rgkaijiang()">开奖</button></td></tr>
					<tr><td>站内信群发</td><td><a href="#" data-toggle="modal" data-target="#head_editpwd">编辑</a></td><td><a href="#" data-toggle="modal" data-target="#head_editpwd1">历史记录</a></td><td colspan="2"></td></tr>
					<tr><td>网址</td><td colspan="4"><input type="text" id="mainURL" value="" size="100"/></td></tr>
					<tr><td>时时彩赔率</td><td colspan="4"><input type="text" id="sscpl" value="" size="100"/></td></tr>
					<tr><td>11选5赔率</td><td colspan="4"><input type="text" id="11x5pl" value="" size="100"/></td></tr>
					<tr><td>pk10赔率</td><td colspan="4"><input type="text" id="pk10pl" value="" size="100"/></td></tr>
				</table>
				<button onclick="update()">保存</button>
			</table>
		</div>
	</div>
</div>
<script>
    function qunfa(){
        $.ajax({
            url:"qunfa.action",
            data : {
                "title" : encodeURI(encodeURI($("#znxtitle").val())),
                "text" : encodeURI(encodeURI($("#znxtext").val()))
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

    function deleteqiyong(caozuo){
        $.ajax({
            url:"deleteqiyong.action",
            data : {
                "caozuo" : caozuo
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

    function rgkaijiang(){
        $.ajax({
            url:"rgkj.action",
            data : {
                "qihao" : $("#rgkjqishu").val(),
                "haoma" : $("#rgkjhaoma").val()
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
    function update(){
        $.ajax({
            url:"doSz.action",
            data : {
                name : encodeURI(encodeURI($("#zdks").val())),
                api : $("#api").val(),
                mainURL : $("#mainURL").val()
            },
            dataType:"json",
            success:function(j){
                if(j.success){
                    alert("修改成功!");
                    window.location.reload();
                }else{
                    alert("修改失败！");
                }
            }
        });
    }

    function kj(caizhong){
        var url1 = caizhong == "CQSSC" ? "sscKj.action" : "FFCKj.action";
        $.ajax({
            url:url1,
            dataType:"json",
            success:function(j){
                if(j.success){
                    alert("开奖成功!");
                    window.location.reload();
                }else{
                    alert("开奖失败！");
                }
            }
        });
    }

    function gj(caizhong){
        var url1 = "Gj.action?lotCode=" + caizhong;
        $.ajax({
            url:url1,
            dataType:"json",
            success:function(j){
                if(j.success){
                    alert("关奖成功!");
                    window.location.reload();
                }else{
                    alert("关奖失败！");
                }
            }
        });
    }
    var au = document.createElement("audio");
    au.preload="auto";
    au.loop = "loop";
    au.src = "sounds/5103.mp3";
    function playSound() {
        au.play();
    }
    function xq(qihao, lotCode){
        location.href = "bcs.action?qiHao=" + qihao + "&lotCode=" + lotCode + "&page=1";
    }
    window.setInterval(showalert, 10000);
    function showalert() {
        $.ajax({
            url:"newMessage.action",
            dataType:"json",
            success:function(j){
                if(j.success){
                    alert("有新的提款申请!");
                }
            }
        });
    }

    window.setInterval(showkj, 3000);
    function showkj() {
        $.ajax({
            url:"bcinfo.action",
            dataType:"json",
            success:function(j){
                if(j.qihaossc == null || j.qihaossc == ""){
                    $("#qihaossc").text("未开奖");
                    $("#haomassc").html("未开奖");
                }else{
                    if(j.haomassc == "?,?,?,?,?"){
                        $("#haomassc").html("<button onclick=\"tzkj()\">暂停</button>");
                    }else{
                        $("#haomassc").html(j.haomassc);

                    }
                }
                if(j.qihaoffc == null || j.qihaoffc == ""){
                    $("#qihaoffc").text("未开奖");
                    $("#haomaffc").html("未开奖");

                }else{
                    $("#haomaffc").html(j.haomaffc);
                }

            }
        });
    }

    function tzkj() {
        $.ajax({
            url:"tzkj.action",
            dataType:"json",
            success:function(j){
                showkj();
            }
        });
    }
</script>
</body>
</html>

