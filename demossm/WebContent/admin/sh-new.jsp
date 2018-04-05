<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>二手商品新增</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">二手商品管理</a></li>
    <li><a href="#">新增</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    
    <ul class="forminfo">
    <li><label>商品名称</label><input name="" type="text" class="dfinput" /><i>商品名称不能超过20字符</i></li>
    <li><label>价格</label><input name="" type="text" class="dfinput" /><i>单位（元）</i></li>
    <li><label>商品图片</label><input name="" type="file" class="dfinput" /></li>
    <li><label>店铺地址</label><input name="" type="text" class="dfinput"  /></li>
    <li><label>商品简介</label><textarea name="" cols="" rows="" class="textinput"></textarea></li>
    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="确认保存"/></li>
    </ul>
    
    
    </div>
</body>
</html>
