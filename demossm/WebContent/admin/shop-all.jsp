<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品信息</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">商品管理</a></li>
    <li><a href="#"></a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span><a href="${pageContext.request.contextPath}/admin/goods-new.jsp" target="rightFrame">添加新商品</a></li>
        </ul>
        
    </div>
    
    
    <ul class="imglist">
    
    <li class="selected">
    <span><img src="images/img01.png" /></span>
    <h2><a href="#">电视机</a></h2>
    <p><a href="goods-info.html" target="rightFrame">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">删除</a></p>
    </li>
    
    <li>
    <span><img src="images/img01.png" /></span>
    <h2><a href="#">洗衣机</a></h2>
    <p><a href="goods-info.html" target="rightFrame">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">删除</a></p>
    </li>
    
    <li>
    <span><img src="images/img03.png" /></span>
    <h2><a href="#">热水器</a></h2>
    <p><a href="goods-info.html" target="rightFrame">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">删除</a></p>
    </li>
    
    <li>
    <span><img src="images/img04.png" /></span>
    <h2><a href="#">费麻将</a></h2>
    <p><a href="goods-info.html" target="rightFrame">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">删除</a></p>
    </li>
    
    <li>
    <span><img src="images/img05.png" /></span>
    <h2><a href="#">电脑</a></h2>
    <p><a href="goods-info.html" target="rightFrame">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">删除</a></p>
    </li>
    
    <li>
    <span><img src="images/img06.png" /></span>
    <h2><a href="#">台灯</a></h2>
    <p><a href="goods-info.html" target="rightFrame">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">删除</a></p>
    </li>
    
    <li>
    <span><img src="images/img07.png" /></span>
    <h2><a href="#">电话卡</a></h2>
    <p><a href="goods-info.html" target="rightFrame">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">删除</a></p>
    </li>
    
    <li>
    <span><img src="images/img08.png" /></span>
    <h2><a href="#">杯子</a></h2>
    <p><a href="goods-info.html" target="rightFrame">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">删除</a></p>
    </li>
    

    
    </ul>
    
    
   
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
    <script type="text/javascript">
    	$(function(){
  			$.ajax({
  				url:"${pageContext.request.contextPath}/queryItemAll.action",
  				type:"get",
  				success: function(data){
  					console.log(data);
  				}
  			});  		
    	});
  
    </script>
</body>
</html>