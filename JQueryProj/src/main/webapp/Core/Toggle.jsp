<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toggle.jsp</title>
<style>
div {
	width: 100px;
	height: 100px;
	background-color: green;
	border: 1px red solid;
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
	<!-- Deprecated된 함수 사용시 아래 라이브러리 임베드 -->
<script src="<c:url value='/js/jquery-migrate-1.4.1.min.js'/>"></script>
<script>
	$(function() {
		$('button:eq(0)').toggle(function(){
			$('div:first').css('display','none')
			$(this).html("보이기")
		},function(){
			$('div:first').css('display','')
			$(this).html("안보이기")
		})
		
		//1.9이후 버전부터는 토글링 하고자하는 해달
		//객체에 toggle()함수를 붙인다.
		$('button:eq(1)').click(function(){
			var button = $(this);
			//('#div').toggle(); //위와 똑같이 구현
			$('#div').toggle(1000, //토글링이 총 걸리는 시간 설정(1/1000초)
						function(){
					console.log("토글링이 완료되었습니다.")
					var text = button.html();
					button.html(text=='보이기'?'안보이기':'보이기');
					}); 
		})
		
		$('button:last').click(function(){
			$('.div').toggle();
		});
	});
</script>
</head>
<body>
	<fieldset>
		<legend>toggle(콜백함수,콜백함수)함수:1.9이전 버전 테스트</legend>
		<div></div>
		<button>안보이기</button>
	</fieldset>

	<fieldset>
		<legend>toggle([Duration][,콜백함수])함수:1.9이후 버전 테스트(위와 동일하게)</legend>
		<div id="div"></div>
		<button>안보이기</button>
	</fieldset>

	<fieldset>
		<legend>toggle([Duration][,콜백함수])함수:1.9이후 버전 테스트</legend>
		<div class="div" style="background-color: red"></div>
		<div class="div" style="display: none; background-color: green"></div>
		<button>토글링</button>
	</fieldset>

</body>
</html>