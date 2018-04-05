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
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>

<body style="background:url(${pageContext.request.contextPath}/images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="${pageContext.request.contextPath}/admin/main.jsp" target="_parent"><img src="${pageContext.request.contextPath}/images/logo.png" title="系统首页" /></a>
    </div>
        
    
            
    <div class="topright">    
    <ul>
    
    
    <li><a href="${pageContext.request.contextPath}/admin/login.jsp" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>admin</span>
    
    </div>    
    
    </div>
</body>
</html>
