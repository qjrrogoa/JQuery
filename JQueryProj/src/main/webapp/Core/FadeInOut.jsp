<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FadeInOut.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	$(".content").hide();
	//제목 클릭시 내용 보이기]
	//1]fadeIn()함수 사용
	/*
	$('.title').click(function(){
		$(this).next().fadeIn(1000,function(){
			$(this).css("background-color","yellow");
		})
	})
	*/
	//2]fadeToggle(함수 사용)
	/*
	$('.title').click(function(){
		$(this).next().fadeToggle(1500,function(){})
			$(this).css('backgroundColor','yellow');
	})
	*/
	
	$('.title').click(function() {
	      console.log($(this).next().css('display'));   
	   if($(this).next().css('display')=='none'){
	      $(".content").fadeOut(1500);//열린 모든내용 숨기기
	      $(this).next().fadeIn(1500);//해당 제목의 내용 보이기
	   }
	   else{
	      $(this).next().fadeOut(1500);
	   }
	});

	
	
});
</script>
</head>
<body>
<fieldset>
		<legend>fadeIn(),fadeOut(),fadeToggle()함수</legend>
			<div class="title" title="제목1">
				<h2>제목1</h2>
			</div>
			<div class="content">
				내용입니다1<br /> 
				내용입니다1<br /> 
				내용입니다1<br />
			</div>
			<div class="title" title="제목2">
				<h2>제목2</h2>
			</div>
			<div class="content">
				내용입니다2<br /> 
				내용입니다2<br />
				내용입니다2<br />
			</div>
			<div class="title" title="제목3">
				<h2>제목3</h2>
			</div>
			<div class="content">
				내용입니다3<br /> 
				내용입니다3<br /> 
				내용입니다3<br />
			</div>
	</fieldset>

</body>
</html>