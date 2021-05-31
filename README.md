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
     
5. filter (migrate해야한다.)
---

     $(function() {
          $('a').addClass('bg')
	  .filter("[href*=naver]") //a태그 안에서 필터해준다
	  .addClass('border')
	  .end   		//다시 a태그로
	  .filter(:eq(2))
	  .removeClass('bg')
     });
     
6. on/off
---

1]. 동적으로 추가한 요소에 이벤트 바인딩  $(document).on("이벤트","선택자",콜백함수) // $(document).off("이벤트","선택자")
     
     $(function() {
		$(document).on("click","div",function(){
			$(this).after("<div>동적으로 추가한 div</div>")
		})
		
		//on으로 바인딩한 이벤트는 off로 이벤트 해제
		$('button').click(function(){
			$(document).off('click','div');
		})
	});
	
7. Toggle
---

1] 기본형
	
     $(function() {
     	$('button').click(function(){
		$('#div').toggle();
	})
     });


2] 애니메이션주기

     $(function() {
	$('button').click(function(){
		$('#div').toggle(3000,function(){
			button.html(button.html()=='보이기'?'안보이기'?'보이기')
		})
	})
     });

3] 토글 클래스 주기

     $(function() {
     	$('button').click(function(){
		$('div').toggleClass('invisible');
	})
     });

	
