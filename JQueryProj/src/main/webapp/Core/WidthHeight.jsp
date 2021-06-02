<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WidthHeight</title>
<style>
	div {
		width: 100px;
		height: 100px;
		background-color: green;
		padding: 20px;
		border: 5px red solid;
		margin: 20px;
	}
</style>
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
        ※width()나 height() 혹은 css("속성명")으로
          가로폭 세로폭을 얻을때는 마진 및 패딩값이 미 포함됨  값임.
        outerWidth(),outerHeight()로 얻을때 (디폴트:false) 
          패딩값하고 보더값이 포함됨.
        true로 설정시에는 마진값도 포함됨.
        */
        var div = $('div');
		//패딩/테두리/마진/ 모두 포함 안됨.
		var width = div.width();
		var height = div.height();
		
		//패딩/테두리 포함
		var outerWidth = div.outerWidth();
		var outerHeight = div.outerHeight();

		//패딩/테두리/마진 모두 포함
		var includeMarginouterWidth = div.outerWidth(true);
		var includeMarginouterHeight = div.outerHeight(true);
		
		
		$('button').click(function(){
			console.log('마진/패딩/테두리 미 포함 : 가로폭 - %s, 세로폭 - %s',width,height);
			console.log('마진 미 포함 : 가로폭 - %s, 세로폭 - %s',outerWidth,outerHeight);
			console.log('전부 포함 : 가로폭 - %s, 세로폭 - %s',includeMarginouterWidth,includeMarginouterHeight);
			/*
			css("속성명")으로 가로폭/세로폭 얻기:
			width()및 height()함수와 같으나 값에 단위가 포함되어 있다.
			*/
			console.log('마진/패딩/테두리 미 포함 : 가로폭 - %s, 세로폭 - %s (css)',div.css('width'),div.css('height'));
		})
	});
</script>
</head>
<body>
	<fieldset>
		<legend>width(),height(),outwidth,outerHeight</legend>
		<div></div>
		<button>가로폭/세로폭 구하기</button>
	</fieldset>
</body>
</html>