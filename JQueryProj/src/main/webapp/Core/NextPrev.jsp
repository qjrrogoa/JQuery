<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NextPrev.jsp</title>
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
		$('#next').click(function(){
			$('#third').next().css({color:"red",fontSize:"1.8em"});
			console.log("$('#next') : %O",$('#next'));
			console.log("$('#next').next(); : %O",$('#next').next());
		})
		
		$('#prev').click(function(){
			console.log("%O",$('third').prev().prev().prev().html());
			$('#third').prev().prev().css({color:"green",fontSize:"2.2em"});
		})
		
		/*
		var i=0;
		$('#continue').click(function(){
			$('li:eq('+(i-1)+')').css({color:"black",fontSize:"1em"});
			$('li:eq('+i+')').css({color:"green",fontSize:"2.2em"});
			i++;
			if(i==$('li').length-1)
				i=-1;
		})
		*/
		var liObj = $("li:first");
		var index = 0;
		var length = $('li').length;
		$('#continue').click(function(){
			if(index==0)
				$("li:last").css({color:"black",fontSize:"1em"});
			else
				liObj.prev().css({color:"black",fontSize:"1em"});
			liObj.css({color:"green",fontSize:"2.2em"});
			index++;
			if(index != length)
				liObj=liObj.next();
			else{
				index=0;
				liObj=$("li:first");
			}
		})

	});
</script>
</head>
<body>
	<fieldset>
		<legend>next() 및 prev()함수</legend>
		<button id="next">다음</button>
		<button id="prev">이전</button>
		<button id="continue">계속</button>
		<ul>
			<li>JAVA</li>
			<li>JSP</li>
			<li id="third">FRAMEWORK</li>
			<li>JQUERY1</li>
			<li>JQUERY2</li>
			<li>JQUERY3</li>
		</ul>
	</fieldset>
</body>
</html>