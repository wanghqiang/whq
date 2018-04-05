<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>
</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>后台管理</div>
    
    <dl class="leftmenu">

    <dd>
        <div class="title">
            <span><img src="${pageContext.request.contextPath}/images/leftico02.png" /></span>二手信息管理
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="${pageContext.request.contextPath}/informationList2.action" target="rightFrame">二手信息</a><i></i></li> 
        </ul>     
    </dd> 
    <dd>
        <div class="title">
            <span><img src="${pageContext.request.contextPath}/images/leftico02.png" /></span>店铺管理
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="${pageContext.request.contextPath}/admin/shop-open.jsp" target="rightFrame">高校开店</a><i></i></li>
            <li><cite></cite><a href="${pageContext.request.contextPath}/adminList.action" target="rightFrame">店铺关闭</a><i></i></li>
            
        </ul>     
    </dd> 
    
     <dd>
        <div class="title">
            <span><img src="${pageContext.request.contextPath}/images/leftico02.png" /></span>用户管理
        </div>
        <ul class="menuson">
            <li><cite></cite><a href="${pageContext.request.contextPath}/userlist.action" target="rightFrame">用户管理</a><i></i></li>
        </ul>     
    </dd> 
    
    </dl>
</body>
</html>