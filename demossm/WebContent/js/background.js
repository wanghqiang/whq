$(function(){
	$("#li1").click(function(){
		$("#backgroud-content-first").fadeIn(1000);
		$("#backgroud-content-secend").fadeOut(1000);
		$("#backgroud-content-third").fadeOut(1000);
	});
	$("#li2").click(function(){
		$("#backgroud-content-first").fadeOut(1000);
		$("#backgroud-content-secend").fadeIn(1000);
		$("#backgroud-content-third").fadeOut(1000);
	});
	$("#li3").click(function(){
		$("#backgroud-content-first").fadeOut(1000);
		$("#backgroud-content-secend").fadeOut(1000);
		$("#backgroud-content-third").fadeIn(1000);
	});
});

$(function(){
	$("#img1").click(function(){
		$("#img1").attr("src",a+"/img/manger.png");
		$("#img2").attr("src",a+"/img/User.png");
		$(".backgroud-menu-content2").hide("slow");
		$(".backgroud-menu-content").show("slow");
	});
	$("#img2").click(function(){
		$("#img1").attr("src",a+"/img/manger2.png");
		$("#img2").attr("src",a+"/img/User2.png");
		$(".backgroud-menu-content2").show("slow");
		$(".backgroud-menu-content").hide("slow");
	});
	
	$("#btn1").click(function(){
		$(".all").show();
		$(".apply").hide();
	});
	$("#btn2").click(function(){
		$(".all").hide();
		$(".apply").show();
	});
});