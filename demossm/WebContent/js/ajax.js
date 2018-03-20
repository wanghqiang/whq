//window.onload=function(){
//}
//
//function ajax(){
//	var xmlHttp=new XMLHttpRequest();
//	xmlHttp.open("GET",a+"/ajax.action?name=王强",true);
//	xmlHttp.send(null);
//	
//	xmlHttp.onreadystatechange=function(){
//		if(xmlHttp.readyState==4&&xmlHttp.status==200){
//			var text=xmlHttp.responseText;
//			var h1=document.getElementById("h1");
//			h1.innerHTML=text;
//		}
//	}
//}
$(function(){
	$.ajax({
		type:"POST",
		url:a+"/addAdmin.action",
//		data:'{"adminId":1,"adminAcount":"239"}',
		data:"adminId=9&adminAcount=239",
//		data:"adminAcount=2014081151" +
//				"&adminPassword=2014081151&province=北京&" +
//				"university=清华大学&permission=低",
		async:false,
		success:function(data){
			if(data==1){
			window.location.href=a+"/adminList.action";
			}
			else{
				alert("添加失败");
			}
			},
		error:function(){
			alert(2);
		}
	});
});


