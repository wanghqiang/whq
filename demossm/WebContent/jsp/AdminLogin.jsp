<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>MMT管理员登录</title>
    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../css/wq.css"/>
    <style>
    	
    </style>

    
  </head>
  <body>
    <div class="container" >
		<div style="height: 150px;">
</div>
<div class="row">
	<div class="col-lg-5"></div>
	<div class="col-lg-3">
		<form class="form-signin" action="${pageContext.request.contextPath }/adminLoginController.action">
			<h2 class="form-signin-heading">Please sign in</h2>
			<label for="acount1" class="sr-only">Email address</label>
			<input type="text" id="acount1" name="acount" class="form-control" style="width: 250px;" placeholder="Email address" required >
			<label for="password1" class="sr-only">Password</label>
			<input type="password" id="password1" name="password" class="form-control" style="width: 250px;" placeholder="Password" required>
			<div class="checkbox">
				<label>
					<input type="checkbox" value="remember-me"> Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block" type="submit" style="width: 250px;">Sign in</button>
		</form>
	</div>
	<div class="col-lg-4"></div>
</div>
</div>
    <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

	