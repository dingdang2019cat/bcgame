var validate = {
    'oldPsw' : {					//旧登录密码
        'value' : '',
        'istrue' : false,
        'elem' : $('#oldLoginPass'),
        'check' : function(){
            this.value = this.elem.val();
            if(this.value == ''){
                this.istrue =  falseAction(this.elem,'旧密码不能为空');
            }else{
                this.istrue = true;
            }
            return this.istrue;
        }
    },
    'newPsw' : {					//新登录密码
        'value' : '',
        'istrue' : false,
        'elem' : $('#newLoginPass'),
        'check' : function(isAjax){
            var obj = this;
            obj.value = obj.elem.val();
            if(obj.value == ''){
                obj.istrue = falseAction(obj.elem,'登陆密码不能为空');
            }else if(obj.value.length < 8){
                obj.istrue = falseAction(obj.elem,'密码必须达到8位');
            }else if(obj.value == $('#oldLoginPass').val()){
                obj.istrue = falseAction(obj.elem,'不能和原密码一致');
            }else{
                if(isAjax){
                    $.ajax({
                        url:'/check/newPass',
                        data:'password='+obj.value,
                        dataType:'json',
                        type:'post',
                        async: false,
                        success:function(res){
                            if(res.status == 200){
                                obj.istrue = trueAction(obj.elem);
                            }else if(res.status == 302){
                                location.href = "/logout";
                            }else{
                                obj.istrue = falseAction(obj.elem,'不能和资金密码一致');
                            }
                        }
                    });
                }
            }
            return obj.istrue;
        }
    },
    'newPswConfirm' : {				//确认新登录密码
        'value' : '',
        'istrue' : false,
        'elem' : $('#confirmLoginPass'),
        'check' : function(){
            this.value = this.elem.val();
            if(this.value == ''){
                this.istrue = falseAction(this.elem,'确认登陆密码不能为空');
            }else if(this.value != $('#newLoginPass').val()){
                this.istrue = falseAction(this.elem,'登陆密码不一致');
            }else{
                this.istrue = true;
            }
            return this.istrue;
        }
    },
    'oldSafePsw' : {               //旧资金密码
        'value' : '',
        'istrue' : false,
        'elem' : $('#oldSafeWord'),
        'check' : function(){
            this.value = this.elem.val();
            if(this.value == ''){
                this.istrue =  falseAction(this.elem,'旧资金密码不能为空');
            }else{
                this.istrue = true;
            }
            return this.istrue;
        }
    },
    'newSafePsw' : {				//新资金密码
        'value' : '',
        'istrue' : false,
        'elem' : '',
        'check' : function(elemId,isAjax){
            var obj = this;
            obj.elem = $('#'+elemId);
            obj.value = obj.elem.val();
            if(obj.value == ''){
                obj.istrue = falseAction(obj.elem,'新资金密码不能为空');
            }else if(obj.value.length < 8){
                obj.istrue = falseAction(obj.elem,'资金密码必须达到8位');
            }else{
                if(isAjax){
                    $.ajax({
                        url:'/check/newSafe',
                        data:'password=' + obj.value,
                        dataType:'json',
                        type:'post',
                        async: false,
                        success:function(res){
                            if(res.status == 200){
                                obj.istrue = trueAction(obj.elem);
                            }else if(res.status == 302){
                                location.href = "/logout";
                            }else if(res.status == 606){
                                obj.istrue = falseAction(obj.elem,'不能和原资金密码一致');
                            }else{
                                obj.istrue = falseAction(obj.elem,'不能和登陆密码一致');
                            }
                        }
                    });
                }
            }
            return obj.istrue;
        }
    },
    'newSafePswConfirm' : {               //确认资金密码
        'value' : '',
        'istrue' : false,
        'elem' : $('#confirmSafePass'),
        'check' : function(){
            this.value = this.elem.val();
            if(this.value == ''){
                this.istrue = falseAction(this.elem,'确认资金密码不能为空');
            }else if(this.value != $('#newSafePass').val()){
                this.istrue = falseAction(this.elem,'资金密码不一致');
            }else{
                this.istrue = true;
            }
            return this.istrue;
        }
    },
    'msgUserName' : {					//站内信接收人
        'value' : '',
        'istrue' : false,
        'elem' : $('#messageRever'),
        'check' : function(isAjax){
            var obj = this;
            obj.value = obj.elem.val();
            if(obj.elem.attr('readonly')){
                return true;
            }else{
                if(obj.value == ''){
                    obj.istrue = falseAction(obj.elem,'接收人不能为空');
                }else if(this.value.length < 6){
                    obj.istrue = falseAction(obj.elem,'接收人必须达到6位');
                }else{
                    if(isAjax){
                        $.ajax({
                            url:'/message/messageReverCheck',
                            data:'account=' + obj.value,
                            dataType:'json',
                            type:'post',
                            async: false,
                            success:function(res){
                                if(res){
                                    obj.istrue = trueAction(obj.elem);
                                }else if(res.status == 302){
                                    location.href = "/logout";
                                }else{
                                    obj.istrue = falseAction(obj.elem,'接收人不在团队中');
                                }
                            }
                        });
                    }
                }
                return obj.istrue;
            }
        }
    },
    'msgTitle' : {								//站内信标题
        'value' : '',
        'istrue' : false,
        'elem' : $('#messageTitle'),
        'check' : function(){
            this.value = this.elem.val();
            if($.trim(this.value) == ''){
                this.istrue =  falseAction(this.elem,'标题不能为空');
            }else if(checkHadSpecialChar(this.value)){
                this.istrue =  falseAction(this.elem,'不能包含特殊字符');
            }else{
                this.istrue = trueAction(this.elem);
            }
            return this.istrue;
        }
    },
    'msgContent' : {							//站内信内容
        'value' : '',
        'istrue' : false,
        'elem' : $('#messageSendContent'),
        'check' : function(){
            this.value = this.elem.val();
            if($.trim(this.value) == ''){
                this.istrue =  falseAction(this.elem,'发送内容不能为空');
            }else if(checkHadSpecialChar(this.value)){
                this.istrue =  falseAction(this.elem,'不能包含特殊字符');
            }else{
                this.istrue = trueAction(this.elem);
            }
            return this.istrue;
        }
    },
    'bankCard' : {							//新绑定银行账号
        'value' : '',
        'istrue' : false,
        'elem' : $('#card1'),
        'check' : function(isAjax){
            var obj = this;
            obj.value = obj.elem.val();
            if(obj.value == ''){
                obj.istrue =  falseAction(obj.elem,'银行账号不能为空');
            }else if(obj.value.length < 16 || obj.value.length > 19){
                obj.istrue =  falseAction(obj.elem,'银行账号必须是16位至19位');
            }else{
                if(isAjax){
                    $.ajax({
                        url:'/check/card',
                        data:'card=' + obj.value,
                        dataType:'json',
                        type:'post',
                        async: false,
                        success:function(res){
                            if(res.status == 200){
                                obj.istrue = trueAction(obj.elem);
                            }else if(res.status == 302){
                                location.href = "/logout";
                            }else{
                                obj.istrue = falseAction(obj.elem,'该银行卡已被绑定');
                            }
                        }
                    });
                }
            }
            return obj.istrue;
        }
    },
    'bankCardConfirm' : {					//确认银行账号
        'value' : '',
        'istrue' : false,
        'elem' : $('#card'),
        'check' : function(){
            this.value = this.elem.val();
            if(this.value == ''){
                this.istrue =  falseAction(this.elem,'银行账号不能为空');
            }else if(this.value != $('#card1').val()){
                this.istrue =  falseAction(this.elem,'银行账号不一致');
            }else{
                this.istrue = trueAction(this.elem);
            }
            return this.istrue;
        }
    },
    'email' : {
        'value' : '',
        'istrue' : false,
        'elem' : $('#email'),
        'check' : function(){
            var reg = /\w{1,30}@\w{1,20}.com$/g;
            this.value = this.elem.val();
            if(!reg.test(this.value)){
                this.istrue =  falseAction(this.elem,'输入邮箱格式不正确');
            }else{
                this.istrue = true;
            }
            return this.istrue;
        }
    }
}