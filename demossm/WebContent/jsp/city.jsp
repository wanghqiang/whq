<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/json.js"></script>
<style type="text/css">
	a{
		margin-right: 15px;
	}
</style>
</head>
<body>
<div class="container">
<a href="${pageContext.request.contextPath }/jsp/information.jsp?city=成都">jjj</a>
</div>

<script type="text/javascript">
$(function(){
	for(var i=0;i<universityJson.data.length;i++){
		$("<h3></h3>").text(universityJson.data[i].departName).attr("id",universityJson.data[i].departId).appendTo(".container");
		for(var j=0;j<universityJson.data[i].collegeLocations.length;j++){
			$("<a></a>").text(universityJson.data[i].collegeLocations[j].locationName).attr("href","${pageContext.request.contextPath }"+"/jsp/information.jsp?city="+universityJson.data[i].collegeLocations[j].locationName).appendTo(".container");
		}
	}
	//市
		for(var i=0;i<universityJson.data.length;i++){
			if(universityJson.data[i].departId==$("#selectP").val()){
				
		}
	}
});
//省
	
</script>
</body>
</html>