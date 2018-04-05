<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/used.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/used.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/json.js"></script>
<title>Insert title here</title>
</head>
<body>
		<div class="container-fluid row"  style="background-color: #9dceff;">
			<div class="wq-container">
			<div class="col-lg-8">
				<h4 class="h4">成都市</h4><a href="${pageContext.request.contextPath }/jsp/city.jsp"><span>[切换城市]</span></a>
			</div>
			<div class="col-lg-4">
				<a class="wq-p" href="${pageContext.request.contextPath }/jsp/userLogin.jsp">个人中心</a>
				<a class="wq-p" href="${pageContext.request.contextPath }/jsp/userLogin.jsp">注册</a><a class="wq-p" href="${pageContext.request.contextPath }/jsp/userRegit.jsp">登录</a>
			</div>
			</div>
		</div>	
		<div class="container-fluid" style="background-color: #ffffff;">
		<div class="row wq-container" style="background-color: #f5f5f5;">
			<div class="col-lg-6 ">
				<div class="logo">
				</div>
			</div>
			<div class="col-lg-2">
			<div class="wq-nav-title">
			<h4>首页</h4>
			</div>
			
			</div>
			<div class="col-lg-2">
			<div class="wq-nav-title">
			<h4>校园二手信息</h4>
			</div>
			
			</div>
			<div class="col-lg-2">
			<div class="wq-nav-title">
			<h4>我的购物车</h4>
			</div>
			
			</div>
		</div>
		</div>
		<div class="container-fluid">
		<div class="wq-container usedItem">
		<div class="row">
			<div class="col-lg-3 wq-form-group">
				<div class="usedItem-list">
					<a href="${pageContext.request.contextPath }/jsp/usedItemDetial.jsp"><img alt="" src="/demossm/img/usedItemimg1.png"></a>
					<h3>￥500</h3>
					<h4>华为荣耀8</h4>
					<span>成都信息工程大学</span><span style="float: right;">2018/3/31</span>
				</div>
			</div>
			<div class="col-lg-3 wq-form-group">
			<div class="usedItem-list">
					<img alt="" src="/demossm/img/usedItemimg1.png">
				</div>
			</div>
			<div class="col-lg-3 wq-form-group">
			<div class="usedItem-list">
					<img alt="" src="/demossm/img/usedItemimg1.png">
				</div>
			</div>
			<div class="col-lg-3 wq-form-group">
				<div class="usedItem-list">
					<img alt="" src="/demossm/img/usedItemimg1.png">
				</div>
			</div>
			<div class="col-lg-3 wq-form-group">
			<div class="usedItem-list">
					<img alt="" src="/demossm/img/usedItemimg1.png">
				</div>
			</div>
			<div class="col-lg-3 wq-form-group">
			<div class="usedItem-list">
					<img alt="" src="/demossm/img/usedItemimg1.png">
				</div>
			</div>
			<div class="col-lg-3 wq-form-group">
			<div class="usedItem-list">
					<img alt="" src="/demossm/img/usedItemimg1.png">
				</div>
			</div>
			<div class="col-lg-3 wq-form-group">
			<div class="usedItem-list">
					<img alt="" src="/demossm/img/usedItemimg1.png">
				</div>
			</div>
			<div class="col-lg-3 wq-form-group">
			<div class="usedItem-list">
					<img alt="" src="/demossm/img/usedItemimg1.png">
				</div>
			</div>
			<div class="col-lg-3 wq-form-group">
			<div class="usedItem-list">
					<img alt="" src="/demossm/img/usedItemimg1.png">
				</div>
			</div>
		</div>
		</div>
		</div>
		<script type="text/javascript">
			$(document).on("mousemove",".wq-form-group",function(){
				$(this).addClass("wq-form-group2");
			});
			$(document).on("mouseout",".wq-form-group",function(){
				$(this).removeClass("wq-form-group2");
			});
			
		</script>
		</body>
		</html>