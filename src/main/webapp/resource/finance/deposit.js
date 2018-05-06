$(function(){
    checkHadNotSafePassword();
    var bankCardNum = $('#bankCardNum').val() == '' ? 0:$('#bankCardNum').val();
    if(bankCardNum <=0 && needSetSafePassword != 'true'){
        layer.closeAll();
        var content = "<p class='lottTipLayerTitle'>温馨提示</p><div class='lottTipBox'><p class='msg'><i></i><span class='content'>您没有绑定过相关银行卡，是否前去绑定银行卡？</span></p></div><div class='lottTipBtn2'><a href='/user/index?tabId=myCard' class='btn'>前往绑定</a><a href='javascript:;' class='btn closeBtn'>关闭</a></div>";
        var index = layer.open({
            type: 1,
            skin: 'lottTipLayer',
            shift: 5,
            area: ['480px' , '260px'],
            title: false,
            content: content,
            success: function () {
                $('.closeBtn').on('click',function(){
                    layer.close(index);
                });
            }
        });
    }

    $("#amount").keyup(function(){
        if(this.value > parseInt(canDepositMoney)){
            this.value = parseInt(canDepositMoney);
        }
        checkMoney(this);
        rechAmountShow(this.value);
    }).on('focus', function() {
        if(this.value) {
            $('#rechAmountInfo').parent().show();
        }
    }).on('blur', function(){
        $('#rechAmountInfo').parent().hide();
    });
});

function checkMoney(obj) {
    var me = obj,v = me.value;
    me.value = v = v.replace(/^0*/g, '');
    me.value = v = v.replace(/[^\d]/g, '');
};

function checkForm() {
    if (!checkHadNotSafePassword()) {
        return false;
    }

    var maintenanceStatus = $('.btnRadio:checked').attr('data-maintenanceStatus');
    if(maintenanceStatus == 1){
        $.alert('该银行维护中，请稍后再试并留意官方公告');
        return false;
    }

    if (parseInt(canDepositCount) <= 0) {
        $.alert("今天可提现次数:" + canDepositCount);
        return false;
    }
    var bankCardId = $("#bankCardId:checked").val();
    if (!bankCardId) {
        $.alert("请选择银行！");
        return false;
    }
    var amount = $("#amount").val();
    if (!amount || amount <= 0) {
        $.alert("请输入提款金额！");
        return false;
    }
    if (parseFloat(amount) < parseFloat(sysMinDeposit)) {
        $.alert("最低提现额度为：" + sysMinDeposit);
        return false;
    }
    if (parseFloat(amount) > parseFloat(sysMaxDeposit)) {
        $.alert("最高提现额度为：" + sysMaxDeposit);
        return false;
    }
    if (parseFloat(amount) > parseFloat(canDepositMoney)) {
        $.alert("可提现余额不足！");
        return false;
    }
    var safePassword = $("#safePassword").val();
    if (!safePassword) {
        $.alert("请输入资金密码！");
        return false;
    }
    var reg = /^.{8,16}$/;
    if(!reg.test(safePassword)){
        $.alert("资金密码必须为8-16位的字母或数字");
        return false;
    }

    $('#depositSubmit').attr('disabled','disabled');
    spinner.spin($("body").get(0));
    $.ajax({
        type:"POST",
        url:"/deposit/checkFee",
        data:'',
        dataType:'json',
        success:function(rel) {
            spinner.spin();
            $('#depositSubmit').removeAttr('disabled');
            try {
                rel = eval('('+rel+')');
            } catch (e) {
            }
            if(rel.status == 302){
                location.href = "/logout";
            }else if(rel.status == 200){
                deposit();
            }else if(rel.status == 501){
                content = "<p class='lottTipLayerTitle'>温馨提示</p><div class='lottTipBox'><p class='msg'><i></i>" + rel.content + "</p></div><div class='lottTipBtn2'><a href='javascript:;' class='blueBtn'  id='continueDeposit' onclick='deposit();' style='display:inline-block;'>是</a><a href='javascript:;' class='btn closeBtn'>否</a></div>";
                layer.closeAll();
                var index = layer.open({
                    type: 1,
                    skin: 'lottTipLayer',
                    shift: 5,
                    area: ['480px' , '260px'],
                    title: false,
                    content: content,
                    success: function () {
                        $('.closeBtn').on('click',function(){
                            layer.close(index);
                        });
                    }
                });
            }else{
                $.alert(rel.content);
            }
        },
        error:function(){
            $('#depositSubmit').removeAttr('disabled');
        }
    });

    return false;
}

function deposit(){
    $('#continueDeposit').css('pointer-events','none');
    spinner.spin($("body").get(0));
    $.ajax({
        type:"POST",
        url:"/deposit/deposit",
        data:$("#depositAreaForm").serializeArray(),
        cache:false,
        dataType:'json',
        success:function(rel) {
            spinner.spin();
            $('#continueDeposit').css('pointer-events','all');
            try {
                rel = eval('('+rel+')');
            } catch (e) {
            }
            if(rel.status == 302){
                location.href = "/logout";
            }else if(rel.status == 200){
                $.alert("您的提现申请已成功！<br />请耐心等待工作人员审核，感谢您的支持与配合！");
                $('#depositAreaForm')[0].reset();
            }else if(rel.status == 901){
                var text = '尊敬的用户您好<br/>';
                text += '平台最低提款流水要求，充值金额的'+rel.content.all+'%<br/>';
                text += '您已完成<span style="color:green;">'+rel.content.done+'</span>%<br/>';
                text += '尚需完成<span style="color:red;">'+rel.content.need+'</span>%';
                $.alert(text);
            }else{
                $.alert(rel.content);
            }
        },
        error:function(){
            $('#continueDeposit').css('pointer-events','all');
        }
    });
}

//填写充值金额显示大号字体提示
function rechAmountShow(num){
    if(num) {
        $('#rechAmountInfo').html(num).parent().show();
    } else {
        $('#rechAmountInfo').parent().hide();
    }
}
