var  storage = window.localStorage;//获取本地localStorage
$(function(){
    //错误信息
    $('#errorWarn').val() && $.alert($('#errorWarn').val());;

    //自动填写本地存储的用户名密码
    if(storage && storage.getItem('rememberPwd')){
        $('#userName').val(storage.getItem('userName'));
        $('#userPassword').val(storage.getItem('userPassword'));
        $('#rememberPwd').attr('checked','true');
    }

    $('#verfiy').click(function(){
        var src = '/code.jpg?_='+new Date().getTime();
        $(this).attr('src',src);
    });

    $('#mobileLoginForm').submit(function() {
        var token = $("#mobileLoginForm").attr("data-token");
        var content = $('#userName').val();
        var password = $("#userPassword").val();
        if(!content){
            $.alert('用户名不能为空');
            return false;
        }
        if(!password){
            $.alert('密码不能为空');
            return false;
        }
        if($('input[name="code"]').size() > 0){
            if(!$('input[name="code"]').val()){
                $.alert('验证码不能为空');
                return false;
            }else if($('input[name="code"]').val().length < 4){
                $.alert('验证码错误');
                return false;
            }
        }
        try {
            storage.removeItem("userName");
            storage.removeItem("userPassword");
            storage.removeItem("rememberPwd");
            if (storage && $('#rememberPwd').is(':checked')) {
                storage.setItem("userName", $('#userName').val());
                storage.setItem("userPassword", $('#userPassword').val());
                storage.setItem("rememberPwd", $('#rememberPwd').is(':checked'));
            }
        } catch (e) {}
        $("#account").val(content);
        var passwordMd5 = $.md5(password)+token;
        $("#password").val($.md5(passwordMd5));
        return true;
    });
});