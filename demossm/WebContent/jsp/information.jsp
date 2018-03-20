<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/information.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css" /> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/information.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/json.js"></script>
</head>
<body>
		<div class="container-fluid row">
			<div class="wq-container">
			<div class="col-lg-8">
				<h4 class="h4">${param.city}</h4><a href="${pageContext.request.contextPath }/jsp/city.jsp"><span>[切换城市]</span></a>
			</div>
			<div class="col-lg-4">
				<p class="wq-p">登陆</p><p class="wq-p">注册</p>
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
			<div class="form-group">
					<label>学校 :</label><span id="span">全部</span><span>更多</span><br/>
					<label>价格 :</label><span>全部</span><span>20元以下</span><span>20-50</span><span>50-100</span><span>100-200</span><span>200-500</span><span>500-1000</span><span>1000以上</span><br/>
					<label>类型 :</label><span>全部</span><span>求购信息</span><span>出售信息</span><br/>
					<label>分类 :</label><span>全部</span><span>二手手机</span><span>二手电脑</span><span>二手书籍</span><br/>
					<input type="text" class="wq-form-control" id="inputEmail">
					<button class="wq-btn2 btn-default" type="submit">Button</button>
			</div>
			</div>
			<div class="wq-container3">
				<label >条件:</label>
			</div>
			<div class="wq-container4">
				<div class="form-group">
				<table class="table table-striped">
				<tr ><th>成都校园二手信息<input type="checkbox">只看有图</th><th>价格</th></tr>
				<tr>
					<td><a><img class="img" alt="该图片无法显示" src="/demossm/img/5a6bee86N50833c94.jpg"></a></td>
					<td><a>郫县学士服出租</a><span>郫县学士服出租郫县学士服出租</span><span><a>成都信息工程大学</a>/<a>成都信息工程大学</a>/<a>成都信息工程大学</a></span></td>
					<td><span>188</span></td>
				</tr>
				<tr>
					<td><a><img class="img" alt="该图片无法显示" src="/demossm/img/5a6bee86N50833c94.jpg"></a></td>
					<td><a>郫县学士服出租</a><span>郫县学士服出租郫县学士服出租</span><span><a>成都信息工程大学</a>/<a>成都信息工程大学</a>/<a>成都信息工程大学</a></span></td>
					<td><span>188</span></td>
				</tr>
				<tr>
					<td><a><img class="img" alt="该图片无法显示" src="/demossm/img/5a6bee86N50833c94.jpg"></a></td>
					<td><a>郫县学士服出租</a><span>郫县学士服出租郫县学士服出租</span><span><a>成都信息工程大学</a>/<a>成都信息工程大学</a>/<a>成都信息工程大学</a></span></td>
					<td><span>188</span></td>
				</tr>
				<tr>
					<td><a><img class="img" alt="该图片无法显示" src="/demossm/img/5a6bee86N50833c94.jpg"></a></td>
					<td><a>郫县学士服出租</a><span>郫县学士服出租郫县学士服出租</span><span><a>成都信息工程大学</a>/<a>成都信息工程大学</a>/<a>成都信息工程大学</a></span></td>
					<td><span>188</span></td>
				</tr>
				<tr>
					<td><a><img class="img" alt="该图片无法显示" src="/demossm/img/5a6bee86N50833c94.jpg"></a></td>
					<td><a>郫县学士服出租</a><span>郫县学士服出租郫县学士服出租</span><span><a>成都信息工程大学</a>/<a>成都信息工程大学</a>/<a>成都信息工程大学</a></span></td>
					<td><span>188</span></td>
				</tr>
				<tr>
					<td><a><img class="img" alt="该图片无法显示" src="/demossm/img/5a6bee86N50833c94.jpg"></a></td>
					<td><a>郫县学士服出租</a><span>郫县学士服出租郫县学士服出租</span><span><a>成都信息工程大学</a>/<a>成都信息工程大学</a>/<a>成都信息工程大学</a></span></td>
					<td><span>188</span></td>
				</tr>
				<tr>
					<td><a><img class="img" alt="该图片无法显示" src="/demossm/img/5a6bee86N50833c94.jpg"></a></td>
					<td><a>郫县学士服出租</a><span>郫县学士服出租郫县学士服出租</span><span><a>成都信息工程大学</a>/<a>成都信息工程大学</a>/<a>成都信息工程大学</a></span></td>
					<td><span>188</span></td>
				</tr>
				<tr>
					<td><a><img class="img" alt="该图片无法显示" src="/demossm/img/5a6bee86N50833c94.jpg"></a></td>
					<td><a>郫县学士服出租</a><span>郫县学士服出租郫县学士服出租</span><span><a>成都信息工程大学</a>/<a>成都信息工程大学</a>/<a>成都信息工程大学</a></span></td>
					<td><span>188</span></td>
				</tr>
				<tr>
					<td></td>
					<td><nav aria-label="Page navigation">
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav></td>
			<td></td>
				</tr>
				</table>
				</div>
			</div>
		</div>
				
			
			
	<script type="text/javascript">
	//获得url中的city的值
		$(function(){
			//请求学校列表
			var ajax1=$.ajax({
				url:"${pageContext.request.contextPath}/uList.action",
				type:"post",
				success:function(data){
					for(var i=0;i<4;i++){
					$("#span").after("<span>"+data[i].university+"</span>");
					}
				}
			});
			$.when(ajax1).done(function(){
				
			});
			//判断是否登陆，登录后才能跳转到发布信息界面
			$("#issueButton").click(function(){
				$("#a").attr("href","${pageContext.request.contextPath}/issueInformation.action");
			});
		});
	</script>
</body>
</html>