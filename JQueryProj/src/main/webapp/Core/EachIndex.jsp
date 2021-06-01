<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EachIndex.jsp</title>
<style>
	div{
		width:100px;
		height: 100px;
		text-align: center;
		line-height: 100px;
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
	//index():부모 자식 구조 안에서의  인덱스를 의미.인덱스는 0부터 시작.
	var clickDiv=$('div').click(function(){
		//부모 자식 구조상에서 인덱스가 부여됨:0번은 legend,DIV1이 1번
		//DIV5는 인덱스가 1(FIELDSET 이 0)		
		console.log('클릭한 DIV의 인덱스:',$(this).index());
	});
	
	console.log(clickDiv.length);//5
	console.log(clickDiv.html());//무조건 첫번째 DIV1
	
	clickDiv.each(function(index){
		console.log('인덱스:',index);
		console.log($(this).html());
	});
	var colors=['#ff0000',"#00ff00","#0000ff","#89afbc","#898907"];
	//아래처럼 attr()함수를 적용하면 모든 div의 id값이 DIV,고로 id를 각각 적용하려면 each()함수를 쓴다
	//$('div').attr({id:"div",style:"background-color:"+colors[0]})
	$('div').each(function(i){
		$(this).attr({id:"DIV"+i,style:"background-color:"+colors[i]})
	});
	//동적으로 부여된 아이디값으로 객체 선택]
	console.log('css():',$('#DIV1').css('background-color'));
	console.log('prop():',$('#DIV1').prop('style'));
	console.log('attr():',$('#DIV1').attr('style'));
	/*[모든 DIV에  each를 걸어 오버시 노란색, 아웃시에는 해당 DIV의 원래 배경색으로....]*/
	$('div').each(function(){
		//원래 배경색 얻기
		var bgColor=$(this).css('background-color');
		$(this).hover(function(){
			$(this).css('backgroundColor','yellow');
		},function(){
			$(this).css('backgroundColor',bgColor);
		});		
	});
	
});
</script>
</head>
<body>
	<fieldset>
		<legend>each(콜백함수)함수 및 index()함수</legend>
		<div>DIV1</div>
		<div>DIV2</div>
		<div>DIV3</div>
		<div>DIV4</div>
	</fieldset>
	<div>DIV5</div>
</body>
</html>