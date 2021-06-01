<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bind.jsp</title>
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
	 :first-child 혹은 :last-child 자식/부모관계일때 부모안에서 첫번째태그이거나 마지막 태그여야한다
	 :first 혹은 :last 자식 부모와 관계없이 해당 태그중에 첫번째냐 마지막이야
	 :eq(인덱스) 자식부모 관계와 상관없이 해당 태그들중에서 순서를 의미		 
	 */
	//자식태그로 존재하는 div중 첫번째 div태그		
	console.log("div:first-child의 innerHTML:",$('div:first-child').html());
	//div태그중 첫번째 div태그
	console.log("div:first의 innerHTML:",$('div:first').html());
	console.log("div:eq(0)의 innerHTML:",$('div:eq(0)').html());
	console.log($('div:last-child').length);
	//$("div:last-child").css("color","red");//모든 선택된 div에 적용됨
	console.log($("div:last-child").html());//네이트
	$("div:last-child").each(function(){
		console.log($(this).text());
	});
	//click이벤트는 워낙 빈번하게 발생함으로 함수로 구현해 놓음]
	/*
	$('button').click(function(){
		//※$(this)는 $(선택자).jQuery함수()안에서 해당 선택자를 지칭]
		//즉 이벤트 핸들어 안에서 $(this)는 해당 이벤트가 발생한 객체의미
		$(this).html("<strong>"+$(this).html()+' 버튼이 클릭되었어요</strong>');
	});*/
	$('button').bind("click",function(){
		$(this).html("<strong>"+$(this).html()+' 버튼이 클릭되었어요</strong>');
	});
	
	console.log($('div:eq(2)').html());//네이버
	$('div:eq(1) > div').bind('mouseover',function(){
		$(this).css({"backgroundColor":"black","color":"white"});
	}).bind("mouseout",function(){
		$(this).css({"backgroundColor":"white","color":"black"});
	});
	//이벤트 핸들러(콜백함수) 즉 jQuery함수안에서
	//this 와 $(this)의 차이점]
	/*
	this:해당 태그의 속성값을 얻어올때 사용 예] this.태그속성명
	$(this):이벤트가 걸린 해당 jQuery DOM객체를 의미
	          즉 $(this).태그속성명 시에는 undefined
	          $(this).get(인덱스).태그속성명으로 얻어온다.
	          
	$(this)는 jQuery DOM객체
	this는 자바스크립트(ES5) DOM객체
	$(this) 와 this는 이벤트 핸들러에서 이벤트가 발생한 객체를
	의미한다
	*/
	$("div:eq(1) div").bind("click",function(){
		console.log("$(this).title :",$(this).title);//undefinded
		console.log("$(this).get(0).title :",$(this).get(0).title);
		console.log("this.title :",this.title);
		
		switch(this.id){
			case "naver":location.href="https://www.naver.com";break;
			case "daum":location.href="https://www.daum.net";break;
			default:location.href="https://www.nate.com";
		}
	});
	
	//이벤트 바인딩]	
	$("div:last h2").bind("click",function(){
		console.log($(this).html());
	});
	//이벤트 해제]
	//bind()메소드로 바인딩한 이벤트는 
	//unbind("해제할 이벤트명")메소드로 언바인딩 
	//즉 이벤트 해제	
	$("input[type=button]").click(function(){
		$("div:last h2").unbind('click');
	});
});
</script>
</head>
<body>
	<fieldset>
		<legend>bind("이벤트명",콜백함수)</legend>
		<div>div1</div>
		<button type="button">클릭1</button>
		<button type="button">클릭2</button>
		<button type="button">클릭3</button>
		<div>
			<div id="naver" title="네이버">네이버</div>
			<div id="daum" title="다음">다음</div>
			<div id="nate" title="네이트">네이트</div>
		</div>

		<div>
			<h2 style="background-color: red">unbind테스트</h2>
			<input type="button" value="이벤트해제" />
		</div>
	</fieldset>
</body>
</html>