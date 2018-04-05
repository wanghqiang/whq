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
       <dt class="usernav-cur"><a href="user.html">个人中心</a></dt>
       <dt><a href="${pageContext.request.contextPath}/admin/order.jsp">订单列表</a></dt>
       <dt><a href="user-address.html">收货地址</a></dt>
       <dt><a href="user-pwd.html">修改密码</a></dt>
      </dl>
     </div><!--user-left/-->
     <div class="user-right">
      <h3 class="vipright-title">修改头像</h3>
     <form action="#" method="get">
     <dl class="vip-touxiang">
      <dt><img src="images/tx.jpg" width="100" height="100"></dt>
      <dd>
       <h3><strong>点击选择文件上传头像</strong></h3>
       <div class="sctx"><input type="file"><a href="javascript:;">上传</a></div>
       <p>图片格式：GIF、JPG、JPEG、PNG ，最适合尺寸100*100像素</p>
      </dd>
      <div class="clearfix"></div>
     </dl><!--vip-touxiang/-->
     </form>
     <h3 class="vipright-title">修改资料</h3>
     <table class="grinfo">
        <tbody>
        <tr>
        <th>手机号：</th>
        <td> <strong>18521032517</strong>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:;"><span style="color:#888;cursor:pointer">(修改手机号)</span></a>
        </td>
        </tr>
        <tr>
        <th><span class="red">*</span> 昵称：</th>
        <td>
        <input class="inp inw" id="title" value="185****2517" maxlength="14" type="text">
        </td>
        </tr>
        <tr>
        <th><span class="red">*</span> 性 &nbsp; &nbsp;别：</th>
        <td>
        <input value="2" id="rbSex1" name="sex" type="radio">
        <label for="rbSex1">女</label>
        <input value="1" id="rbSex2" name="sex" type="radio">
        <label for="rbSex2">男</label>
        <span id="Sex_Tip"></span>
        </td>
        </tr>
        <tr>
        <th><span class="red"></span> 年 &nbsp; &nbsp;龄：</th>
        <td>
        <input class="inp inw" id="age" value="0" onkeyup="this.value=this.value.replace(/[^\d]/g,'')" type="text">
        </td>
        </tr>
        <tr>
        <th>&nbsp;Q &nbsp; &nbsp;Q：</th>
        <td>
        <input class="inp inw" maxlength="15" value="" id="qq" onkeyup="return ValidateNumber(this,value)" type="text">
        </td>
        </tr>
        
        <tr>
        <th valign="top">个性签名：</th>
        <td>
        <textarea id="sign" class="grtextarea"></textarea>
        <br>
        <span class="fgrey">(128字符以内)</span>
        </td>
        </tr>
        <tr>
        <th>&nbsp;</th>
        <td colspan="2">
        <label class="butt" id="butt">
        <input class="member_mod_buttom" onclick="mod_member()" value="完成修改" type="submit">
        </label>
        </td>
        </tr>
        </tbody>
      </table>
     </div><!--user-right/-->
     <div class="clearfix"></div>
    </div><!--user/-->
   </div><!--web-width/-->
  
</body>
</html>