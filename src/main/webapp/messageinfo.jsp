<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/6
  Time: 5:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div class="tableBox">
    <div class="messageContentDiv" id="messageContentDiv">

    <c:forEach var="messages1" items="${messages}">
        <c:choose>

            <c:when test="${messages1.account eq account}">    <!--如果 -->
                <p class="textRight">
                    <span class="messageInfo messageRight">
                            ${messages1.text}
                    </span>
                    <span class="msgUserName">我</span>
                </p>
            </c:when>

            <c:otherwise>  <!--否则 -->
                <p class="textLeft">
                    <span class="msgUserName">${duifang}</span>
                    <span class="messageInfo messageLeft">
                ${messages1.text}
						</span>
                </p>
            </c:otherwise>

        </c:choose>
    </c:forEach>



    </div>

    <!-- 填写发送消息-->
    <form class="msgSendContentDiv" id="msgDetailLayerForm" data-id="7280">
        <label>
            <input class="msgSendContent replyMsgContent" id="msgSendContent" maxLength=80 />
        </label>
        <!-- 弹窗按钮 -->
        <button type="submit" class="btn showMessageReply" id="showMessageReply">回复</button>
    </form>

</div>

<script type="text/javascript">
    $("#messageRevStatus_7280").text("已读").parent().removeClass('fontBold');
</script>

<script type="text/javascript">
    if (contentTimer) {
        clearInterval(contentTimer);
    }
    var doing = false;
    var startTime = '2018-01-06 05:53:45';
    var contentTimer = setInterval(function() {
        if (doing) {
            return false;
        }
        doing = true;
        // 如果已经关闭对话框则清除定时
        if (!$("#messageDetailDiv").is(":visible")) {
            clearInterval(contentTimer);
            return false;
        }
        ajaxExt({
            url:'/message/findMessageContent?messageId=7280&startTime=' + startTime,
            dataType:'json',
            loading:'',
            noError:true,
            callback:function(data){
                done(data);
            },
            complete:function(){
            }
        });
    }, 10000);
    function done(data) {
        var list = data.messageContentList;
        startTime = data.startTime;
        var html = "";
        for (var i = 0; i < list.length; i++) {
            var mc = list[i];
            var time = new Date(mc.createTime);
            var hour = time.getHours();
            var minutes = time.getMinutes();
            time = hour + ':' + minutes;
            html += '<p class="textLeft"><span class="msgUserName">' + mc.sender + '</span><span class="messageInfo messageLeft">' + mc.content + '</span> <span class="time">' + time + '</span><p>';
        }
        $("#messageContentDiv").append(html);
        doing = false;
        $('#messageContentDiv').scrollTop($('#messageContentDiv')[0].scrollHeight);
    }
</script>

