$(function(){
    var errorMessage = $('#errorMessage').val();
    if (errorMessage) {
        $.alert(errorMessage);
    }
    howRechAnimateFun();

    /* 充值方式轮播图start */
    $('.howRecharge').on('click',function(){
        $('.swiper-wrapper').empty();
        var id = $(this).attr('data-id');
        if(id){
            ajaxExt({
                url : '/recharge/listImg',
                method : "get",
                data : {'guideId':id},
                dataType:'json',
                async: false,
                callback : function(data) {
                    for(var i in data){
                        var html = '<div class="swiper-slide"><h2>'+data[i].title+'</h2><img src="'+data[i].img+'"></div>';
                        $('.swiper-wrapper').append(html);
                    }
                    $('.rechTypeLayer').show();
                    var swiper = new Swiper('.swiper-container', {
                        allowTouchMove: false,
                        navigation: {
                            nextEl: '.swiper-button-next',
                            prevEl: '.swiper-button-prev',
                        },
                    });
                }
            });
        }else{
            $.alert('完善中，敬请期待，如需帮助请联系在线客服');
        }
    });
    $('.closeRechLayer').on('click',function(){
        $('.rechTypeLayer').hide();
    });
    /* 充值方式轮播图end */

    $('.categoryBtn').on('click',function(){
        var id = $(this).attr('data-categoryId');
        categoryId = id;
        $('.rechargeA').click();
        $(this).addClass('active').siblings().removeClass('active');
        $('.changeBankAreaForm').hide();
        $('#changeBankAreaForm'+id).show();
        if(bankNameId && bankApiId){
            $('#changeBankAreaForm'+id).find('.btnRadio[value="' + bankNameId + '"][data-bankApiId="' + bankApiId + '"]').click();
        }else{
            $('#changeBankAreaForm'+id).find('.btnRadio').eq(0).click();
        }
        //充值推荐奖励
        var isTipLayer = 1;
        try {
            isTipLayer = window.myStorage.getItem("noLongerRechTip"); //1：符合条件弹框；0：不弹框。
        } catch (e) {}
        var $commendstatus0 = $('.categoryBtn[data-commendstatus="0"]');
        if($commendstatus0.length > 0 && isTipLayer == 1){
            var commendstatus = $(this).attr('data-commendstatus');
            if(commendstatus == 1 || commendstatus==''){
                var name =  $commendstatus0.eq(0).text();
                var rewardRate = $commendstatus0.eq(0).attr('data-rewardRate');
                var toCategoryId = $commendstatus0.eq(0).attr('data-categoryId');
                var html = '<a href="javascript:;" class="btn closeBtn" id="toCategoryBtn" onclick="toCateRecharge('+toCategoryId+')">立即前往</a>';
                html += '<label class="noLongerTipBox" for="noLongerRechTip"><input id="noLongerRechTip" type="checkBox"/>不再提示</label>';
                $.alert({
                    text:'充值大回馈，目前使用‘'+name+'’方式充值，可获得'+rewardRate+'%的充值奖励，机不可失！~',
                    icon:'',
                    otherBtn:html,
                    closeClassName:'hide',
                    isCloseAll:false,
                    closeDoOtherThing:function(){
                        setnRechTip();
                        layer.closeAll();
                    }
                });
            }
        }
        //如何充值
        if(!$('.howRecharge').attr('data-last')){
            $('.howRecharge i').addClass('show').removeClass('hide');
            howRechAnimateFun();
        }
    });

    if(categoryId){
        $('.categoryBtn[data-categoryId="' + categoryId +'"]').click();
    }else{
        $('.categoryBtn').eq(0).click();
    }

    $("input[name='chargeamount']").keyup(function(){
        var amount = parseFloat(this.value);
        var minmoney = parseFloat($("#txtMinAmount"+categoryId).html());
        var maxmoney = parseFloat($("#txtMaxAmount"+categoryId).html());
        if(amount > maxmoney) {
            $(this).val(maxmoney);
        }
        checkMoney(this);
        commissionCharge();
        rechAmountShow(this.value);
        if (!amount || amount <= 0) {
            $("#errorSpan"+categoryId).html("请输入充值金额！");
            return false;
        }
        if($.trim(amount) != "") {
            if(amount > maxmoney || amount < minmoney) {
                $("#errorSpan"+categoryId).html("充值限额：最低"+minmoney+"元，最高"+maxmoney+"元！");
                return false;
            }
            $("#errorSpan"+categoryId).html("");
        }
    }).on('focus', function() {
        if(this.value) {
            $('#rechAmountInfo'+categoryId).parent().show();
        }
    }).on('blur', function(){
        $('#rechAmountInfo'+categoryId).parent().hide();
    });

    $('.changeBankAreaForm').on('submit',function(){
        var id = $(this).attr('id');
        var isQrcode = $('#'+id).find('input[name="bankNameId"]:checked').attr('data-isQrcode');
        if(isQrcode == 'false'){
            $(this).prop('target','_blank');
            $(this).prop('method','get');
            return checkFormAll();
        }else if(isQrcode == 'true'){
            $(this).prop('target','_self');
            $(this).prop('method','post');
            return checkForm();
        }else{
            $(this).prop('target','_self');
            $(this).prop('method','get');
            return checkForm();
        }
    });

    checkHadNotSafePassword();
});

//如何充值图标
var howRechAnimate;
function howRechAnimateFun(){
    clearTimeout(howRechAnimate);
    howRechAnimate = setTimeout(function(){
        $(".howRecharge .show").animate({opacity:0},200,function(){
            $('.howRecharge i').removeClass('show').css('opacity',1);
        });
    },5000);
}

//立即前往某充值分类
function toCateRecharge(id){
    $('.categoryBtn[data-categoryId="' + id +'"]').click();
    setnRechTip();
}

function setnRechTip(){
    var isChoose = $('#noLongerRechTip').is(':checked');
    if(isChoose){
        try {
            window.myStorage.setItem("noLongerRechTip",0);//不再弹框
        } catch (e) {}
    }
}

function selectBank(id, minAmount, maxAmount, ele) {
    checkHadNotSafePassword();
    $("#txtMinAmount"+categoryId).html(minAmount);
    $("#txtMaxAmount"+categoryId).html(maxAmount);
    $("#initialMoney"+categoryId).css("display","inline");
    $(ele).parent().addClass('bankBorder').siblings().removeClass('bankBorder');
    var bankApiId = $(ele).attr('data-bankApiId');
    var classKey = $(ele).attr('data-classKey');
    $(ele).parents('form').find('.bankApiId').val(bankApiId);
    $(ele).parents('form').find('.classKey').val(classKey);
    $('#chargeamount'+categoryId).val('');
    $('#errorSpan'+categoryId).text('');
    $('#niceNameError'+categoryId).text('');
    $('.niceNameBox').hide();
    $('#niceName'+categoryId).val('');
    if(classKey == 'alipay2bank'){
        $('#niceNameBox'+categoryId).show();
    }
    //手续费
    var poundage = $(ele).attr('data-poundage');
    if(poundage){
        $("#comChargeRate"+categoryId).text(poundage);
        $("#comChargeBox"+categoryId).show();
        commissionCharge();
    }else{
        $("#comChargeRate"+categoryId).text(0);
        $("#comChargeBox"+categoryId).hide();
    }
    //小数位数
    var point = $(ele).attr('data-point');
    $('#chargeamount'+categoryId).attr('data-point',point);
}

//只能输入正整数
var checkMoney = function(obj) {
    var me = obj,v = me.value,index;
    var point = ~~$(me).attr('data-point');
    me.value = v = v.replace(/^\.$/g, '');
    index = v.indexOf('.');
    if (index > 0) {
        me.value = v = v.replace(/(.+\..*)(\.)/g, '$1');
        if(v.substring(index + 1, v.length).length > point) {
            me.value= v  = v.substring(0, v.indexOf(".") + point + 1);
        }
    }
    me.value = v = (point > 0) ? v.replace(/[^\d|^\.]/g, '') : v.replace(/[^\d]/g, '');
    me.value = v = v.replace(/^0+/g, '0');
};

var checkForm = function(){
    if (!checkHadNotSafePassword()) {
        return false;
    }
    var maintenanceStatus = $('#changeBankAreaForm'+categoryId).find('.btnRadio:checked').attr('data-maintenanceStatus');
    if(maintenanceStatus == 1){
        $.alert('该银行维护中，请稍后再试并留意官方公告');
        return false;
    }
    var amount = $('#chargeamount'+categoryId).val();
    if (!amount || amount <= 0) {
        $("#errorSpan"+categoryId).html("请输入充值金额！");
        return false;
    }
    var minmoney = parseFloat($("#txtMinAmount"+categoryId).html());
    var maxmoney = parseFloat($("#txtMaxAmount"+categoryId).html());
    if($.trim(amount) != "") {
        if(parseFloat(amount) > maxmoney || parseFloat(amount) < minmoney) {
            $("#errorSpan"+categoryId).html("充值限额：最低"+minmoney+"元，最高"+maxmoney+"元！");
            return false;
        }
        $("#errorSpan"+categoryId).html("");
    }
    if($('#niceNameBox'+categoryId).is(':visible')){
        var reg = /^[\\·\u4E00-\u9FA5]+$/;
        var value = $.trim($('#niceName'+categoryId).val());
        if(!value){
            $("#niceNameError"+categoryId).html("请填写支付宝存款姓名");
            return false;
        }else if(!reg.test(value) || value.length < 2 || value.length > 50){
            $("#niceNameError"+categoryId).html("请认真填写支付宝存款姓名");
            return false;
        }
    }
    $("#niceNameError"+categoryId).html("");

    return true;

};

var checkFormAll = function() {
    if (checkForm()) {
        layer.open({
            type: 1,
            skin: 'lottTipLayer',
            shift: 5,
            area: ['480px', '260px'],
            title: false,
            content:$("#rechargePayBox"),
            cancel:function(){
                layer.closeAll();
                window.location.reload(true);
            }
        });
        return true;
    }
    return false;
};

//填写充值金额显示大号字体提示
function rechAmountShow(num){
    if(num) {
        $('#rechAmountInfo'+categoryId).html(num).parent().show();
    } else {
        $('#rechAmountInfo'+categoryId).parent().hide();
    }
}

//充值手续费
function commissionCharge(){
    var reg = /^[+-]?\d+(?:\.\d{1,4})?$/;
    var rate = $('#comChargeRate'+categoryId).text()/100;
    var amount =$('#chargeamount'+categoryId).val();
    amount = amount == '' ? 0 : amount;
    var commissionCharge = amount * rate;
    commissionCharge = reg.test(commissionCharge) ? commissionCharge : commissionCharge.toFixed(4);
    if((commissionCharge < 0.1) && (commissionCharge > 0)){
        commissionCharge = 0.1;
    }
    var actualAmount = amount - commissionCharge;
    actualAmount = reg.test(actualAmount) ? actualAmount : actualAmount.toFixed(4);
    $('#actualAmount'+categoryId).text(actualAmount);
    $('#commissionCharge'+categoryId).text(commissionCharge);
}