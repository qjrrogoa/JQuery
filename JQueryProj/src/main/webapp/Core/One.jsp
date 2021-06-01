<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	
	$('button:first').one('click',function(){
		console.log('딱 한번만 실행');
	});
	$('button:last').on('click',function(){
		console.log('클릭할때마다 실행');
	});
	
});
</script>
</head>
<body>
	<fieldset>
		<legend>one('이벤트명',콜백함수)</legend>
		<button>한번만 실행</button>
		<button>여러번 실행</button>
	</fieldset>
</body>
</html>