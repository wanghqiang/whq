<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
</head>
<body>
	
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">用户管理</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
  	<div id="tab2" class="tabson">
 
    <ul class="seachform">
    
    <li><label>综合查询</label><input name="" type="text" class="scinput" /></li>
 
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
    </ul>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th>用户ID<i class="sort"><img src="images/px.gif" /></i></th>
        <th>用户账号</th>
        <th>用户头像</th>
        <th>用户姓名</th>
        <th>用户性别</th>
        <th>用户地址</th>
        <th>用户邮箱</th>
        <th>创建时间</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${userlist }" var="item">
					<tr>
							<td>${item.userId }</td>
							<td>${item.userAcount }</td>
							<td>${item.userName }</td>
							<td>${item.userImg }</td>
							<td>${item.userSex }</td>
							<td>${item.userLocation }</td>
							<td>${item.userEmail }</td>
							<td>${item.userTime }</td>
							
							<td ><a href="#" class="tablelink" id="${item.userId }">注销用户</a></td>
					</tr>
		</c:forEach>
      
        </tbody>
    </table>
       
	</div>
    </div>
    <script type="text/javascript">
    	$(document).on("click",".tablelink",function(){
    		var data=$(this).attr("id");
    		
    		$.ajax({
    			url:"${pageContext.request.contextPath}/deleteUser.action",
    			type:"post",
    			data:{
    				"id":data
    			},
    			success:function(data){
    				if(data==1){
    					alert("注销成功");
    					window.location.reload();
    				}
    				else{
    					alert("注销失败");
    				}
    			}
    		});
    	});
    </script>
</body>
</html>