<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SlideUpDown.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function() {
		//페이지 최초 로드시 내용 숨기기]
		$(".content").hide();
		//제목 클릭시 내용 보이기]
		//1]slideDown()함수 사용
		/*
		$('.title').click(function(){
			$(this).next().slideDown(1500,function(){
				$(this).css("background-color","yellow");
			});
		});*/
		//2]slideToggle()함수 사용-slideUp()과 slideDown()을 동시 구현
		/*
		$(".title").click(function(){
			$(this).next().slideToggle(1500,function(){
				$(this).css('background-color','yellow');
			});
		});*/
		/*3]slideToggle()함수 미 사용-slideDown()및 slideUp()함수를 
		이용해
   	 	열려진 제목 클릭시 다른 제목의
    	내용이 열려진게 있다면 자동으로 닫히도록
    	구현하여라 그리고 토글링 기능도 함께.... */
		$(".title").click(function(){
	    	console.log($(this).next().css('display'));
	    	//클릭한 제목의 내용이 숨겨져 있다면
	    	if($(this).next().css('display')=='none'){
	    		$(".content").slideUp(1500);//열린 모든 내용 숨기기
	    		$(this).next().slideDown(1500);//해당 제목의 내용 보이기
	    		
	    	}
	    	else{
	    		$(this).next().slideUp(1500);
	    	}
	    });
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>slideDown(),slideUp,slideToggle()함수</legend>
		<div class="title" title="제목1">
			<h2>제목1</h2>
		</div>
		<div class="content">
			내용입니다1<br /> 내용입니다1<br /> 내용입니다1<br />
		</div>
		<div class="title" title="제목2">
			<h2>제목2</h2>
		</div>
		<div class="content">
			내용입니다2<br /> 내용입니다2<br /> 내용입니다2<br />
		</div>
		<div class="title" title="제목3">
			<h2>제목3</h2>
		</div>
		<div class="content">
			내용입니다3<br /> 내용입니다3<br /> 내용입니다3<br />
		</div>

	</fieldset>
</body>
</html>