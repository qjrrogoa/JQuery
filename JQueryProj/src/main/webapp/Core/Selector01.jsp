<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Selector01.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	//1]선택된 제이쿼리 DOM 객체 수 얻기
	//  -length속성 
	//  size()함수:3.0에서 removed, 대신  length속성 사용권장
	console.log('a태그의 수:',$('a').length);
	console.log('tr태그의 수:',$('tr').length);
	//2]$("선택자[속성*='속성값']") 형식으로  jQuery객체 선택
	$('a[href*=naver]').css('color','red').css("fontSize",'1.8em');
	$('a[href$=net]').css('color','green').css("fontSize",'.8em');
	$('a[href^=www]').css('color','#998988').html('NATE');
	//3]$("선택자:contains('문자열')"):시작 태그와 종료태그 사이의 내용으로 선택
	$('a:contains(이)').css('backgroundColor','black');
	//4]$("선택자:even") 혹은 $("선택자:odd"). 인덱스는 0부터
	//짝수번째는 빨간,홀수번째는 그린으로 배경색 적용]
	$('table tr:even').css('backgroundColor','red');
	$('table tr:odd').css('backgroundColor','green');
	//5]$("선택자:first-child") 혹은 $("선택자:eq(인덱스)")
	//테이블의 헤더(제목부분)은 배경색을 흰색
	//$('tr:first-child').css('backgroundColor','white');
	$('tr:eq(0)').css('backgroundColor','white');
	$('tr:eq(5)').css('backgroundColor','white');
});
</script>
</head>
<body>
	<fieldset>
		<legend>선택자 첫번째</legend>
		<ul style="list-style-type: decimal;">
			<li><a href="http://www.naver.com">네이버</a></li>
			<li><a href="http://www.daum.net">다음</a></li>
			<li><a href="www.nate.com">네이트</a></li>
		</ul>			
	
		<table cellspacing="1" bgcolor="gray" width="60%">
			<tr bgcolor="white" >
				<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
			</tr>
			<tr bgcolor="white" >
				<td>1</td><td>제목1</td><td>작성자1</td><td>2013-9-12</td>
			</tr>
			<tr bgcolor="white" >
				<td>2</td><td>제목2</td><td>작성자2</td><td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>3</td><td>제목3</td><td>작성자3</td><td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>4</td><td>제목4</td><td>작성자4</td><td>2013-9-12</td>
			</tr>			
		</table>
		<br/>
		<table cellspacing="1" bgcolor="gray" width="60%">
			<tr bgcolor="white" >
				<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
			</tr>
			<tr bgcolor="white" >
				<td>1</td><td>제목1</td><td>작성자1</td><td>2013-9-12</td>
			</tr>
			<tr bgcolor="white" >
				<td>2</td><td>제목2</td><td>작성자2</td><td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>3</td><td>제목3</td><td>작성자3</td><td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>4</td><td>제목4</td><td>작성자4</td><td>2013-9-12</td>
			</tr>			
		</table>
	</fieldset>	
</body>
</html>