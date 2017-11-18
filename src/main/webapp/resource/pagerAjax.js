var hs = hs || {};
hs.pagination = function() {};
hs.pagination.refleshPages = function(total, formId, btnId) {
	if (!btnId) {
		btnId = $("#pageBtnId_" + formId).val();
	}
	if (!total) {
		total = 0;
	}
	var curPage = parseInt($("#pageCurr_" + formId).val());
	var pageSize = parseInt($("#pageSize_" + formId).val());
	var pageCount = hs.pagination.getPageCount(total, pageSize);
	var showPages = hs.pagination.getShowPages(curPage, pageCount);
	
	$("#pageList_" + formId).on('blur',function(){
		hs.pagination.reloadPage(~~$(this).val(), pageSize, formId, btnId);
	});
	
	$("#pageHome_"+formId+",#pagePrev_"+formId+",#pageNext_"+formId+",#pageEnd_"+formId).unbind();
	$("#pageHome_" + formId).click(function() {hs.pagination.reloadPage(1, pageSize, formId, btnId);});
	$("#pagePrev_" + formId).click(function() {hs.pagination.reloadPage(curPage == 1 ? 1 : (curPage - 1), pageSize, formId, btnId);});
	$("#pageNext_" + formId).click(function() {hs.pagination.reloadPage((curPage == pageCount) ? curPage : (curPage + 1), pageSize, formId, btnId);});
	$("#pageEnd_" + formId).click(function() {hs.pagination.reloadPage(pageCount, pageSize, formId, btnId);});
	
	$("#pageCurrSpan_" + formId).html(total == 0 ? 0 : curPage);
	$("#pageList_" + formId).val(total == 0 ? 0 : curPage);
	$("#pageTotalSpan_" + formId).html(pageCount);
	$("#pageRowSpan_" + formId).html(total);
	
	$("#pageCurr_" + formId).val(1);
};      
hs.pagination.reloadPage = function(curPage, pageSize, formId, btnId) {
	$("#pageSize_" + formId).val(pageSize);
	$("#pageCurr_" + formId).val(curPage);
	$("#" + btnId).click();
};
hs.pagination.getShowPages = function(curPage, pageCount) {
	var showPages = new Array();
	if (pageCount < 1) {
		return showPages;
	}
	
	if (curPage < 6) {
		if (pageCount < 10) {
			for (var i = 1; i <= pageCount; i++) {
				showPages.push(i);
			}
		} else {
			for (var i = 1; i < 11; i++) {
				showPages.push(i);
			}
		}
	} else {
		showPages.push(curPage - 4);
		showPages.push(curPage - 3);
		showPages.push(curPage - 2);
		showPages.push(curPage - 1);
		showPages.push(curPage);
		var afterEndIndex = curPage + 5 > pageCount ? pageCount : curPage + 5;
		for (var i = curPage + 1; i <= afterEndIndex; i++) {
			showPages.push(i);
		}
	}
	
	return showPages;
};
hs.pagination.getPageCount = function(recordCount, pageSize) {
	return parseInt((parseInt(recordCount) + parseInt(pageSize) - 1) / parseInt(pageSize));
};