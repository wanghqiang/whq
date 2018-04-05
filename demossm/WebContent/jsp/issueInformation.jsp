<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/issueInformation.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/json.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/issueInformation.js"></script>
</head>
<body>
<p>${username }</p>
<div class="container">
  <div class="wq-container">
   <div class="row">
  <div class="col-lg-9 col-lg-offset-1">
  	<form class="form-horizontal wq-form" enctype="multipart/form-data" action="${pageContext.request.contextPath}/addInformaton.action" id="form1" method="post">
  <div class="form-group">
  	<label for="inputEmail" class="col-lg-2 control-label">标题</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" id="inputEmail" name="title">
    </div>
  </div>
  <div class="form-group">
  <label for="inputEmail" class="col-lg-2 control-label">标题</label>
     <div class="col-lg-10">
     <textarea class="form-control" rows="3" name="details"></textarea>
  	</div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label" >价格</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="privce" >
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">信息类型</label>
    <div class="col-lg-10">
      <label class="radio-inline">
  <input type="radio" name="type" id="inlineRadio1" value="求购" >求购
</label>
<label class="radio-inline">
  <input type="radio" name="type" id="inlineRadio2" value="出售" >出售
</label>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">学校</label>
    <div class="col-lg-4">
      <select class="form-control" id="selectP" name="province">
      <option>请选择</option>
	</select>
	</div>
	<div class="col-lg-2 wq-col-lg3">
	<select class="form-control" id="selectC">
	<option>请选择</option>
	</select>
	<input type="hidden" name="city" id="city">
	</div>
	<div class="col-lg-4">
	<select class="form-control" id="selectU" name="university">
	<option>请选择</option>
	</select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">分类</label>
    <div class="col-lg-10">
      <select class="form-control" name="itemType">
  <option>手机</option>
  <option>电脑</option>
  <option>书籍</option>
  <option>代步工具</option>
  <option>体育健身</option>
  <option>其他</option>
</select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">上传封面</label>
    <div class="col-lg-10">
    	<input type="file" name="picture4" accept=".jpg,.png" onchange="xmTanUploadImg4(this)" /><img id="img4">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">上传图片</label>
    <div class="col-lg-10">
    	<div class="wq-picture-label col-lg-12 "><label class="control-label" id="btn">上传图片</label></div>
    	<div class="hidden2">
    	<h4>最多提交三张图片</h4>
    	<p>提示：为了您的商品封面更美观，更吸引人，请使用QQ截图成300px*300px(单位为像素)</p>
    	<div><input type="file" name="picture1" accept=".jpg,.png" onchange="xmTanUploadImg(this)" /><img id="img1"></div>
    	<div><input type="file" name="picture1" accept=".jpg,.png" onchange="xmTanUploadImg2(this)" /><img id="img2"></div>
    	<div><input type="file" name="picture1" accept=".jpg,.png" onchange="xmTanUploadImg3(this)" /><img id="img3"></div>
    	</div>
    </div>
  </div>
   <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">联系电话</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="phone" >
    </div>
  </div>
   <div class="form-group">
    <label for="inputEmail" class="col-lg-2 control-label">联系QQ</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="QQ" >
    </div>
  </div>
  <button id="btnform" class="btn btn-default">Submit</button>
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
						$("<option></option>").text(universityJson.data[i].collegeLocations[j].locationName).attr("value",universityJson.data[i].collegeLocations[j].locationId+universityJson.data[i].collegeLocations[j].locationName).appendTo("#selectC");
					}
			}
		}	
		});
		//高校
		$("#selectC").change(function(){
			$("#selectU").empty();
			 m=$("#selectP").val();
			 n=$("#selectC").val().substr(0,1);
			 var city=$("#selectC").val().substr(1,4);
			 $("#city").val(city);

			for(var j=0;j<universityJson.data[m-1].collegeLocations[n-1].collegeNames.length;j++){
				$("<option></option>").text(universityJson.data[m-1].collegeLocations[n-1].collegeNames[j].name).appendTo("#selectU");
			}
		});
	});
	

</script>
</body>
</html>