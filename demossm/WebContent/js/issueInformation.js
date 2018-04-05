//判断浏览器是否支持FileReader接口
	if (typeof FileReader == 'undefined') {
	  alert("<h1>当前浏览器不支持FileReader接口</h1>");
	} 
	//选择图片，马上预览
	function xmTanUploadImg(obj) {
	  var file = obj.files[0];
	  var reader = new FileReader();
	  reader.onload = function(e) {
	    var img = document.getElementById("img1");
	    img.src = e.target.result;
	  }
	  reader.readAsDataURL(file);
	}
	function xmTanUploadImg2(obj) {
		  var file = obj.files[0];
		  var reader = new FileReader();
		  reader.onload = function(e) {
		    var img2 = document.getElementById("img2");
		    img2.src = e.target.result;
		  }
		  reader.readAsDataURL(file);
		}
	function xmTanUploadImg3(obj) {
		  var file = obj.files[0];
		  var reader = new FileReader();
		  reader.onload = function(e) {
		    var img3 = document.getElementById("img3");
		    img3.src = e.target.result;
		  }
		  reader.readAsDataURL(file);
		}
	function xmTanUploadImg4(obj) {
		  var file = obj.files[0];
		  var reader = new FileReader();
		  reader.onload = function(e) {
		    var img4 = document.getElementById("img4");
		    img4.src = e.target.result;
		  }
		  reader.readAsDataURL(file);
		}
	
	$(function(){
		$("#btn").click(function(){
			  $(".hidden2").toggle();
			});
	});