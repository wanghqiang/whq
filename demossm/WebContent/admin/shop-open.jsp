<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>高校开店</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/json.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/issueInformation.js"></script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">店铺管理</a></li>
    <li><a href="#">高校开店</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>店铺信息</span></div>
    <form  id="adminForm" >
    <ul class="forminfo">
    <li><label>高校名称</label>
      <select id="selectP" class="dfinput2">
      <option>请选择</option>
	</select>
	<select  id="selectC" class="dfinput2">
	<option>请选择</option>
	</select>
	<input type="hidden" name="province" id="province">
	<select  id="selectU" name="university" class="dfinput2">
	<option>请选择</option>
	</select>
  </li>
    <li><label>店铺账号</label><input name="adminAcount" type="text" class="dfinput" /></li>
    <li><label>密码</label><input name="adminPassword" type="password" class="dfinput" /></li>
    </ul>
    </form>
    	<label>&nbsp;</label><label>&nbsp;</label><button id="adminBtn" class="btn" value="确认保存">7777</button>
    </div>
    <script type="text/javascript">
  //加载页面
	$(function(){
		var m=0;
		var n=0;
		//省
		for(var i=0;i<universityJson.data.length;i++){
		$("<option></option>").text(universityJson.data[i].departName).attr({"value":universityJson.data[i].departId,
			"id": "option"+universityJson.data[i].departId}).appendTo("#selectP");
		}
		//市
		$("#selectP").change(function(){
			
			$("#selectC").empty();
			 var id=$("#selectP").val();
			 var province=$("#option"+id).text();
			 $("#province").val(province);
			
			$("<option></option>").text("请选择").appendTo("#selectC");
			
			for(var i=0;i<universityJson.data.length;i++){
				if(universityJson.data[i].departId==$("#selectP").val()){
					for(var j=0;j<universityJson.data[i].collegeLocations.length;j++){
						$("<option></option>").text(universityJson.data[i].collegeLocations[j].locationName).attr("value",universityJson.data[i].collegeLocations[j].locationId).appendTo("#selectC");
					}
			}
		}	
		});
		//高校
		$("#selectC").change(function(){
			$("#selectU").empty();
			 m=$("#selectP").val();
			 n=$("#selectC").val();

			for(var j=0;j<universityJson.data[m-1].collegeLocations[n-1].collegeNames.length;j++){
				$("<option></option>").text(universityJson.data[m-1].collegeLocations[n-1].collegeNames[j].name).appendTo("#selectU");
			}
		});
	});
  
  $(document).on("click","#adminBtn",function(){
	  var data=$("#adminForm").serialize();
	  data= decodeURIComponent(data,true);
	  $.ajax({
		 url:"${pageContext.request.contextPath}/addAdmin.action",
		 type:"post",
		 data: data,
		 success:function(data){
			 if(data!=-1){
				 alert("添加成功");
			 }
		 }
	  });
  });
    </script>
</body>
</html>