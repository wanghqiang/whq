<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%-- <c:forEach items="${uList }" var="item">
		<h1>${item.university }</h1>
	</c:forEach> --%>
	<h1 id="h1"></h1>
	<script type="text/javascript">
	var n=0;
	$(function(){
			var first=$.ajax({
				url:"${pageContext.request.contextPath}/uList2.action",
				type:"Post",
				success:function(data){
					console.log(data[0].province);
					for(var i=0;i<data.length;i++){
						var text="<h1>"+data[i].province+"</h1>";
						$("#h1").append(text);
					}
					n=data.length;
				}
			});
			$.when(first).done(function(){
				$.ajax({
					url:"${pageContext.request.contextPath}/uList.action",
					type:"Post",
					success:function(data){
						for(var m=1;m<=n;m++){	
							var province=$("h1").eq(m).text();
							for(var i=0;i<data.length;i++){
								if(data[i].province==province){
									var university=data[i].university;
									$("h1").eq(m).after("<a href='${pageContext.request.contextPath}/jsp/information.jsp?university="+data[i].university+"'>"+data[i].university+"</a>");
								}
							}
						}
						
					}
				});
			});
		
	});
	</script>
</body>
</html>