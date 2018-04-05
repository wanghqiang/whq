<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/information.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css" /> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/information.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid row">
			<div class="wq-container">
			<div class="col-lg-8">
				<a class="wq-p" style="float: left;">返回首页></a>
			</div>
			<div class="col-lg-4">
				<a class="wq-p" href="${pageContext.request.contextPath }/jsp/userLogin.jsp">登陆</a><a class="wq-p" href="${pageContext.request.contextPath }/jsp/userRegit.jsp">注册</a>
			</div>
			</div>
		</div>	
		<div class="container-fluid row">
			<div class="wq-container">
			<div class="col-lg-10 wq-logle">
				
			</div>
			<div class="col-lg-2">
				<a id="a"><button id="issueButton" type="button" class="wq-btn btn-default btn-lg active">发布信息</button></a>
			</div>
			</div>
		</div>
		<div class="container">
			<div class="content">
				<div class="content-left">
					<div><img class="content-left-img1" alt="" src="/demossm/img/5a6bee86N50833c94.jpg" ></div>
					<img class="content-left-img2" alt="" src="/demossm/img/5a6bee86N50833c94.jpg" >
					<img class="content-left-img2" alt="" src="/demossm/img/5a6bee86N50833c94.jpg" >
					<img class="content-left-img2" alt="" src="/demossm/img/5a6bee86N50833c94.jpg" >
				</div>
				<div class="content-right">
					<h3>华为荣耀8</h3>
					<h4>560元</h4>
					<h4>王强</h4>
					<h4>成都信息工程大学</h4>
					<h4>王强</h4>
					<h4>王强</h4>
					
				</div>
			</div>
			<div class="content2">
				<div style="background-color: #000000;">
					
				</div>
			</div>
		</div>
		
	<span>${param.informationId}</span>
	<script type="text/javascript">
		function information(){
			var data="${param.informationId}";
			$.ajax({
				url:"${pageContext.request.contextPath }/queryById.action",
				type:"post",
				data:{
					"id":data
				},
				success:function(data){
					alert(data.title);
				}
			});
		}
	</script>
</body>
</html>