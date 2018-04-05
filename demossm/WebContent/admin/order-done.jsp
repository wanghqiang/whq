<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>已完成订单</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">订单管理</a></li>
    <li><a href="#">未处理订单</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="seachform">
    
            <li><label>综合查询</label><input name="" type="text" class="scinput" /></li>
         
            <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>
    
        </ul>
 
    </div>
  
    <table class="imgtable">
    
    <thead>
    <tr>
    <th width="100px;">商品图片</th>
    <th>订单号</th>
    <th>商品名</th>
    <th>价格（元）</th>
    <th>买家</th>
    <th>配送地址</th>
    <th>时间</th>
    <th>状态</th>
    <th>操作</th>
    </tr>
    </thead>
    
    <tbody>
    
    <tr>
    <td class="imgtd"><img src="images/img11.png" /></td>
    <td>20130908</td>
    <td>电冰箱</td>
    <td>128</td>
    <td>admin</td>
    <td>江苏南京</td>
    <td>2013-09-09 15:05</td>
    <td>已完成</td>
    <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink"> 取消订单</a></td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="images/img11.png" /></td>
    <td>20130908</td>
    <td>电冰箱</td>
    <td>128</td>
    <td>admin</td>
    <td>江苏南京</td>
    <td>2013-09-09 15:05</td>
    <td>已完成</td>
    <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink"> 取消订单</a></td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="images/img13.png" /></td>
    <td>20130908</td>
    <td>电冰箱</td>
    <td>128</td>
    <td>admin</td>
    <td>江苏南京</td>
    <td>2013-09-09 15:05</td>
    <td>已完成</td>
    <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink"> 取消订单</a></td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="images/img14.png" /></td>
    <td>20130908</td>
    <td>电冰箱</td>
    <td>128</td>
    <td>admin</td>
    <td>江苏南京</td>
    <td>2013-09-09 15:05</td>
    <td>已完成</td>
    <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink"> 取消订单</a></td>
    </tr>
    
    <tr>
    <td class="imgtd"><img src="images/img15.png" /></td>
   <td>20130908</td>
    <td>电冰箱</td>
    <td>128</td>
    <td>admin</td>
    <td>江苏南京</td>
    <td>2013-09-09 15:05</td>
    <td>已完成</td>
    <td><a href="#" class="tablelink">查看</a>     <a href="#" class="tablelink"> 取消订单</a></td>
    </tr>
    
    </tbody>
    
    </table>
    
    
    
    
    
   
    <div class="pagin">
    	<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
    
    
    
    </div>
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
