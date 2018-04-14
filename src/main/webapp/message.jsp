<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/5
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<input type="hidden" id="pageCountMessage" value="${count}" />

<table class="userListTable" id="messageListTable">
    <tr class="listHeader">
        <th>标题</th>
        <th style="text-align:left; padding-left:20px;" width="100%">最新消息</th>
        <th>发送人</th>
        <th>消息时间</th>
        <th>接收人</th>
        <th>操作</th>
    </tr>

    <c:forEach var="message" items="${messages}">
    <input id="messageSendContet_${message.id}" value="${message.title}" type="hidden" />
    <tr class="listDetail ">
        <td>${message.title}</td>
        <td style="text-align:left; padding-left:20px;position: relative;" id="messageTitle_${message.id}">
            ${message.title}

        </td>
        <td>





            ${message.author}




        </td>
        <td>${message.createTime}</td>
        <td>

                ${message.account}



        </td>
        <td class="operate">
            <a href="javascript:;" onclick="messageDetail('7280','加我qq 918520168');" class="operateBtn delete fontColorTheme">查看</a>
            <a href="javascript:;" onclick="messageDelete('7280');" class="operateBtn delete fontColorTheme">删除</a>
        </td>
    </tr>
    </c:forEach>
    </tr>

</table>



<script type="text/javascript">
    function messageDelete(id) {
        ajaxObject('/message/messageDelete?id=' + id,"POST",function(){
            $("#messageSearch").click();
        });
    }
    function messageDetail(id,title) {
        ajaxLoad('messageDetailDiv', '/message/messageContentRead?id=' + id, {}, function() {
            layer.open({
                type: 1,
                skin: 'msgDetailsLayer',
                shift: 5,
                area:'450px',
                title:title,
                content:$('#messageDetailDiv')
            });
            $('#messageTitle_'+id).parent().removeClass('fontBold');
            $('#messageTitle_'+id).find('.unReadNum').remove();
            $('#messageContentDiv').scrollTop($('#messageContentDiv')[0].scrollHeight);
        });
    }
    function messageReply(id) {
        var revContent = $("#msgSendContent").val();
        if (!revContent) {
            $.alert("请输入回复内容！");
            return false;
        }
        if (checkHadSpecialChar(revContent)) {
            $.alert("回复内容不能包含特殊字符！");
            return false;
        }

        if (id) {
            Service("/message/messageContentReply","POST",{"id":id, "revContent":revContent},1,function(data){
                if (data == 1) {
                    $("#messageContentDiv").append('<p class="textRight"><span class="messageInfo messageRight" style="margin-right: 10px;">' + revContent + '</span><span class="msgUserName">我</span><p>').scrollTop($('#messageContentDiv')[0].scrollHeight);
                    $("#msgSendContent").val("").focus();
                }
            });
        }
    }
</script>
