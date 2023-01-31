<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>$().css() : css 적용</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style type="text/css">
	.red{background: red;}
	#box{
		background: red;
		width: 100px;
		padding: 10px;
		
	}
	
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// 자바스크립트 방식
		document.getElementById("java").style.background="skyblue";
		
		// addClass
		$("#jsp").addClass("red");
		
		// css 적용
		
		// var 변수 = $("선택자").css("속성") 	=> getter
		// $("선택자").css("속성", "값")		=> setter
		
		// 이렇게 하면 ul 밑에 li 자손은 다되니까 싹다
		//$("body>ul li").css("background", "orange");
		//$("body>ul li").css("color", "white");
		
		// 이렇게 하면 ul 밑에 li 자식이니까 ul 밑 li 만
		$("body>ul>li").css("background", "orange");
		$("body>ul>li").css("color", "white");
		
		$("#box").click(function() {
			$("#box").css("width", "+=200").css("height", "+=200");
		});
		
	});
</script>
</head>
<body>
	<ul>
		<li id="java">JAVA2</li>
		<li> WEB2 </li>
		<ul>
			<li id="jsp">JSP2</li>
			<ul>
				<li class = "bg">EL2</li>
				<li class = "bg">JSPL2</li>
			</ul>
			<li>SPRING2</li>
		</ul>
		<li> ANDROID2 </li>
	</ul>
	<hr>
	<div id="box">눌러주세요</div>
</body>
</html>