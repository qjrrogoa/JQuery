<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filter.jsp</title>

<style>
.bg {
	background-color: black;
	color: white;
	font-weight: bold;
	text-decoration: none;
}

.border {
	border: 2px red solid;
}
</style>
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
		$('a').addClass("bg")//선택된 모든 a태그에 class="bg" 추가
		.filter("[href*=nate]")//선택된 a태그 중 href속성값에 nate가 포함된 a태그
		.addClass('border')//class="border"추가
		.end()//nate가 포함된 a태그 바로 직전에 선택된 객체로 이동
		.filter(':eq(2)')
		.removeClass('bg').css('font-size','1.8em');
		
	});
</script>
</head>
<body>
	<fieldset>
		<legend>$(선택자).filter("선택된 DOM객체중 가져올 객체 선택자")</legend>
		<a href="www.naver.com">네이버</a> 
		<a href="www.nate.com">네이트</a> 
		<a href="www.daum.net">다음</a>
	</fieldset>
</body>
</html>