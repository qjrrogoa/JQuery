# JQuery

1. Selector1
---

1] DOM객체 수 얻기 $('태그명').length

     $('a').length

2] JQuery객체 선택 $("선택자[속성='속성값']"

    $("a[href*='naver']").   //* 포함
    $("a[href$='com']")      //$ 끝
    $("a[href^='www']")      //^ 시작
    
3] 시작태그와 종료태그 사이의 내용으로 선택 $("선택자:contain('문자열')")

    $("a:contains('네이버')").css("color","red");
    
4] 짝수번쨰 홀수번째 선택 $("선택자:even"), $("선택자:odd")

    $("table tr:even")
    $("table tr:odd")
  
5] $("선택자:first-child") 혹은 $("선택자:eq(인덱스)")
