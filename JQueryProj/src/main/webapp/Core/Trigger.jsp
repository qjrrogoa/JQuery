<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trigger.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	//버튼에 클릭 이벤트 발생시 어떤 일이 수행되도록 정의]
	$('button').click(function(){
		console.log($(this).html()+'을 클릭했어요');
	});
	//버튼에 트리거 설정-버튼에서 자동으로 클릭 이벤트가 발생하도록
	$('button').trigger("click");
});
</script>
</head>
<body>
	<fieldset>
		<legend>trigger("이벤트명")</legend>
		<button>버튼</button>
	</fieldset>
</body>
</html>