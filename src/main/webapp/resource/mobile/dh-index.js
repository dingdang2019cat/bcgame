$(function(){
    /* banner滑动 */
    var mySwiper = new Swiper ('.swiper-container', {
        autoplay: 3000,
        direction: 'horizontal',
        watchSlidesProgress : true,
        watchSlidesVisibility : true,
        pagination : '.swiper-pagination',
        paginationType : 'bullets',
        lazyLoading : true
    });

    //公告滚动
    $.fn.verticalScroll=function(){
        var self = $(this);
        var stopAwardsScroll = '';
        var awardsIndex = 1;
        var height = ~~self.find("li:first").outerHeight();
        var awardsHeight = ~~self.height();
        self.append(self.find('li').clone(true));
        $(self.find('li')[1]).addClass('active').siblings().removeClass('active');
        setInterval(scrollBox,4000);
        function scrollBox() {
            stopAwardsScroll && clearInterval(stopAwardsScroll);
            $(self.find('li')[awardsIndex+1]).addClass('active').siblings().removeClass('active');
            stopAwardsScroll = setInterval(scrollUnit,20);
        }
        function scrollUnit() {
            var h = ~~parseInt(self.css('top'));
            if (h == (-height * awardsIndex) && awardsIndex > 0) {
                clearInterval(stopAwardsScroll);
                awardsIndex++;
                if (h <= -awardsHeight) {
                    $(self.find('li')[1]).addClass('active').siblings().removeClass('active');
                    awardsIndex = 1;
                    self.css("top", '0px');
                }
                return;
            }
            self.css("top", h - 1 + 'px');
        }
    };
    $('.platNoticeList').verticalScroll();
    $('.gladMsgList').verticalScroll();

    /* 添加彩种 */
    $('.allLottTypeList').on('click','a',function(){
        var addElem = $(this);
        var isAdd = true;
        $('.choosedLottTypeList a').each(function(){
            if($(this).attr('class') == addElem.attr('class')){
                isAdd = false;
                return;
            }
        });
        if(isAdd){
            $('.choosedLottTypeList').append(addElem.clone());
            addElem.remove();
            removeLottTitle();
        }
    });
    /* 从已选彩种中删除彩种 */
    $('.choosedLottTypeList').on('click','a',function(){
        var group = $(this).attr('data-group');
        $('.'+group).show();
        $('.'+group+' .lottTypeItems').append($(this).clone());
        $(this).remove();
    });

    $('#addLott').on('click',function(){
        $('#addLottery').show();
        $('#index').hide();
    });
    $('#returnIndex').on('click',function(){
        $('#addLottery').hide();
        $('#index').show();
        lottTypeToIndex();
    });

    getlottTypeInlocal();

    if(flag == 1){
        var noticeTitle = $('#noticeBox').attr('data-title');
        $.alert({
            title:noticeTitle,
            string:$('#noticeBox').html(),
            btnName:'关闭'
        });
    }
});

//获取本地存储的定制彩种
function getlottTypeInlocal(){
    var localDate = window.myStorage.getItem('localData');
    if(localDate){
        var a_attr = localDate.split(',');
        $('.lottTypeItem').remove();
        for(var i in a_attr){
            $('.lottTypeList').prepend(a_attr[i]);
        }
    }else{
        defaulLottType();
    }
    $('.lottTypeList .lottTypeItem').each(function(){
        var className = $(this).attr('class').split(' ')[1];
        $('.choosedLottTypeList').append($('.allLottTypeList').find('.'+className).clone());
        $('.allLottTypeList .'+className).remove();
    });
    removeLottTitle();
}

//如果没有特定彩种，默认显示【重庆时时彩，排列3，鼎汇一分彩】
function defaulLottType(){
    var defaultLott = ['icqssc','ipl3','isj1fc'];
    $('.lottTypeItem').remove();
    for(var i in defaultLott){
        var elem = $('.allLottTypeList .'+defaultLott[i]);
        var dataLink = elem.attr('data-link');
        var dataTitle = elem.attr('data-title');
        var dataRemark = elem.attr('data-remark');
        var a = '<a href="' + dataLink + '" class="lottTypeItem ' + defaultLott[i] + '"><i class="lottIcon"></i><span class="name font16">' + dataTitle + '</span><span class="content">' + dataRemark + '</span></a>'
        $('.lottTypeList').prepend(a);
    }
}

//把选择的彩种添加到定制彩种box中
function lottTypeToIndex(){
    var a_attr = jQuery.makeArray($('.choosedLottTypeList a')).reverse();
    var localData = [];
    $('.lottTypeItem').remove();
    for(var i in a_attr){
        var className = a_attr[i].className;
        var dataLink = a_attr[i].attributes['data-link'].value;
        var dataTitle = a_attr[i].attributes['data-title'].value;
        var dataRemark = a_attr[i].attributes['data-remark'].value;
        var a = '<a href="' + dataLink + '" class="lottTypeItem ' + className + '"><i class="lottIcon"></i><span class="name font16">' + dataTitle + '</span><span class="content">' + dataRemark + '</span></a>'
        $('.lottTypeList').prepend(a);
        localData[i] = a;
    }
    window.myStorage.setItem("localData", localData);
}

//一个种类被选完时，去掉分割线
function removeLottTitle(){
    $('.lottTypeGroup').each(function(){
        var size = $(this).find('a').size();
        if(!size){
            $(this).hide();
        }
    });
}
