<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TextHtml.jsp</title>
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
	      시작태그와 종료태그 사이의 컨텐츠 읽어 오기]
	      text()혹은 html();
	      html()함수는 태그포함 모든 내용을 읽어오고
	      text()함수는 태그부분 제외한 텍스트 부분만 읽어옴
	      
	      시작태그와 종료태그 사이의 컨텐츠 출력하기]
	      text("설정할 문자열")혹은 html("설정할 문자열");
	      html()함수는 출력시 태그가 해석되서 출력됨.
	      text()함수는 태그가 그대로 출력됨.   
	      */
	      
	      $('button').click(function(){
	    	  switch(this.id){
	    	  	case "read":
	    	  		var htmlString = $('div:eq(0)').html();
	    	  		var textString = $('div:eq(0)').text();
	    	  		console.log('html(): %s, test() : %s',htmlString,textString)
	    	  		break;
	    	  	case "write":
	    	  		//$('#display').html("<h3>시작태그와 종료태그 사이에 넣기</h3>");
	    	  		$('#display').text("<h3>시작태그와 종료태그 사이에 넣기</h3>");
	    	  		break;
	    	  	case "img":
	    	  		$("#display").html("<img src='<c:url value="/Images/1.jpg"/>' alt='이미지 동적 표시'/>")
	    	  		break;
	    	  	case "btnText":
					console.log($(this).html());
	    	  		break;
	    	  		
	    	  	default:
	    	  }
			})
	});
</script>
</head>
<body>
	<fieldset>
		<legend>text() 및 html()함수</legend>
		<button id="read">읽기</button>
		<button id="write">쓰기</button>
		<button id="img">이미지 추가</button>
		<button id="btnText">버튼태그사이의 텍스트 얻기</button>
		<div>
			<h2>제목입니다.</h2>
		</div>
		<div id="display"></div>
	</fieldset>
</body>
</html>