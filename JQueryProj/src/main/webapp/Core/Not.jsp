<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Not.jsp</title>
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
		/*
			$(선택자).not(제거할 선택자):선택한 객체 중에서 제외하고 싶은 서낵자 지정
		*/
		var hrefString="";
		$("#btn").click(function(){
			//not함수 미 사용]
			$('a').filter('[href^=www]').each(function(){
				hrefString+=$(this).attr('href')+' ';
				
			});
			console.log("not함수 미 사용 : ",hrefString);
			//not함수 사용
			hrefString=""
			$('a').not('[href$=jsp]').each(function(){
				hrefString+=$(this).attr('href')+' ';
				
			});
			console.log("not함수 미 사용 : ",hrefString);
		});
	});
</script>
</head>
<body>
	<fieldset>
		<legend>not("선택자")함수</legend>
			<a href="www.naver.com">네이버</a> 
			<a href="www.daum.net">다음</a> 
			<a href="Form3.jsp">페이지로1</a> 
			<a href="Form4.jsp">페이지로2</a> 
			<a href="www.cyworld.com">싸이월드</a> 
			<a href="Form5.jsp">페이지로3</a>
		<button id="btn">확인</button>

	</fieldset>

</body>
</html>