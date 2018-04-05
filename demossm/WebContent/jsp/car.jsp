<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/car.css" />

</head>
<body>
<div class="container-fluid">
   <div class="wq-container">
   <div class="wq-padding">
     <a href="index.html">首页</a> &gt; <a href="javascript:;">购物车</a>
    </div>
     <div class="car-all-pro">
      <h3 class="car-title">
       <strong>全部商品 <span>0</span></strong>
      </h3>
     </div>
   </div>
		<div class="container-fluid">
		<div class="wq-container" style="background-color: #ffffff;">
		<table class="car-pro-list">
       <tbody><tr>
        <th ><input type="checkbox" style="margin-top: 0px;"> 全选</th>
        <th >商品</th>
        <th>单价(元)</th>
        <th >操作</th>
       </tr>
       <tr>
        <td><input type="checkbox"></td>
        <td>
         <dl class="car-pro">
          <dt><a href="proinfo.html"><img src="/demossm/img/QQ截图20180226161054.png"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
        
         </dl>
        </td>
        <td >199.00</td>
        <td ><a href="javascript:;">删除</a></td>
       </tr>
        <tr>
        <td><input type="checkbox"></td>
        <td>
         <dl class="car-pro">
          <dt><a href="proinfo.html"><img src="images/pro4.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
         
         </dl>
        </td>
        <td >199.00</td>
        <td ><a href="javascript:;">删除</a></td>
       </tr>
        <tr>
        <td><input type="checkbox"></td>
        <td>
         <dl class="car-pro">
          <dt><a href="proinfo.html"><img src="images/pro4.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
        
         </dl>
        </td>
        <td >199.00</td>
        <td ><a href="javascript:;">删除</a></td>
       </tr>
        <tr>
        <td><input type="checkbox"></td>
        <td>
         <dl class="car-pro">
          <dt><a href="proinfo.html"><img src="images/pro4.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
         
         </dl>
        </td>
        <td >199.00</td>
        <td ><a href="javascript:;">删除</a></td>
       </tr>
        <tr>
        <td><input type="checkbox"></td>
        <td>
         <dl class="car-pro">
          <dt><a href="proinfo.html"><img src="images/pro4.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
         
         </dl>
        </td>
        <td >199.00</td>
        <td ><a href="javascript:;">删除</a></td>
       </tr>
        
       <tr><td colspan="6" class="car-heights" style="border-bottom:#ccc 1px solid;" height="12">&nbsp;</td></tr>
       <tr >
        <td colspan="2"><input type="checkbox"> 全选 &nbsp;  <a href="javascript:;">删除选中产品</a></td>
        <td  align="right">
         已选择 <strong class="red">0</strong> 件商品 总价（不含运费）：<strong class="red font16">¥0.00</strong><br>
         已节省：-¥0.00
        </td>
        <td align="center"><a href="${pageContext.request.contextPath }/jsp/pay.jsp" class="qjs">去结算</a></td>
       </tr>
      </tbody></table>
      
		</div>
		</div>
	
  </div>
</body>
</html>