$(function() {
    //基础模板加入页面中body的类名和id名
    if($("#metaId")[0] && $("#metaId").val() != "")
        $("body").attr("id",$("#metaId").val());
    if($("#metaClass")[0] && $("#metaClass").val() != "")
        $("body").attr("class",$("#metaClass").val());

    /* 菜单列表高度start */
    var menuHeadH = $('.menuHeader').outerHeight();
    var menuFootH = $('.menuFooter').outerHeight();
    var menuHeight = $(window).height() - menuHeadH - menuFootH - 10;
    $('.menuList').css('max-height',menuHeight + 'px');
    /* 菜单列表高度end */

    $('a,.btn,.greenBtn,.blueBtn').bind('touchstart');

    $('body').css('height',$(window).height() + 'px');

    $('.allBottomLayer article').css('max-height',($(window).height()-100)+'px');

    $("#refererUser").click(function () {
        ajaxExt({
            url: '/user/amount',
            dataType: 'json',
            loading: '',
            noError: true,
            callback: function (rel) {
                var amount = rel.amount.toFixed(4);
                $(".userBalance").text(amount);
                $("#userBalance").attr({"title": amount, 'data-value': amount});
            }
        });
    });

    //隐藏金额
    $('.headAmount').on('click',function(){
        var userBalanceValue = $('#userBalance').attr('data-value');
        if ( $(this).attr('data-value') == "false" ) {
            $('#userBalance').html('******');
            $(this).attr('data-value','true')
            $('#accountHide').addClass('active');
        } else {
            $('#userBalance').html(userBalanceValue);
            $(this).attr('data-value','false');
            $('#accountHide').removeClass('active');
        }
    });

    //滚动到底加载
    var timeout = null;
    $(window).scroll(function(){
        if($(this).scrollTop() + $(this).height() == $(document).height()){
            loadMoreBefore();
        }

        /* 快速充值图标滚动时隐藏，静止是显示start */
        if(timeout != null){
            clearTimeout(timeout);
            if(!$('#qkRecharge a').hasClass('hide')){
                $('#qkRecharge a').addClass('hide');
            }
        }
        //500ms后，假定认为停止滚动
        timeout = setTimeout(function(){
            $('#qkRecharge a').removeClass('hide');
        },500);
        /* 快速充值图标滚动时隐藏，静止是显示end */
    });

    //滚动到底加载常用ID
    $("#loadMore").click(function(){
        loadMoreBefore();
    });

    //变为红色的输入框，在用户点击该输入框之后变为原来颜色
    $('body').on('focus','.labelCond,.inputCont',function(){
        $(this).parent().removeClass('errorMsg');
    });

    setPageUrl();
    menuInit();
});

//右侧菜单
function menuInit(){
    $('body').append('<div id="mblocker"></div>');
    $("#mblocker").click(function(){
        $('html').removeClass('mopened');
    });
    $('body').on('click','.headUser',function(){
        $('html').addClass('mopened');
    });
}

//存储该级页面的链接，待下一级返回时，返回到该页面
function setPageUrl(){
    var dataPage = {
        grade:$('#pageGrade').val(),
        url:location.href
    };
    try{
        window.myStorage.setItem("pageGrade"+dataPage.grade, dataPage.url);
    }catch(e){

    }
}
//获取返回上一级页面的链接，如二级返回一级
function returnLastPage(grade){
    try{
        return window.myStorage.getItem('pageGrade'+grade);
    }catch(e){
        return '/index';
    }
}

function loadMoreBefore() {
    var end = $("#loadMore").attr("data-end");
    if(end == "1" || end == "2") {
        return false;
    }

    //正在加载
    $("#loadMore").attr("data-end","2");
    $("#loadMore").text("正在加载数据...");
    if(typeof(loadMore) != 'undefined') {
        loadMore();
    }
}

//len 已加载的总长度（包括本次），hasData本次加载是否有数据
function loadMoreEnd(len,hasData) {

    var n = len % 20;
    if(n!=0 || !hasData) {
        $("#loadMore").attr("data-end","1");
        $("#loadMore").text("已全部加载");
    } else {
        $("#loadMore").attr("data-end","0");
        $("#loadMore").text("加载更多");
    }
}

function loadMoreDefault(module) {
    var moduleList = module + "List";
    var d = {
        start : $("#" + moduleList + " li").length
    }
    ajaxExt({
        url:'/' + module + '/' + moduleList + 'Body',
        method:"get",
        data:d,
        callback:function(data) {
            isToLogin(data);
            var d1 = $("." + moduleList + ":last").attr("data-date");
            var hasData = false;
            $(data).each(function(i,v){
                var d2 = $(this).attr("data-date");
                if(typeof(d2) != "undefined") {
                    if(d1 == d2) {
                        $("." + moduleList + ":last").find("ul").append($(this).find("li"));
                    } else {
                        $("#" + moduleList).append($(this));
                    }
                    hasData=true;
                }
            });
            loadMoreEnd($("#" + moduleList + " li").length,hasData);
        },
        error:function() {
            loadMoreEnd(20,false);
        }
    });
}

function serializeObject(id){
    var result = {};
    var data = $(id).serializeArray();
    $.each(data,function(i,d){
        result[d.name] = d.value;
    });
    return result;
}

function ajaxExt(options) {
    var noError = options.noError;
    var doOther = options.doOther || false;
    var settings = {
        loading : $("body").get(0),
        cache : false,
        complete:function(){},
        success : function(rel) {
            spinner.spin();
            try {
                rel = eval('('+rel+')');
            } catch (e) {
            }
            if (typeof (rel) == 'string') {
                //普通XML
                this.callback(rel);
            } else {
                //JSON
                if (rel.status == 302) {
                    location.href = "/logout";
                } else if (rel.status != 200) {
                    if(!doOther){
                        $.alert(rel.content);
                    }else{
                        this.callback(rel.content);
                    }
                } else {
                    this.callback(rel.content);
                }
            }
            this.complete();
        },
        error : function() {
            spinner.spin();
            this.complete();
        }
    };
    settings = jQuery.extend(settings, options);
    spinner.spin(settings.loading);
    $.ajax(settings);
}
function ajaxObject(url, method, callback) {
    var opts = {type : method,url :url,cache:false,dataType:'json',callback:callback};
    ajaxExt(opts);
}
function ajaxLoad(id, url, param, callback) {
    spinner.spin($("body").get(0));
    param = param || "";
    $.post(url, param, function(data){
        $("#" + id).html(data);
        if (callback) {
            callback(data);
        }
        spinner.spin();
    });
}

function Service(url, method, d, h, callback,isAsync) {
    var header;
    var flag = true;
    if(typeof isAsync == "boolean"){
        flag = isAsync;
    }
    if (h == 1) {
        header = "application/x-www-form-urlencoded";
    } else if (h == 2) {
        header = "application/json";
    }
    ajaxExt({
        type : method,
        data : d,
        url : url,
        dataType : 'json',
        async: flag,
        callback:callback,
        headers : {
            "Content-Type" : header
        }
    });
}

function isToLogin(data){
    if(data.indexOf("登录页") > 1){
        window.location.href = "/login";
        return false;
    }
}

//点击空白处，关闭弹出层
function clickOtherClose(clickElem,noCloseElem,func){
    var event = 'click';
    if(navigator.userAgent.indexOf('iPhone') > 0){
        event = 'touchend';
    }
    $(document).on(event,clickElem,function(e){
        var cont = true;
        $(noCloseElem).each(function(index,b) {
            if (e.target == b) { cont = false; }
        });
        if(cont){
            func();
            $('body').css('pointer-events','none'); //防止点击穿透
            setTimeout(function(){
                $('body').css('pointer-events','all');
            },350);
        }
    });
}

//弹框
$.alert = function(options) {
    layer.closeAll();
    var defaults = {
        title : '温馨提示',
        string : '',
        btnName : '确定'
    };
    var opts = null;
    if (typeof (options) == 'string') {
        opts = $.extend(defaults, {
            string : options
        });
    } else {
        opts = $.extend(defaults, options);
    }
    var content = "<p class='lottTipLayerTitle font20'>"+opts.title+"</p><div class='lottTipBox font16'><p class='msg'>" + opts.string + "</p></div><div class='lottTipBtn'><a href='javascript:;' class='btn closeBtn'>"+opts.btnName+"</a></div>";
    var index = layer.open({
        className: 'lottTipLayer',
        content: content,
        success: function () {
            $('.closeBtn').on('click',function(){
                layer.closeAll();
            });
        },
        cancel:function(){
            layer.closeAll();
        }
    });
};