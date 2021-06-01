<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	$("#next").click(function(){
		$('#third').next().css({color:"red",fontSize:"1.8em"});
		console.log("$('#next'):%O",$('#next'));
		console.log("$('#next').next():%O",$('#next').next());
	});
	$('#prev').click(function(){
		console.log($('#third').prev().prev().prev());//선택된 객체가 없다
		$('#third').prev().prev().css({color:"green",fontSize:"2em"});
	});
	
	//첫번째 li객체 저장]
	var liObj = $("li:first");
	//마지막 객체여부 판단용 변수]
	var index =0;
	//li객체의 전체수 ]
	var length = $('li').length;
	$('#continue').click(function(){
		//index가 0일때 즉 최초 버튼 클릭시나
		//마지막 li 객체에 도달했을때-마지막  li객체를 원래대로]
		if(index==0) $("li:last").css({color:"black",fontSize:"1em"});
		else//이전 li객체를 원래대로]
			liObj.prev().css({color:"black",fontSize:"1em"});
		//해당 li객체를 CSS변경	
		liObj.css({color:"red",fontSize:"2em"});
		//인덱스 증가]
		index++;
		if(index != length)//인덱스 증가]
			liObj = liObj.next();
		else{
			//인덱스를 다시 0으로 초기화	
			index =0;
			//liObj에 처음 li객체를 저장
			liObj = $("li:first");
		}
		
	});
	
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