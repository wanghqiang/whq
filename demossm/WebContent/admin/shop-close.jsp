<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>店铺关闭</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
</script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">店铺管理</a></li>
    <li><a href="#">店铺关闭</a></li>
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
        <th>店铺ID<i class="sort"><img src="images/px.gif" /></i></th>
        <th>高校账号</th>
        <th>高校名称</th>
        <th>地址</th>
        <th>时间</th>
        <th>管理人</th>
        <th>管理人电话</th>
        <th>管理人QQ</th>
        <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${adminList }" var="item">
					<tr>
							<td>${item.adminId }</td>
							<td>${item.adminAcount }</td>
							<td>${item.university }</td>
							<td>${item.province }</td>
							<td>${item.adminQQ}</td>
							<td>${item.adminName }</td>
							<td>${item.adminPhone}</td>
							<td>${item.adminQQ}</td>
							
							<td ><a href="#" class="tablelink" id="${item.adminId }">关闭店铺</a></td>
					</tr>
		</c:forEach>
      
        </tbody>
    </table>
       
	</div>
    </div>
<script type="text/javascript">
$(document).on("click",".tablelink",function(){
	var id=$(this).attr("id");
	$.ajax({
		url:"${pageContext.request.contextPath}/deleteAdmin.action",
		type:"post",
		data:{"id":id},
		success:function(data){
			if(data==1){
				window.location.reload();	
			}
			else{
				
			}
			
		}
	});
});
</script>
</body>
</html>