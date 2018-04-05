<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%pageContext.setAttribute("APP_Path", request.getContextPath(),1); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${APP_Path }/css/backgroud.css" />
<script type="text/javascript" src="${APP_Path }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${APP_Path }/js/background.js" ></script>
<script type="text/javascript">
		var a="${APP_Path }";
		$(function(){
			$("td").click(function(){
				var text=$(this).text();
				alert(text);
			});
		});
</script>
</head>
<body>
		<div class="backgroud-menu">
			<div class="nav-img">
				<ul>
					<li><img id="img1" src="${APP_Path }/img/manger.png" /></li>
					<li><img id="img2" src="${APP_Path }/img/User.png" /></li>
				</ul>
			</div>
			<div class="backgroud-menu-img"></div>
			<div class="backgroud-menu-content">
				<ul class="ul-first">
					<li id="li1">学校店铺</li>
					<li id="li2">其他功能</li>
					<li id="li3">其他功能</li>
				</ul>
			</div>
			<div class="backgroud-menu-content2">
				<ul class="ul-first">
					<li id="li1">学校店铺</li>
					<li id="li2">其他功能</li>
					<li id="li3">其他功能</li>
				</ul>
			</div>
		</div>
		<div class="backgroud-nav">
			
		</div>
		<div class="backgroud-content">
			<div class="backgroud-content-out">
				<a href="${APP_Path }/adminList.action"><input type="button" name="" class="btn" id="btn1" value="所有店铺" /></a>
				<input type="button" name="" class="btn" id="btn2" value="开通店铺" />
			</div>
			<div class="backgroud-content-out2">
			<div id="backgroud-content-first" >
				<div class="all">
					<table border="" cellspacing="" cellpadding="">
						<tr>
							<th>序号</th>
							<th>账号</th>
							<th>电话</th>
							<th>QQ</th>
							<th>学校</th>
							<th>省</th>
							<th>管理者</th>
							<th>权限</th>
						</tr>
						<c:forEach items="${adminList }" var="item">
						<tr>
							<td>${item.adminId }</td>
							<td>${item.adminAcount }</td>
							<td>${item.adminPassword }</td>
							<td>${item.university }</td>
							<td>${item.province }</td>
							<td>${item.permission }</td>
							<td>${item.adminName }</td>
							<td>${item.adminPhone}</td>
							<td>${item.adminQQ}</td>
						</tr>
						</c:forEach>
					</table>
				</div>
				<div class="apply">
					<form action="" method="post">
					<span>*</span><input type="text" class="text" name="university" id="university" placeholder="输入学校" /><br />
					<span>*</span><input type="text" class="text" name="acount" id="acount" placeholder="输入账号" /><br />
					<span>*</span><input type="password" class="text" name="password" id="password" placeholder="输入密码" /><br />
					<span>*</span><input type="password" class="text" name="password2" id="password2" placeholder="确认密码" /><br />
					<input type="text" class="text" name="phone" id="phone" placeholder="输入手机号" /><br />
					<input type="text" class="text" name="qq" id="qq" placeholder="输入QQ号" /><br />
					<span>*</span><label for="r1"><input id="role" type="radio" name="role">高</label>
					<label for="r2"><input id="role2" type="radio" name="role">中</label>
					<label for="r3"><input type="radio" name="role" id="role3" />低</label><br />
					<input type="submit" value="开通"/>
				</form>	
				</div>
			</div>
			<div id="backgroud-content-secend">
			</div>
			<div id="backgroud-content-third">
				
			</div>
			</div>
		</div>
	</body>
</html>