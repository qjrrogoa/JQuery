<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EachTrim.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	/*
    제이쿼리 함수:자스의 forEach나 for~in문 역할
    $.each(배열이나 객체,function(키값,밸류값){});
    만약 배열 형태라면
    첫인자에는 인덱스 ,두번째 인자에는 인덱스에따른 요소값이 저장됨.
	    
    $.each(배열,function(인덱스,인덱스에따른 요소값){});      
    */
    var mountains = ['한라산','지리산','덕유산'];
    $.each(mountains,function(index,element){
    	console.log('%s %s',index,element)
    });
    
    var person = {name:"가길동",age:"20",addr:"가산동"};
    person.gender = '남자';
    $.each(person,function(key,value){
    	console.log('%s %s',key,value)
    });
    
    console.log("트림 전 :X"+'   T   R    I   M      '+'Y');
    console.log("트림 후 :X"+$.trim('   T   R    I   M      ')+'Y');
});
</script>
</head>
<body>
	<fieldset>
		<legend>$.each(대상,콜백함수)함수 및 $.trim(문자열)</legend>
	</fieldset>

</body>
</html>