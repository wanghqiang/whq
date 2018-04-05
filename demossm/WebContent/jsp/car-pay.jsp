<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/car.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/js.js"></script>
</head>
<body>
	<div class="container-fluid">
   <div class="wq-container">
   <div class="wq-padding">
     <a href="index.html">首页</a> &gt; <a href="javascript:;">购物车</a>
    </div>
   </div>
		<div class="container-fluid">
		<div class="wq-container" style="background-color: #ffffff;">
			<div class="height3"></div>
    <div class="car-pay-box">
     <h2 class="car-title2">收货地址</h2>
     <table class="car-address trclick">
      <tbody><tr class="acr-trclick-cur">
       <th width="115"><input name="1" checked="checked" type="radio"> 家里</th>
       <td>狗蛋路256弄，春君君 13654702155</td>
       <td class="xiu-shan" align="right"><a href="javascript:;" class="add-address">修改</a><a href="javascript:;">删除</a></td>
      </tr>
      <tr>
       <th width="115"><input name="1" type="radio"> 家里</th>
       <td>狗蛋路256弄，春君君 13654702155</td>
       <td class="xiu-shan" align="right"><a href="javascript:;" class="add-address">修改</a><a href="javascript:;">删除</a></td>
      </tr>
     </tbody></table>
     <div class="xinzeng"><a href="javascript:;" class="add-address2">+新增收货地址</a></div>
     <form action="#" method="get" class="car-add-address">
        <div class="addList">
         <label><span class="red">* </span>选择地区:</label>
         <select>
          <option>请选择省</option>
         </select>
         <select>
          <option>请选择市</option>
         </select>
         <select>
          <option>请选择地区</option>
         </select>
        </div><!--addList-->
        <div class="addList">
         <label><span class="red">* </span>详细地址:</label>
         <input type="text">
        </div><!--addList-->
        <div class="addList">
         <label><span class="red">* </span>邮政编码:</label>
         <input type="text">
        </div><!--addList-->
        <div class="addList">
         <label><span class="red">* </span>收件人:</label>
         <input type="text">
        </div><!--addList-->
        <div class="addList">
         <label><span class="red">* </span>手机号码:</label>
         <input style="width:100px;" type="text"> 或者固定电话 <input style="width:100px;" type="text">
        </div><!--addList--> 
        <div class="addList2">
         <input class="submits" value="确认收货地址" type="submit">
        </div><!--addList2/-->
     </form><!--car-address/-->
     
     <form action="#" method="get" class="car-uppdate-address">
        <div class="addList">
         <label><span class="red">* </span>选择地区:</label>
         <select>
          <option>请选择省</option>
         </select>
         <select>
          <option>请选择市</option>
         </select>
         <select>
          <option>请选择地区</option>
         </select>
        </div><!--addList-->
        <div class="addList">
         <label><span class="red">* </span>详细地址:</label>
         <input type="text">
        </div><!--addList-->
        <div class="addList">
         <label><span class="red">* </span>邮政编码:</label>
         <input type="text">
        </div><!--addList-->
        <div class="addList">
         <label><span class="red">* </span>收件人:</label>
         <input type="text">
        </div><!--addList-->
        <div class="addList">
         <label><span class="red">* </span>手机号码:</label>
         <input style="width:100px;" type="text"> 或者固定电话 <input style="width:100px;" type="text">
        </div><!--addList--> 
        <div class="addList2">
         <input class="submits" value="确认收货地址" type="submit">
        </div><!--addList2/-->
     </form><!--car-address/-->
    </div><!--car-pay-box/-->
    
    <div class="car-pay-box">
     <h2 class="car-title2">支付方式</h2>
     <table class="car-pay-fangshi trclick">
      <tbody><tr class="acr-trclick-cur">
       <th width="115"><input name="2" checked="checked" type="radio"> 微信支付</th>
       <td>用微信扫一扫就能支付！</td>
      </tr>
      <tr>
       <th><input name="2" type="radio"> 货到付款</th>
       <td>送货上门后再付款，使用现金或刷银行卡。</td>
      </tr>
      <tr>
       <th><input name="2" type="radio"> 银行电汇</th>
       <td>通过银行转账或现金直接存入十七网指定帐号，需注明订单号。！</td>
      </tr>
      <tr class="zaixian">
       <th><input name="2" type="radio"> 在线支付</th>
       <td>支持多家银行借记卡、信用卡支付；支持支付宝、财付通等多种支付平台。</td>
      </tr>
     </tbody></table><!--car-pay-fangshi/-->
     <ul class="car-pay-s">
      <li><input type="radio"> <img src="images/zhifubao.jpg"></li>
      <li><input type="radio"> <img src="images/caifutong.jpg"></li>
     
     </ul>
    </div><!--car-pay-box/-->
    
    <div class="car-pay-box">
     <h2 class="car-title2">产品清单</h2>
     <table class="car-qingdan">
      <tbody><tr>
       <td width="335">
        <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro3.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
        
         </dl>
       </td>
       <td width="95">X1</td>
       <td width="95">十七先生</td>
       <td width="95"><strong>¥85</strong></td>
      </tr>
      <tr>
       <td width="335">
        <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro1.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
         
         </dl>
       </td>
       <td width="95">X1</td>
       <td width="95">十七先生</td>
       <td width="95"><strong>¥85</strong></td>
      </tr>
      <tr>
       <td width="335">
        <dl class="car-qingdan-dl">
          <dt><a href="proinfo.html"><img src="images/pro2.jpg"></a></dt>
          <dd>
           <a href="proinfo.html">漫步者（EDIFIER）R201T08 2.1声道 颜色：R201T08
           多媒体音箱 褐色</a>
          </dd>
       
         </dl>
       </td>
       <td width="95">X1</td>
       <td width="95">十七先生</td>
       <td width="95"><strong>¥85</strong></td>
      </tr>
     </tbody></table><!--car-qingdan/-->
    </div><!--car-pay-box/-->
    <div class="car-pay-box">
     <h2 class="car-title2">配送时间</h2>
     <div class="dates"><input class="laydate-icon" onclick="laydate()"></div>
    </div><!--car-pay-box/-->
    
    <div class="car-pay-box">
     <h2 class="car-title2">发票信息</h2>
     <table class="fapiao">
      <tbody><tr>
       <td>普通发票(电子) 个人  明细 <a href="javascript:;" class="uppdate-fapiao">修改</a></td>
      </tr>
     </tbody></table>
     <form action="#" method="get" class="car-uppdate-fpiao">
        <div class="addList">
         <label><span class="red">* </span>发票类型:</label>
         <select>
          <option>普通发票</option>
          <option>企业发票</option>
         </select>
        </div><!--addList-->
        <div class="addList">
         <label><span class="red">* </span>发票抬头:</label>
         <select>
          <option>个人</option>
          <option>单位</option>
         </select>
         <input type="text">
        </div><!--addList-->
        <div class="addList2">
         <input class="submits" value="保存发票信息" type="submit">
        </div><!--addList2/-->
     </form><!--car-address/-->
    </div><!--car-pay-box/-->
    
    <div class="zongji"><span>总计</span> <strong>¥24780.00</strong></div>
    <div class="lijitijiao"><a href="success.html">立即提交</a></div>
		</div>
		</div>
  </div>
   
    
   
</body>
</html>