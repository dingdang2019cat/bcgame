//登录密码
function checkPsw(){
    //登录密码
    var password = $('#passWord0').val();
    if(password == ''){
        return falseAction($('#passWord0'),'登陆密码不能为空');
    }else if(password.length < 8){
        return falseAction($('#passWord0'),'密码必须达到8位');
    }else{
        return trueAction($('#passWord0'));
    }
}
//确认登录密码
function checkPswAgain(){
    var password1 = $('#passWord1').val();
    if (password1 == ''){
        return falseAction($('#passWord1'),'确认登陆密码不能为空');
    }else if (password1 != $('#passWord0').val()) {
        return falseAction($('#passWord1'),'登陆密码不一致');
    }else{
        return trueAction($('#passWord1'));
    }
}
//资金密码
function checkSafePsw(){
    var safePsw = $('#improveSafePassWord').val();
    if (safePsw == ''){
        return falseAction($('#improveSafePassWord'),'资金密码不能为空');
    }else if (safePsw.length < 8 ) {
        return falseAction($('#improveSafePassWord'),'资金密码必须达到8位');
    }else if (safePsw == $('#passWord0').val()) {
        return falseAction($('#improveSafePassWord'),'不能和登陆密码一致');
    }else{
        return trueAction($('#improveSafePassWord'));
    }
}
//确认资金密码
function checkSafePswAgain(){
    var safePassConfirm = $("#safePassWordCheck").val();
    if (safePassConfirm == ''){
        return falseAction($('#safePassWordCheck'),'确认资金密码不能为空');
    }else if (safePassConfirm != $('#improveSafePassWord').val()) {
        return falseAction($('#safePassWordCheck'),'资金密码不一致');
    }else{
        return trueAction($('#safePassWordCheck'));
    }
}
//选择问题
function checkQuestion(){
    if($('#qsType1').val() == $('#qsType2').val()) {
        $("#qsType2Msg").html("两次问题不能相同");
        return false;
    }else{
        $("#qsType2Msg").html("");
        return true;
    }
}
//答案1
function checkAnswer1(){
    if($('#answer1').val() == "" ){
        return falseAction($('#answer1'),'答案1不能为空');
    }else{
        return trueAction($('#answer1'));
    }
}
//答案2
function checkAnswer2(){
    if($('#answer2').val() == "" ){
        return falseAction($('#answer2'),'答案2不能为空');
    }else{
        return trueAction($('#answer2'));
    }
}
//提款卡名
function checkBankUserName(){
    if($('#cardName').val() == "" ){
        return falseAction($('#cardName'),'请输入提款银行卡姓名');
    }else{
        return trueAction($('#cardName'));
    }
}


function setSafePassword() {
    if(checkPsw()&&checkPswAgain()&&checkSafePsw()&&checkSafePswAgain()&&checkQuestion()
        &&checkQuestion()&&checkAnswer1()&&checkAnswer2()&&checkBankUserName())
    {
        var d = serializeObject("#improveInfoForm");
        ajaxExt({
            url: '/safe/setSafeInformation',
            type:'post',
            dataType:'json',
            data:d,
            callback:function(data){
                $("#setSafePassword").remove();
                $.alert(data);
                if(typeof(gloas) != "undefined"){ //用户中心需要用到，充值提现用不到
                    gloas.hasSafeWord = true;
                }
                $("#niceName").val(d.cardName);
                if(window.location.href.indexOf('deposit') > 0){
                    location.reload();
                }
            }
        });
    }
}