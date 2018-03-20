<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index2.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<div class="container-fluid">
<div class="wq-row">
<div class="row">
	<div class="col-lg-4 wq-col-lg-4">
	<div class="wq-nav">
	<h3>校园二手信息</h3>
	<span>全国各大高校的二手交易信息</span><br>
	<a href="${pageContext.request.contextPath}/jsp/information.jsp"><button class="btn btn-default btn-lg">二手信息</button></a>
	</div>
	</div>
	<div class="col-lg-4 wq-col-lg-4">
	<div class="wq-nav">
	<h3>MMT校园二手商店</h3>
	<span>校园二手商店</span><br>
	<a href="${pageContext.request.contextPath}/jsp/used.jsp"><button class="btn btn-default btn-lg">校园商店</button></a>
	</div>
	</div>
	<div class="col-lg-4 wq-col-lg-4">
	<div class="wq-nav">
	<h3>校园二手信息</h3>
	<span>校园二手商店</span><br>
	<a><button class="btn btn-default btn-lg">二手信息</button></a>
	</div>
	</div>
</div>
</div>
</div>
<script type="text/javascript">
	$(function(){
		$(".wq-nav").hover(
			function(){
			$(this).css("background-color","#000000");
		},
		function(){
			$(this).css("background-color","#f6f6f6");
		}
		);
	});
</script>
</body>
</html>