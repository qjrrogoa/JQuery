<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FormSelectorExam.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	$(":button:first").click(function(){
		$("#desc").val($("#src").val());
	});
	
	$("#sel").on("change",function(){
		$('#sport').val($(this).val()=="baseball"?"야구": $(this).val()=="scocker"?"축구":"배구" );
	});
	
	$("#btn").click(function(){
		$('#gender').val($(":radio:checked").val()=='M'?"남자":"여자");
	});
	
});
</script>
</head>
<body>
	<fieldset>
		<legend>폼 셀렉터 연습</legend>
		<h2>텍스트 복사</h2>
		<input type="text" name="src" id="src" /> 
		<input type="button" value="복사" /> 
		<input type="text" name="desc" id="desc" />

		<h2>선택상자의 값 복사</h2>
		<select name="sel" id="sel" >
			<option value="baseball">야구</option>
			<option value="balleyball">배구</option>
			<option value="scocker">축구</option>
		</select> 
		<input type="text" name="sport" id="sport" />
		<h2>radio상자의 값 복사</h2>
		<input type="radio" name="gender" value="M" />남자 
		<input type="radio"	name="gender" value="W" />여자
		<input type="text" name="gender" id="gender" /> 
		<input type="button" value="확인" id="btn" />
		<h2>메일선택</h2>
		<input type="checkbox" value="all">전체 선택
		<ul style="list-style-type: decimal;">
			<li><input type="checkbox" name="mailing" value="mail1" />메일1</li>
			<li><input type="checkbox" name="mailing" value="mail2" />메일2</li>
			<li><input type="checkbox" name="mailing" value="mail3" />메일3</li>
			<li><input type="checkbox" name="mailing" value="mail4" />메일4</li>
			<li><input type="checkbox" name="mailing" value="mail5" />메일5</li>
			<li><input type="checkbox" name="mailing" value="mail6" />메일6</li>
			<li><input type="checkbox" name="mailing" value="mail7" />메일7</li>
		</ul>
	</fieldset>
</body>
</html>