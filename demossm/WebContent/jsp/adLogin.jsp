<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/login.css" />
<script src="${pageContext.request.contextPath }/js/login.js" type="text/javascript" charset="utf-8"></script>
</head>
	<body>
			<div class="login-content" id="login">
				<form action="${pageContext.request.contextPath }/adminLoginController.action">
					<h4 class="h4">登录MMT校园二手</h4>
					<input type="text" name="acount" class="username" placeholder="用户名或手机号码" />
					<input type="password" name="password" class="password" placeholder="密码" />
					<input type="text" class="mark" placeholder="验证码"/>
					<input type="submit" class="btn" value="登录" />
				</form>
			</div>
	</body>
</html>