$(function(){
	//初始化轮播效果
	$('#userAcctBg a').eq(0).addClass('active');
	$('#userAcctBgList span').eq(0).addClass('active');
	
	//banner:hover时停止轮播
	userAcctBgScroll();
	$('#userAcctBg').hover(function(){
		$(this).stopTime('userAcctBg');
	}, userAcctBgScroll);
	
	//轮播按钮点击效果
	$('#userAcctBgList span').click(function(){
		var index = $(this).index();
		$(this).addClass('active').siblings().removeClass('active');
		$('#userAcctBg').stopTime('userAcctBg');
		$('#userAcctBg a').eq(index).addClass('active').siblings().removeClass('active');
		acctIndex = index;
		userAcctBgScroll();
	});

	//网站公告、中奖播报
	initNoticeScroll('#webSiteNotice');
	initNoticeScroll('#awardsNotice');
	
	$('body').everyTime('1s', 'A', refererTime); // 1秒
	
	//公告弹窗
	if(falg > 0){
		layer.open({
			type: 1,
			skin: 'generalLayer',
			shift: 5,
			area:['960px'],
			title: '公告详情',
			content:$('#platNoticeContentBox'),
			success:function(){
				$('.layui-layer-close, .closePlatNotice').on('click',function(){
					layer.closeAll();
				});
			}
		});
	}
	
	//帮助中心hover效果
	$('#helpList a').on('mouseover',function(){
		var index = $(this).index() + 1;
		$(this).parent().removeClass().addClass('state-'+index);
	});
});

//初始化网站公告、中奖播报
function initNoticeScroll(id){
	var maxWidth = noticeWidth(id);
	if (maxWidth > $(id).width()) {
		$(id).find('.notice').each(function(){
			$(id).append($(this).clone(true));
		});
		//设置宽度并绑定hover事件
		$(id).width(noticeWidth(id)).hover(function(){
			$(this).stopTime(this.id);
		}, function(){
			noticeScroll('#' + this.id);
		}).attr('data-width', maxWidth);
		noticeScroll(id);
	}
}
//所有公告的宽度
function noticeWidth(id){
	var width = 0;//重置并重新计算
	$(id).find('.notice').each(function(){
		width += $(this).outerWidth(true);
	});
	return width;
}
//公告滚动
function noticeScroll(id){
	var str = id.substr(1);
	$(id).everyTime('3cs', str, function(){
		var marginLeft = parseInt($(this).css('margin-left'));
		var lastMargin = parseInt($(this).find('.notice:last-child').css('margin-left'));
		var totalWidth = $(id).attr('data-width');
		if (marginLeft + lastMargin <= -totalWidth) {
			marginLeft = 0;
		}
		$(this).css('margin-left', --marginLeft);
	});
}

var acctIndex = 1;//banner轮播计数器
//banner轮播
function userAcctBgScroll(){
	$('#userAcctBg').everyTime('3s', 'userAcctBg', function () {
		var acctBgTotal = $(this).find('img').length - 1;
		$(this).find('a').eq(acctIndex).addClass('active').siblings().removeClass('active');
		$('#userAcctBgList span').eq(acctIndex).addClass('active').siblings().removeClass('active');
		if ( acctIndex < acctBgTotal ) {
			acctIndex++;
		} else {
			acctIndex = 0;
		}
	}, 0, true);
}

function numberFormat(n) {
	if (n < 10)
		return "0" + n;
	else
		return n;
}

// 倒计时
function refererTime() {
	$(".vlott span[data-time]").each(function(i,n){
		var second = parseInt($(this).attr("data-time"));
		
		second -=1;
		if(second>=0){
			var h = parseInt(second / 3600);
			var m = parseInt((second % 3600) / 60);
			var s = parseInt(second % 60);
	
			$(this).attr("data-time", second);
			var t = numberFormat(h) + ":" + numberFormat(m) + ":"
					+ numberFormat(s);
			$(this).text(t);
		} else {
			getInfo();
		}
	});
}

function getInfo() {
	ajaxExt({
		loading:'',
		noError:true,
		url : 'info',
		callback : function(data) {
			for(var n in data){
				var k = data[n];
				$(".vlott span[data-key='"+ k.id +"']").attr("data-time",k.time);
			}
		}
	});
}