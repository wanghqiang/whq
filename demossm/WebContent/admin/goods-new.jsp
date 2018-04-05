<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品新增</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">商品管理</a></li>
    <li><a href="#">新增</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    <form action="">
    <ul class="forminfo">
    <li><label>商品名称</label><input name="ItemName" type="text" class="dfinput" /><i>商品名称不能超过20字符</i></li>
    <li><label>商品类型</label><select class="dfinput" name="ItemType" id="ItemType"></select></li>
    <li><label>标题</label><input name="ItemTitle" type="text" class="dfinput" /></li>
    <li><label>介绍</label><textarea name="ItemDetail" rows="" cols="" class="textinput"></textarea></li>
    <li><label>价格</label><input name="ItemPrivce" type="text" class="dfinput" /><i>单位（元）</i></li>
    <li><label>商品图片</label><input name="ItemImage" type="file" class="dfinput" /></li>
    <li><label>店铺地址</label><input name="University" type="text" class="dfinput" id="location" /></li>
    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="确认保存"/></li>
    </ul>
    
    </form>
    <button onclick="itemType();">888</button>
    </div>
    <script type="text/javascript">
    	$(function(){
    		//商品种类
    		itemType();
    		//上架商品的学校店铺
    		var data="${admin.university}";
    		$("#location").val(data);
    	});
    	//通过ajax查询数据库商品种类
    	function itemType(){
    		$.ajax({
    			url:"${pageContext.request.contextPath}/queryItemType.action",
    			type:"get",
    			success: function(data){
    				if(data!=""){
    					for(var n=0;n<data.length;n++){
    						var text="<option>"+data[n].typeName+"</option>";
        					$("#ItemType").append(text);	
    					}
    					
    				}
    			}
    		});
    	}
    </script>
</body>
</html>