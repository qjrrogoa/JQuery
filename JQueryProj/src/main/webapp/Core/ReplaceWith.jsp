<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ReplaceWith.jsp</title>
<style>
	div{
		width:50px;
		height:50px;
		border:1px red solid;
		text-align: center;
		line-height: 50px;
	}
</style>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	$(':button').click(function(){
		if($('div').length!=0){
			$('div').each(function(){
				$(this).replaceWith("<button>"+$(this).html()+"</button>");
			})
		}
		else{
			$('button').not(':button:last').each(function(){
				$(this).replaceWith("<div>"+$(this).html()+"</div>");
			})
		}
	})
});
</script>
</head>
<body>
	<fieldset>
		<legend>replaceWith()함수</legend>
		<div>div1</div>
		<div>div2</div>
		<div>div3</div>
		<button>확인</button>
	</fieldset>

</body>
</html>