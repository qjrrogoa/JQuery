<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get</title>
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
		//1.팩토리 함수$()로 jQuery DOM객체 얻는다. jQuery DOM객체에서만 jQuery함수 적용 가능
		var jQueryDom = $('#naver'); //제이쿼리 DOM객체
		//2.자바 스크립트로 브라우저 DOM객체 얻기 - jQuery함수 적용 불가능
		var jsDom = document.getElementById("naver");
		console.log('jQueryDom:$O',jQueryDom);
		console.log('jsDom:$O',jsDom);
		//jQueryDom.css('color','red').html('NAVER');// [0]
		//jsDom.css('color','red').html('NAVER');// [X] jsDom.css is not a function
		
		jsDom.style.color = "red";
		jsDom.innerHTML = 'NAVER';
		
		//3. jQuery함수 get()로 부라우저 DOM객체 얻기]
		//get(인덱스) : jQuery DOM객체를 자바스크립트 DOM객체로 변환
		//			  인덱스 - 선택된 jQuery DOM객체 중 인덱스 값(인덱스는 0부터 시작)
		console.log(jsDom.href); //[O]
		//console.log(jQueryDom.href); //[X]
		//제이쿼리 DOM객체를 브라우저 DOM객체로 변환
		console.log(jQueryDom.get(0).href);//[O]
	
		$('input[type=button]:first').click(function(){
			//1. 쟈수 함수 이용
			console.log('쟈스 이용 : ',document.getElementById("txt").value);
			//2. jQuery함수 이용
			console.log("제이쿼리 함수 사용(get) : ",$("#txt").get(0).value);
			console.log("제이쿼리 함수 사용(get) : ",$("#txt").val());
		});
		
		//문 "텍스트 변경하기" 버튼 클릭시 "실습입니다"라는 
		// 텍스트 색상을 빨간색으로
		// 글자크기는 1.8em으로 변경해라. 쟈스와 제이쿼리 버전 둘다
		
		//쟈스 버전]
		document.getElementsByTagName("input")[2].addEventListener("click",function(){
			document.getElementsByTagName("span")[0].style.color="red";
			document.getElementsByTagName("span")[0].style.fontSize="1.8em";
		})
		
		
		//제이쿼리 버전]
		//$('input[type=button]:last').click(function(){
			//$("span").css("color","red").css("font-size","1.8em");
		//});
	});
</script>
</head>
<body>
	<fieldset>
		<legend>제목</legend>
		<fieldset>
			<legend>get(인덱스)함수</legend>
			<input type="text" value="텍스트값" id="txt" /> 
			<input type="button" value="확인" />
			<ul style="list-style-type: decimal;">
				<li><a href="http://www.naver.com" id="naver">네이버</a></li>
				<li><a href="http://www.daum.net">다음</a></li>
				<li><a href="http://www.nate.com">네이트</a></li>
			</ul>
			<h2>실습하기</h2>
			<span>실습입니다</span> 
			<input type='button' value="텍스트변경하기" />
		</fieldset>
	</fieldset>
</body>
</html>