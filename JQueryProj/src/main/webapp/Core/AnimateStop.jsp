<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AnimateStop.jsp</title>
<style>

	*{
		padding:0;
		margin:0
	}
	div{
		width:50px;
		height: 50px;
		background-color: red;
		position: relative;
		left:0;
		top:0
	}
</style>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 
backgroundColor:'green'애니메이션을 위한 추가.
제이쿼리 코어에는 칼라 애니메이션이 안됨.
 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$(function(){
	$('#start').click(function(){
		$('#div').animate(
				{width:'+=100',"height":"+=100",left:"+=100",backgroundColor: "green"},
				5000,	
				function(){//애니메이션 끝났을때 자동 호출
					console.log("애니메이션이 완료 되었어요");
					//현재 객체의 top및 left좌표 얻기]
    				//$(선택자).position().top:top좌표
    				//$(선택자).position().left:left좌표
    				console.log("애니메이션 완료후 : X좌표-%s,Y좌표-%s",$(this).position().left,$(this).position().top);
    				console.log("애니메이션 완료후 : 가로폭-%s,세로폭-%s",$(this).width(),$(this).height());
    				
				}
		);
		
	});
	$('#stop').click(function(){
		$('#div').stop();		
	});
	$('#back').click(function(){
		$('#div').animate({width:'50px',"height":"50px",left:"0",backgroundColor: "red"},5000);
		
	});
	
});
</script>
</head>
<body>
	<div id="div"></div>
	<button id="start">Start</button>
	<button id="stop">Stop</button>
	<button id="back">Back</button>
</body>
</html>