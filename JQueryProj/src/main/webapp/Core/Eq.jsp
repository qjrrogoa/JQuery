<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eq.jsp</title>
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
		//선택된 객체중에서 기술된 순서대로
		//인덱스가 부여됨(인덱 0부터 시작)
		//부모 자식관계와는 무관
		$(":button").click(function(){
			console.log('선택기 필터 사용 : ',$("li:eq(4)").html());
			console.log('eq()함수 사용 : ',$("li").eq(4).html());
			//인덱스를 변수 처리할때는 eq()함수가 유리
			var index=6;
			console.log('선택기 필터 사용 : ',$("li:eq("+index+")").html());
			console.log('eq()함수 사용 : ',$("li").eq(index).html());
		})
	});
</script>
</head>
<body>
	<fieldset>
		<legend>eq()함수</legend>
		<h2>당신이 좋아하는 과목은?</h2>
		<ul>
			<li>자바</li>
			<li>닷넷</li>
			<li>스프링</li>
			<li>제이쿼리</li>
		</ul>
		<h2>당신이 좋아하는 산은?</h2>
		<ul class="mountain">
			<li>지리산</li>
			<li>설악산</li>
			<li>소백산</li>
			<li>한라산</li>
		</ul>
		<button>확인</button>
	</fieldset>

</body>
</html>