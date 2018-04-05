<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
</head>
<body>
	
   <div class="web-width">
    <div class="positions">
     <a href="index.html">首页</a> &gt; <a href="javascript:;">购物车</a>
    </div><!--positions/-->
    <div class="user">
     <div class="user-left">
      <h2 class="user-title">会员中心</h2>
      <dl class="user-nav">
       <dt><a href="user.html">个人中心</a></dt>
       <dt class="usernav-cur"><a href="user-order.html">订单列表</a></dt>
       <dt><a href="user-address.html">收货地址</a></dt>
       <dt><a href="user-pwd.html">修改密码</a></dt>
      </dl>
     </div><!--user-left/-->
     <div class="user-right">
      <h3 class="vipright-title">订单列表</h3>
      <div class="order-eq">
       <a href="javascript:;" class="oreder-cur">全部订单</a>
       <a href="javascript:;">待付款</a>
       <a href="javascript:;">待收货</a>
       
       <form action="#" method="get" class="user-search">
        <input placeholder="商品名称/商品编号/订单号" class="user-input" type="text">
        <input src="images/submit.jpg" class="user-sub" type="image" width="53" height="25">
       </form><!--user-search/-->
      </div><!--order-eq/-->
      <table class="order">
       <tbody><tr>
        <th class="alignLeft" width="315">
         <select>
          <option>近三月订单</option>
          <option>近两月订单</option>
          <option>一星期之内</option>
          <option>一年之内</option>
         </select>
        </th>
        <th width="95">订单详情</th>
        <th width="95">收货人</th>
        <th width="95">总计</th>
        <th width="110">
         <select>
          <option>全部状态</option>
          <option>等待付款</option>
          <option>等待收货</option>
          <option>已完成</option>
          <option>已取消</option>
         </select>
        </th>
        <th>操作</th>
       </tr>
       <tr><td colspan="6" class="user-height"></td></tr>
       <tr>
        <td colspan="6" class="user-titme">2015-09-28 13:45:41 &nbsp; &nbsp; &nbsp; &nbsp; 订单号：10184760742</td>
       </tr>
       <tr>
        <td>
         <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro1.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
          <div class="clearfix"></div>
         </dl>
        </td>
        <td align="center">X1</td>
        <td align="center">十七军</td>
        <td align="center"><strong>¥85.00</strong><br>货到付款</td>
        <td align="center">已确认</td>
        <td align="center"><a href="car.html" class="ljgm">立即购买</a></td>
       </tr>
       <tr>
        <td>
         <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro2.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
          <div class="clearfix"></div>
         </dl>
        </td>
        <td align="center">X1</td>
        <td align="center">十七军</td>
        <td align="center"><strong>¥85.00</strong><br>货到付款</td>
        <td align="center">已确认</td>
        <td align="center"><a href="car.html" class="ljgm">立即购买</a></td>
       </tr>
       <tr>
        <td>
         <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro3.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
          <div class="clearfix"></div>
         </dl>
        </td>
        <td align="center">X1</td>
        <td align="center">十七军</td>
        <td align="center"><strong>¥85.00</strong><br>货到付款</td>
        <td align="center">已确认</td>
        <td align="center"><a href="car.html" class="ljgm">立即购买</a></td>
       </tr>
       <tr>
        <td>
         <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro4.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
          <div class="clearfix"></div>
         </dl>
        </td>
        <td align="center">X1</td>
        <td align="center">十七军</td>
        <td align="center"><strong>¥85.00</strong><br>货到付款</td>
        <td align="center">已确认</td>
        <td align="center"><a href="car.html" class="ljgm">立即购买</a></td>
       </tr>
       <tr>
        <td>
         <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro2.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
          <div class="clearfix"></div>
         </dl>
        </td>
        <td align="center">X1</td>
        <td align="center">十七军</td>
        <td align="center"><strong>¥85.00</strong><br>货到付款</td>
        <td align="center">已确认</td>
        <td align="center"><a href="car.html" class="ljgm">立即购买</a></td>
       </tr>
       <tr>
        <td>
         <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro3.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
          <div class="clearfix"></div>
         </dl>
        </td>
        <td align="center">X1</td>
        <td align="center">十七军</td>
        <td align="center"><strong>¥85.00</strong><br>货到付款</td>
        <td align="center">已确认</td>
        <td align="center"><a href="car.html" class="ljgm">立即购买</a></td>
       </tr>
       <tr>
        <td>
         <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro4.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
          <div class="clearfix"></div>
         </dl>
        </td>
        <td align="center">X1</td>
        <td align="center">十七军</td>
        <td align="center"><strong>¥85.00</strong><br>货到付款</td>
        <td align="center">已确认</td>
        <td align="center"><a href="car.html" class="ljgm">立即购买</a></td>
       </tr>
      </tbody></table><!--order/-->
     </div><!--user-right/-->
     <div class="clearfix"></div>
    </div><!--user/-->
   </div><!--web-width/-->
  
</body>
</html>