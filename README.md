# JQuery

1. Selector
---

1] DOM객체 수 얻기 $('태그명').length

     $('a').length

2] JQuery객체 선택 $("선택자[속성='속성값']"

    $("a[href*='naver']")    //* 포함
    $("a[href$='com']")      //$ 끝
    $("a[href^='www']")      //^ 시작
    
3] 시작태그와 종료태그 사이의 내용으로 선택 $("선택자:contain('문자열')")

    $("a:contains('네이버')").css("color","red");
    
4] 짝수번쨰 홀수번째 선택 $("선택자:even"), $("선택자:odd")

    $("table tr:even")
    $("table tr:odd")
  
5] $("선택자:first-child") 혹은 $("선택자:eq(인덱스)")

$("선택자:first-child") 선택자 자식 중 첫번째란 뜻이 아니라 첫번째 자식들 중 선택자 란 뜻,, 아주 헷갈린다
          
               
2. Get
---

1] 쟈바스크립트, JQuery DOM 객체 얻는 법

     $(function() {
          var jQueryDom = $('#naver')
          var jsDom = document.getElementById('naver')
     });

     
2] jQuery에서 쟈스 문법 사용하려면 Get()사용

     $(function() {
          jQuery.html("네이버")
          js.innerHtml("네이버")

          jQuery.get(0).innerHtml("네이버")
     });

     
3] value 값 설정

     $(function() {
          $('input[type="button"]:first').click(function(){
               console.log($('#txt').get(0).value);
               console.log($('#txt').val());
          })

          $('input[type="button"]:last').click(function(){
               $("span").css("color","white").css("font-size","1.8em");
          })
     });


3. trigger
---

1] trigger 설정 trigger('함수명')

     $(function() {
          $('button').click(function(){
               console.log($(this).html()+'을 클릭했어요');
          })

          $('button').trigger('click');
     });


4. bind
---
두 개 이상의 함수를 사용하기 위해 사용된다.

1] mouseover, mouseout함수 함께 쓰기
     
     $(function() {
          $('div:eq(1) > div').bind('mouseover',function(){
               $(this).css({"background-color":"black","color":"white"})
          }).bind('mouseout',function(){
               $(this).css({"background-color":"white","color":"black"})
          })
     });
     
2] unbind

	$(function() {
          $('div:last h2').bind('click',function(){
               console.log($(this).html());
          })

          $('input[value="이벤트해제"]').click(function(){
               $('div:last h2').unbind('click');
          })
     });
