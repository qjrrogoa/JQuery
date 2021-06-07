<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DatePicker.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 제이쿼리 UI용 CSS -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<!-- 제이쿼리 CORE용 라이브러리 임베드 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 제이쿼리 UI용 라이브러리 임베드 -->
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script>
$(function(){
	//Datepiocker위젯 생성 방법
	//1-1: Datepicker위젯 생성
	//$( "#datepicker" ).datepicker();
	
	//1-2: 세터로 옵션 설정
	//$( "#datepicker" ).datepicker('option','dateFormat','yy-mm-dd');
	//$( "#datepicker" ).datepicker( "option", "showAnim", "bounce" );
	
	//2. option을 {}객체(json)로 함수의 인자로 처음부터 주거나
	//$( "#datepicker" ).datepicker({"dateFormat":"yy-mm-dd","showAnim":"bounce"});
	//console.log("설정된 옵션 읽기(게터)",$("#datapicker").datapicker("option","dataFormat"));
	
	var today = new Date();
		
	$("#datepicker").datepicker({
		//"showAnim" : "bounce",
		"dateFormat" : "yy-mm-dd",
		
		//showOtherMonths:true,
		//selectOtherMonths:true,
		minDate:new Date(today.getFullYear(),today.getMonth(),today.getDate()),
		buttonImage: "<c:url value='/Images/calendar.png'/>",
		showOn:"both",//both는 버튼(텍스트 혹은 이미지)이나 혹은 텍스트박스를 둘 다 클릭시 달력이 보일 
		buttonText:"달력", //showOn 속성과 세트
		buttonImageOnly:true,
		onSelect:function(date,inst){
			console.log("날짜 선택 : ",date);
			$("#display").html(date);
			console.log("#O",inst);
			console.log("데이트피커 객채의 getDate()메서드 호출 :",$("#datepicker").datepicker("getDate"));
			
		}

	});
	
	//달력 CSS적용 - 제이쿼리 함수
	$(".ui-datepicker-trigger").css({height:'30px','vertical-align':'middle'})

});
</script>
</head>
<body>
	<fieldset>
		<legend>데이트 피커</legend>
		<input type="text" id="datepicker">
		<h2>선택한 날짜 아래에 표시하기</h2>
		<span id="display" style="color:red;font-size:1.5em"></span>
	</fieldset>

</body>
</html>