<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Slice.jsp</title>
<style>
	.bg {
		background-color: green;
		font-size: 1.4em	
	}
	div{
		width:100px;
		height:100px;
		text-align:center;
		line-height: 100px;
		border:1px red solid
	
	}

</style>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	//1]slice(인덱스):인덱스부터 끝까지
	//$('div').slice(2).addClass('bg');
	//2]slice(시작,끝):시작부터 끝-1까지 추출
	//$("div").slice(2,$('div').length).addClass('bg');
	//3]slice(-n):오른쪽 부터 n개 추출
	//$('div').slice(-4).addClass('bg');
	//문]slice응용
	
	//학생답안
	/*
	var i = 1;		
	$("button").click(function(){
		$("div").slice(i-1).removeClass("bg");
		$("div:eq("+i+")").addClass("bg");			
		i++;
		if(i==6) i=0;
	});*/
	
	var index =1;
	$('button').click(function(){
		$('div').slice(index-1).removeClass('bg');
		$('div').slice(index,index+1).addClass('bg');
		index++;
		if(index == $('div').length) index=0;
		
	});
	
});




</script>
</head>
<body>
	<fieldset>
		<legend>slice(시작인덱스[,끝인덱스])</legend>
		<button>색상변경</button>
		<div class="bg">DIV1</div>
		<div>DIV2</div>
		<div>DIV3</div>
		<div>DIV4</div>
		<div>DIV5</div>
		<div>DIV6</div>
	</fieldset>
</body>
</html>