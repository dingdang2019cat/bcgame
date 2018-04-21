
$(function() {
    //手机注册则跳转至手机页面
    var cookie = document.cookie.split(';');
    var isMobile = '';
    $(cookie).each(function(){
        if( this.indexOf('mobile') > -1 ) {
            isMobile = true;
        }
    });
    /*
    if ( isMobile ) {
        console.log('cookie中mobile已设置。。。');
    }else if(navigator.userAgent.match(/(iPhone|iPod|iPad|Android|ios)/i)){
        var code = location.href.split('code=')[1];
        if(code && code != 'null'){
            window.location.href = '/registerByMobile?code=' + code;
        }else{
            window.location.href = '/registerByMobile';
        }

    }
    */

    $('#verify').click(function(){
        var src = '/code.jsp?_='+new Date().getTime();
        $(this).attr('src',src);
    });

    $('#account').keyup(function(){
        this.value=this.value.replace(/\W/g,'');
        $('#errorWarn').text("");
    });
});
/* 提交检验start */
function checkUserName(isAjax){
    var reg = /^[a-zA-Z]\w{5,13}/g;
    var isTrue = true;
    if($('#account').val() == ""){
        $('#account').addClass('errorInput').parent().removeClass('okMsg');
        $('#errorWarn').html("用户名不能为空");
        isTrue = false;
    }else if($('#account').val().length < 6){
        $('#account').addClass('errorInput').parent().removeClass('okMsg');
        $('#errorWarn').html("用户名必须达到6位");
        isTrue = false;
    }else if(!reg.test($('#account').val())){
        $('#account').addClass('errorInput').parent().removeClass('okMsg');
        $('#errorWarn').html("用户名格式不正确");
        isTrue = false;
    }else{
        if(isAjax){
            $.ajax({
                url:'/check/account',
                data:'account='+$('#account').val(),
                dataType:'json',
                type:'post',
                success:function(res){
                    if(res.status == 200){
                        $('#account').removeClass('errorInput').parent().addClass('okMsg');
                        $('#errorWarn').html("");
                        isTrue = true;
                    }else{
                        $('#account').addClass('errorInput').parent().removeClass('okMsg');
                        $('#errorWarn').html("用户名已被注册");
                        isTrue = false;
                    }
                }
            });
        }
    }
    return isTrue;
}

function checkCode(){
    var code = $("#verifyCode").val();
    if(code==""){
        $('#verifyCode').addClass('errorInput');
        $('#errorWarn').html("验证码不能为空");
        return false;
    }else{
        $('#verifyCode').removeClass('errorInput');
        $('#errorWarn').html("");
        return true;
    }
}

function doRegist(){
    if(!checkUserName() || !checkCode()){
        return;
    }

    var args = "account="+$('#account').val()+"&extcode="+$('#extcode').val()+"&code="+$("#verifyCode").val();
    ajaxExt({
        type : 'post',
        data : args,
        url : '/registByCode',
        dataType : 'json',
        callback:function(data){
            var name = $('#account').val();
            regSuccessLayer("欢迎来到金牌娱乐，请牢记您的账户信息。<p>账户：" + name + "</p><p class='fontColorRed'>默认密码：aa123456</p>");
            $('body').on('click','.closeBtn',function(){
                window.location.href="/index";
            });
        },
        complete:function(){
            $('#verify').click();
        }
    });
}
/* 提交检验end */

//弹框
function regSuccessLayer(string) {
    layer.closeAll();
    var content = "<p class='lottTipLayerTitle'>温馨提示</p><div class='lottTipBox'><p class='msg'><i></i><span class='content'>" + string + "</span></p></div><div class='lottTipBtn'><a href='javascript:;' class='btn closeBtn'>我知道了</a></div>";
    var index = layer.open({
        type: 1,
        skin: 'lottTipLayer',
        shift: 5,
        area: ['480px', '260px'],
        title: false,
        content: content,
        success: function () {
            $('.closeBtn').on('click',function(){
                layer.closeAll();
                window.location.href = '/index';
            });
        },
        cancel:function(){
            layer.closeAll();
        }
    });
};