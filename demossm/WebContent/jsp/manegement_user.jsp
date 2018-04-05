
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/manegement_user.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/javascript/manegement_reply.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/javascript/jquery-3.2.1.min.js"></script>
</head>
<body>
    <div class="header">
        <div class="header_title">
          <span class="logo"><img src="${pageContext.request.contextPath }/image/logo7.png" alt="" height="80px " width="100px"></span>
          <span class="logo2"><img src="${pageContext.request.contextPath }/image/logo5.png" alt="" height="45px " width="150px"></span>
           <div class="H1">     
                  <a href="" class="h1"><span class="logo3"><img src="${pageContext.request.contextPath }/image/my.png" alt="" height="40px " width="40px"></span>欢迎您，管理员 </a> 
                  <a href="" class="h2"><span class="logo3"><img src="${pageContext.request.contextPath }/image/my2.png" alt="" height="40px " width="40px"></span>管理员登出</a>
           </div>
           
        </div>  
    </div>

    
    <div class="center">
      <div class="center_left">
        <menu>
          <ul class="center_left_ul">
            <li class="center_left_li"><a><span class="center_left_img"><img src="${pageContext.request.contextPath }/image/list.png" alt="" class="center_left_img1"></span>基本资讯</a></li>
            <li class="center_left_li  active"><a><span class="center_left_img"><img src="${pageContext.request.contextPath }/image/fill.png"  alt="" class="center_left_img1" ></span>用户管理</a></li>
            <li class="center_left_li "><a><span class="center_left_img"><img src="${pageContext.request.contextPath }/image/play1.png" alt="" class="center_left_img1" ></span>专辑管理</a></li>
            <li class="center_left_li"><a><span class="center_left_img"><img src="${pageContext.request.contextPath }/image/menu.png" alt="" class="center_left_img1" ></span>歌曲管理</a></li>
            <li class="center_left_li"><a><span class="center_left_img"><img src="${pageContext.request.contextPath }/image/return.png" alt="" class="center_left_img1"></span>资讯管理</a></li>
            <li class="center_left_li"><a><span class="center_left_img"><img src="${pageContext.request.contextPath }/image/comment.png" alt="" class="center_left_img1"></span>评论管理</a></li>
            
          </ul>
        </menu>
      </div> 
      <div class="center_right">
        <div class="shop_mesage_header">
            <a >用户管理</a>
        </div>
        <div class="shop_mesage_content">
            <div class="mesage_content_text">
                <div class="shop_mesage_content_ping">
                <div class="shop_mesage_content_ping_title">
                    <a  class="content_ping_title_a add">所有用户</a>
                    <a  class="content_ping_title_a ">用户评论</a>
                    
                </div>
                <div class="shop_mesage_table_total">

                    
                    <div class="shop_mesage_table_all" >
                    <div class="menu_table1_search">
                        <div class="menu_table1_search1">
                            <input type="text" placeholder="用户ID或者昵称">
                            <button>搜索</button>
                        </div>
                    </div>
                    <table class="shop_mesage_table" >
                            <tr class="shop_mesage_table_top">
                               
                                <th>用户ID</th>
                                <th>用户昵称</th>
                                <th>性别</th>
                                <th>地址</th>
                                <th>注册时间</th>
                                <th>播放音乐数</th>
                                <th>收藏专辑数</th>
                                <th>发表评论数</th>
                                <th>操作</th>
                            
                            </tr>
                            <tr class="shop_mesage_table_bottom">
                                
                                <td>12148641</td>
                                <td>打我打我打无的</td>
                                <td>男</td>
                                <td>四川成都</td>
                                <td>2018/3/11</td>
                                <td>1124</td>
                                <td>4</td>
                                <td>12</td>
                                <td>
                                    
                                    <button class="table_bottom_button2">注销用户</button>
                                </td>
                            </tr>
                            <tr class="shop_mesage_table_bottom">
                                 
                                <td>12148641</td>
                                <td>打我打我打无的</td>
                                <td>男</td>
                                <td>四川成都</td>
                                <td>2018/3/11</td>
                                <td>1124</td>
                                <td>4</td>
                                <td>12</td>
                                <td>
                                    
                                    <button class="table_bottom_button2">注销用户</button>
                                </td>
                            </tr>
                            <tr class="shop_mesage_table_bottom">
                                 
                                <td>12148641</td>
                                <td>打我打我打无的</td>
                                <td>男</td>
                                <td>四川成都</td>
                                <td>2018/3/11</td>
                                <td>1124</td>
                                <td>4</td>
                                <td>12</td>
                                <td>
                                    
                                    <button class="table_bottom_button2">注销用户</button>
                                </td>
                            </tr>
                            <tr class="shop_mesage_table_bottom">
                             
                                <td>12148641</td>
                                <td>打我打我打无的</td>
                                <td>男</td>
                                <td>四川成都</td>
                                <td>2018/3/11</td>
                                <td>1124</td>
                                <td>4</td>
                                <td>12</td>
                                <td>
                                    
                                    <button class="table_bottom_button2">注销用户</button>
                                </td>
                            </tr>
                    </table>
                    </div>
                    <div class="shop_mesage_table_all" style="display:none;">
                        <div class="menu_table_none">
                            <div class="menu_table_none_a">
                                <a href="">没有数据</a>
                            </div>
                        </div>
                    </div>

                 
                </div>


               
                </div>



            </div>
            <div class="shop_order_footer">
                <div class="shop_order_footer_input">
                    
                </div>
                <div class="shop_order_footer_button">
                    
                   

                </div>
            </div>



      </div>
    </div>
    </div> 

<script type="text/javascript" src="${pageContext.request.contextPath }/javascript/manegement_reply.js"></script> 
<script type="text/javascript">
$(function(){
	queryUser();
});

//获取所有用户
function queryUser(){
	$.ajax({
		url:"${pageContext.request.contextPath }/userList.action",
		type:"get",
		success:function(data){
			alert(data);
		},
		error:function(){
			alert(5);
		}
	});
}
	
</script>          
</body>
</html>