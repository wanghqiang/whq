<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/issueInformation.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/json.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<p>${username }</p>
<div class="container">
  <div class="wq-container">
   <div class="row">
  <div class="col-lg-9 col-lg-offset-1">
  	<form class="form-horizontal wq-form">
  <div class="form-group">
  	<label for="inputEmail" class="col-lg-2 control-label">标题</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" id="inputEmail">
    </div>
  </div>
  <div class="form-group">
  <label for="inputEmail" class="col-lg-2 control-label">标题</label>
     <div class="col-lg-10">
     <textarea class="form-control" rows="3"></textarea>
  	</div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">信息类型</label>
    <div class="col-lg-10">
      <label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 1
</label>
<label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 2
</label>
<label class="radio-inline">
  <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 3
</label>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">学校</label>
    <div class="col-lg-4">
      <select class="form-control" id="selectP">
      <option>请选择</option>
	</select>
	</div>
	<div class="col-lg-2 wq-col-lg3">
	<select class="form-control" id="selectC">
	<option>请选择</option>
	</select>
	</div>
	<div class="col-lg-4">
	<select class="form-control" id="selectU">
	<option>请选择</option>
	</select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">分类</label>
    <div class="col-lg-10">
      <select class="form-control">
  <option>手机</option>
  <option>电脑</option>
  <option>书籍</option>
  <option>代步工具</option>
  <option>体育健身</option>
</select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">上传封面</label>
    <div class="col-lg-10">
      <input type="file" >
    </div>
  </div>
   <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">联系电话</label>
    <div class="col-lg-10">
      <input type="text" >
    </div>
  </div>
   <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">联系QQ</label>
    <div class="col-lg-10">
      <input type="text" >
    </div>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
  </div>
  	
  </div>
</div>
</div>
<script type="text/javascript">
	//加载页面
	$(function(){
		var m=0;
		var n=0;
		//省
		for(var i=0;i<universityJson.data.length;i++){
		$("<option></option>").text(universityJson.data[i].departName).attr("value",universityJson.data[i].departId).appendTo("#selectP");
		}
		//市
		$("#selectP").change(function(){
			$("#selectC").empty();
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
</script>
</body>
</html>