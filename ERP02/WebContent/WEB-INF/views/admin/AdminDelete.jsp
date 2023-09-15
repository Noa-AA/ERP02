<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>Child</title>
    	<style>
input::-webkit-outer-spin-button, /* number를 사용하면 요소에 생기는 스핀버튼 삭제 */
	input::-webkit-inner-spin-button {
	-webkit-appearance: none; /* 브라우저에서 요소의 기본외관 제거 */
	margin: 0; /* 스핀 버튼이 없는 상태로 유지 */
}

/* Firefox  */
input[type='number'] { /* (<input type="number">)를 대상으로 하여 스타일을 적용 */
	-moz-appearance: textfield; /* 브라우저에서 숫자 입력 필드를 일반 텍스트 필드로 보여줌 */
}
</style>
    <style>
      * {
        font-family: Consolas, sans-serif;
      }
    </style>
  </head>
  <body>
  <div align="center">
    <h1>사원정보삭제</h1>
    
    	<form action="delete.do" method="post">
		<p>
			이름: <br/><input type="text" name="name" value="${delReq.name}">
			
		</p>
		<p>
			사원번호: <br/>
				<input type="number" name="user_code" value="${delReq.user_code}">		</p>
		<input type="submit" value="사원 정보 삭제">
		
	</form>
	</div>
  </body>
</html>