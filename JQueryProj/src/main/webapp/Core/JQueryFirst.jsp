<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQueryFirst.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	/*
	//순수 자바스크립트만으로 구현]
	window.onload = function(){
		var span = document.getElementById("jQuery");
		console.log("순수 자바스크립트로 얻은 객체:",span);
		span.style.color='red';
		span.innerHTML='<strong>프로그램 진입점</strong>';
		var legend = document.getElementsByTagName("legend")[0];
		legend.onclick=function(){
			span.style.color='black';
			span.innerHTML='jQuery 첫 수업입니다.';
		};
	};*/
	//제이쿼리 사용]
	/*
	//프로그램 진입점-방법1]$(document).ready(function(){});
	$(document).ready(function(){
		//var span =$('#jQuery');
		//console.log("제이쿼리로 얻은 객체:",span);
		$('#jQuery').css("color","red").html("<strong>프로그램 진입점</strong>");
		$("legend:eq(0)").click(function(){
			$('#jQuery').css("color","black").html("jQuery 첫 수업입니다.");
		});
	});*/
	//프로그램 진입점-방법2]$().ready(function(){});
	/*
	$().ready(function(){		
		$('#jQuery').css("color","red").html("<strong>프로그램 진입점</strong>");
		$("legend:eq(0)").click(function(){
			$('#jQuery').css("color","black").html("jQuery 첫 수업입니다.");
		});
	});*/
	//프로그램 진입점-방법3]$(function(){});
	
	$(function(){
		$('#jQuery').css("color","red").html("<strong>프로그램 진입점</strong>");
		$("legend:eq(0)").click(function(){
			$('#jQuery').css("color","black").html("jQuery 첫 수업입니다.");
		});		
	});
	//프로그램 진입점-방법4] jQuery()
	/*
	jQuery(function(){
		jQuery('#jQuery').css("color","red").html("<strong>프로그램 진입점</strong>");
		jQuery("legend:eq(0)").click(function(){
			jQuery('#jQuery').css("color","black").html("jQuery 첫 수업입니다.");
		});
	});
	*/
</script>

</head>
<body>
	<fieldset>
		<legend>jQuery 첫 수업</legend>
		<span id="jQuery">jQuery 첫 수업입니다.</span>
	</fieldset>
</body>
</html>