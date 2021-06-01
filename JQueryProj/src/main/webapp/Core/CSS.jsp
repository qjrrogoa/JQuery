<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CSS.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	//[속성 값 읽기]- css("css의 속성명")	
	$('#get').on('click',function(){
		var div = $('div');
		var width = div.css('width');
		var height = div.css('height');
		console.log('가로폭:%s,세로폭:%s',width,height);
		//CSS속성명 그대로...
		//var back = div.css("background-color");//rgb(255, 0, 0)함수로 반환
		//자바스크립트 접근방식으로...
		var back = div.css("backgroundColor");
		console.log("배경색:%s,%s",back,div.get(0).style.backgroundColor);
		$('span').html("가로폭:"+width+",세로폭:"+height+',배경색:'+div.get(0).style.backgroundColor);
	});
	//[속성값 설정]- css("속성명","설정할 값")
	$('#set').click(function(){
		//메소드 체인으로]
		//$('div').css('width','200px').css('height','200px').css('backgroundColor','green');
		//JSON타입으로
		$('div').css({"width":"200px","height":"200px","backgroundColor":"green"});
	});
	var aTag = $('a').click(function(){
		console.log('클릭된 A태그의 컨텐츠:',$(this).html());
		console.log('선택된 A태그의  무조건 첫번째 컨텐츠:',aTag.html());
		
	});
	
	var pTag = $('#article');
	$('a').on('click',function(){
		//클릭시 현재 글자 크기 얻기]
		var fontSize = parseInt(pTag.css('font-size'));
		switch($(this).html()){
			case "크게":pTag.css('fontSize',fontSize+5+'px');break;
			case "작게":pTag.css('fontSize',fontSize-5+'px');break;
			case "진하게":pTag.css('fontWeight','bold');break;
			case "보통":pTag.css('fontWeight','normal');break;
			case "빨강":pTag.css('color','red');break;
			case "그린":pTag.css('color','green');break;
			case "검정":pTag.css('color','black');break;
			case "기울이기":pTag.css('font-style','italic');break;
			default:pTag.css('font-style','normal');
		
		}
	});
	
	
});
</script>
</head>
<body>
	<fieldset >
 
  		<legend>string css("css속성명"),jQuery css("css속성명","속성값")</legend>  
  
		  <span style="color:green;font-size:1.8em"></span>		 
		  <div style="width:100px;height:100px;background-color:red"></div>
		  <button id="get">속성값 읽기</button> 
		  <button id="set">속성값 설정</button>
		  
		  <hr/>
		  <a href="#">크게</a> | <a href="#">작게</a> | <a href="#">진하게</a>
		  | <a href="#">보통</a> | <a href="#">빨강</a> | <a href="#">그린</a>
		  | <a href="#">검정</a>  | <a href="#">기울이기</a> | <a href="#">똑바로</a>
		  <p id="article" style="font-size:12px">
			  기사 내용입니다<br/>
			  기사 내용입니다<br/>
			  기사 내용입니다<br/>
			  기사 내용입니다<br/>
			  기사 내용입니다<br/> 
		  </p>
 	</fieldset>
</body>
</html>