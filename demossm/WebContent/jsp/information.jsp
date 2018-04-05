<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/information.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/information.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/json.js"></script>
</head>
<body>
		<div class="container-fluid row">
			<div class="wq-container">
			<div class="col-lg-8">
				<h4 class="h4">成都市</h4><a href="${pageContext.request.contextPath }/jsp/city.jsp"><span>[切换城市]</span></a>
			</div>
			<div class="col-lg-4">
				<a class="wq-p" href="${pageContext.request.contextPath }/jsp/userLogin.jsp">登陆</a><a class="wq-p" href="${pageContext.request.contextPath }/jsp/userRegit.jsp">注册</a>
			</div>
			</div>
		</div>	
		<div class="container-fluid row">
			<div class="wq-container">
			<div class="col-lg-10 wq-logle">
				
			</div>
			<div class="col-lg-2">
				<a id="a"><button id="issueButton" type="button" class="wq-btn btn-default btn-lg active">发布信息</button></a>
			</div>
			</div>
		</div>
			<div class="container-fluid row">
			<div class="wq-container2">
			<div class="form-group" id="spanClick">
					<label>学校 :</label><span id="span">全部</span><span>更多</span><br/>
					<label>价格 :</label><span class="spanP">全部</span><span class="spanP">20元以下</span><span class="spanP">20-50</span><span class="spanP">50-100</span><span class="spanP">100-200</span><span class="spanP">200-500</span><span class="spanP">500-1000</span><span class="spanP">1000以上</span><br/>
					<label>类型 :</label><span class="spanT">全部</span><span class="spanT">求购</span><span class="spanT">出售</span><br/>
					<label>分类 :</label><span class="spanI">全部</span><span class="spanI">手机</span><span class="spanI">电脑</span><span class="spanI">书籍</span><br/>
					<input type="text" class="wq-form-control" id="inputEmail">
					<button class="wq-btn2 btn-default" type="submit" onclick="query();">Button</button>
			</div>
			</div>
			<div class="wq-container3">
				<label >条件:</label>&emsp;
				<label>学校 :</label><span>全部</span>&emsp;
				<label>价格 :</label><span id="spanP">全部</span>&emsp;
				<label>类型 :</label><span id="spanT">全部</span>&emsp;
				<label>分类 :</label><span id="spanI">全部</span>&emsp;
				<span></span>
			</div>
			<div class="wq-container4">
				<div class="form-group">
				<table class="table table-striped" id="informationList">
				<tr ><th>成都校园二手信息</th><th>信息</th><th>价格</th></tr>
				<tr>
					<td><a><img class="img" alt="该图片无法显示" src="/demossm/img/5a6bee86N50833c94.jpg"></a></td>
					<td><a>郫县学士服出租</a><span>郫县学士服出租郫县学士</span><span><a>成都信息工程大学</a>/<a>成都信息工程大学</a>/<a>成都信息工程大学</a></span></td>
					<td><span>188</span></td>
				</tr>
				</table>
				<nav aria-label="Page navigation">
  <ul class="pagination">
    <li style="float:left;">
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li style="float:left;">
    	<div id="page" class="pagination2"></div>
    </li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
				</div>
			</div>
		</div>		
	<script type="text/javascript">
	
	var city="${param.city}";
	var university="全部";
	var privice="全部";
	var type="全部";
	var itemType="全部";
	var pc=1;
	//加载页面时给所有的label添加点击事件
	$(function(){
		
		//页面加载时信息的查询条件
		data={"type":null,
			"privice":null,
			"itemType":null,
			"university":null,
			"city":city
		,"pc":pc};
		//默认城市为成都
		if(data.city==""){
			data.city="成都市";
		}
		$(".h4").text(data.city);
		//调用ajax查询二手信息
		query();
		//给privece赋值
		$("#spanClick .spanP").click(function(){
			privice=$(this).text();
			$("#spanP").text(privice);
			if(privice!="全部"){
				data.privice=privice;
			}
			else{
				data.privice=null;
			}
			data.pc=1;
		});
		//给type赋值
		$("#spanClick .spanT").click(function(){
			type=$(this).text();
			$("#spanT").text(type);
			if(type!="全部"){
				data.type=type;
			}else{
				data.type=null;
			}
			data.pc=1;
		});
		//给itemType赋值
		$("#spanClick .spanI").click(function(){
			itemType=$(this).text();
			$("#spanI").text(itemType);
			if(itemType!="全部"){
				data.itemType=itemType;
			}
			else{
				data.itemType=null;
			}
			data.pc=1;
		});
		//给university赋值
		$("#spanClick .spanU").click(function(){
			university=$(this).text();
			$("#spanU").text(university);
			if(university!="全部"){
				data.university=university;
			}
			else{
				data.university=null;
			}
			data.pc=1;
		});
		//每次赋值都调用ajax查询
		$("#spanClick span").bind("click",function (){
			query();
		});
	});
	//ajax查询二手信息
	function query(){
			$.ajax({
			url:"${pageContext.request.contextPath}/informationList.action",
			data:data,
			type:"post",
			success:function(data){
				$("#page").empty();
				$("#informationList").empty();
				var text="<tr><th style='width:20%;'>成都校园二手信息</th><th style='width:60%;'>信息</th><th style='width:20%;'>价格</th></tr>";
				$("#informationList").append(text);
				if(data.number<10){
					for(var n=1;n<=data.number;n++){
					
						//向页码插入页码
						$("<button class='wqbtn'></button>").text(n).attr({"id":"btn"+n,"el-id":n}).appendTo("#page");
						$("<a href='#'></a>").appendTo("#btn"+n);
					}
				}
				else{
	
				var	begin=data.pc-5;
				var	end=data.pc+4;
					if(begin<1){
						begin=1;
						end=10;
					}
					if(end>data.number){
						end=data.number;
						begin=data.number-9;
					}
					for(begin;begin<=end;begin++){
						//想页面插入页码
						$("<button class='wqbtn'></button>").text(begin).attr({"id":"btn"+begin,"el-id":begin}).appendTo("#page");
						$("<a href='#'></a>").appendTo("#btn"+begin);
					}
				}
				console.log(data.beanList[0]);
				//向页面插入数据
				for(var m=0;m<data.beanList.length;m++){
					//创建一行
					$("<tr/>").appendTo("#informationList").attr("id","infor"+m);
					//创建第一列
					$("<td/>").appendTo("#infor"+m).attr("id","td"+m);
					$("<a/>").appendTo("#td"+m).attr({"href":"${pageContext.request.contextPath}/jsp/informatonDetial.jsp?informationId="+data.beanList[m].id,"id":"a"+m});
					$("<img/>").appendTo("#a"+m).attr("src","${pageContext.request.contextPath}/upload/"+data.beanList[m].fpicture);
					//第二列
					$("<td>/").appendTo("#infor"+m).attr("id","tdd"+m);
					$("<a/>").appendTo("#tdd"+m).attr({"href":"${pageContext.request.contextPath}/jsp/informatonDetial.jsp?informationId="+data.beanList[m].id,"id":"aa"+m});
					$("<span/>").appendTo("#aa"+m).text(data.beanList[m].title).css("font-size","18px");
					$("<span/>").appendTo("#aa"+m).text(data.beanList[m].details.substr(0,10));
					$("<span/>").appendTo("#aa"+m).text(data.beanList[m].university+"/"+data.beanList[m].createTime);
					
					//第三列
					$("<td>/").appendTo("#infor"+m).text(data.beanList[m].privce);
					
				}
				
			},
			error:function(){
				alert(5);
			}
		});
		}
	//点击页码，给pc赋值并通过ajax查询
	$(document).on("click",".wqbtn",function(){
		var pc=$(this).attr("el-id");
		data.pc=pc;
		query();
	});
	//点击按钮之后判断用户是否登陆，没有登陆跳转到登陆界面，登陆了之后跳转到发布信息界面
	$(document).on("click","#issueButton",function(){
		var userName="${user.userName}";
		if(userName==""){
			$("#a").attr("href","${pageContext.request.contextPath}/jsp/userLogin.jsp");	
		}
		else{
			$("#a").attr("href","${pageContext.request.contextPath}/jsp/issueInformation.jsp");
		}
		
	});
	</script>
</body>
</html>