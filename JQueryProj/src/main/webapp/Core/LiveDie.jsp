<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LiveDie.jsp</title>
<style>
	div{
		width:200px;
		height:100px;
		text-align: center;
		line-height: 100px;
		background-color: black;
		color:white;
		border: 2px solid white
	
	}

</style>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Deprecated된 함수 사용시 아래 라이브러리 임베드 -->
<!--  
<script src="<c:url value="/js/jquery-migrate-1.4.1.min.js"/>"></script>
-->
<script>
$(function(){
	//bind()함수로 이벤트 바인딩]
	/*
	$('div').bind('click',function(){
		$(this).after("<div>동적으로 추가한 div</div");
	});*/
	/*live()및 die()함수는 1.9버전부터 제거됨.
	사용시에는 1.9버전 미만 라이브러를 임베드 하거나 혹은 마이그레이션 라이브러리를  
	현 최신 버전과 함께 임베드
	혹은 최근에는 live나 bind대신 on()함수 사용
	*/
	//live()함수로 이벤트 바인딩]
	//-동적으로 추가한 div에도 이벤트가 바인딩됨.]
	/*
	$('div').live('click',function(){
		$(this).after("<div>동적으로 추가한 div</div");
	});
	//live로 바인딩한 이벤트는 die로 이벤트 해제]
	$('button').click(function(){
		$('div').die('click');
	});	
	*/
	/*
	on()함수 사용]
	$("선택자").on("이벤트",콜백함수)는 이벤트 바인딩하나
	동적으로 추가된 태그에는 이벤트가 바인딩 안됨.
    이벤트 해제시:$("선택자").off("이벤트");
	
	
	※동적으로 추가한 요소에 이벤트 바인딩하려면
	$(document).on("이벤트","선택자",콜백함수);	
	해제시:$(document).off("이벤트","선택자");
	*/
	$(document).on("click","div",function(){
		$(this).after("<div>동적으로 추가한 div</div");
	});
	//on으로 바인딩한 이벤트는 off로 이벤트 해제]
	$('button').click(function(){
		$(document).off('click','div');
	});
	//※ 선택자:gt(인덱스) - 인덱스보다 큰 선택자들]
	$("table tr:gt(0)").mouseover(function(){
		$(this).css("backgroundColor","green");
	}).mouseout(function(){
		$(this).css("backgroundColor","white");
	});
	
	//children([선택자])함수
	$("table tr:gt(0)").click(function(){
		console.log('클릭한 tr의 자식인 td의 갯수:',$(this).children().length);
		if($(this).children().length > 2){
			//tr의 자식은 td밖에 없음으로 생략시 td
			var title = $(this).children(":eq(1)").html();
			var name = $(this).children(":eq(2)").html();
			console.log("클릭한 행의 제목:%s,작성자:%s",title,name);
		}
	});
	
	//자식이 서로 다른 요소인 경우
	console.log($("div:last").children(":eq(1)").html());//자식2
	console.log($("div:last").children("a:eq(1)").html());//자식4
	console.log($("div:last").children("span:eq(1)").html());//자식3
	
});
</script>
</head>
<body>
	<fieldset>
		<legend>live("이벤트명",콜백함수),die("해제할이벤트명"),children([선택자])함수,on("이벤트명",콜백함수),off("해제할이벤트명"),gt(인덱스)</legend>
		<div>미리 만들어 놓은 DIV</div>
		<button>이벤트 해제</button>

		<!--각 행에 마우스 오버시에는 행의 배경색이 gray
           마우스 아웃시에는 배경색이 white
           단,제목에는 적용하지 마세요.....
      -->
		<table cellspacing="1" bgcolor="gray" width="60%">
			<tr bgcolor="white">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<tr bgcolor="white">
				<td>1</td>
				<td>제목1</td>
				<td>작성자1</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>2</td>
				<td>제목2</td>
				<td>작성자2</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>3</td>
				<td>제목3</td>
				<td>작성자3</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>4</td>
				<td>제목4</td>
				<td>작성자4</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>총계</td>
				<td colspan='3'>세개 셀 병합</td>
			</tr>
		</table>
		<h3>자식이 서로 다른 요소인 경우</h3>
		<div>
			<span>자식1</span>
			<a>자식2</a>
			<span>자식3</span>
			<a>자식4</a>
		</div>
	</fieldset>
</body>
</html>