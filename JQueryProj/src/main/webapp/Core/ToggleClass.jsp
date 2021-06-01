<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ToggleClass.jsp</title>
<style>
	div {
		width: 100px;
		height: 100px;
		background-color: green;
		
	}
	.invisible{
		display:none;
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
	
	$('button').click(function(){
		$('div').toggleClass('invisible');
		$(this).html($(this).html()=='보이기'?'안보이기':'보이기');
	});
	
});
</script>
</head>
<body>
	<fieldset>
		<legend>toggleClass('클래스명')</legend>
		<div ></div>
		<button>안보이기</button>
	</fieldset>
</body>
</html>