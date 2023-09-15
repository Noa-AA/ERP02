<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!doctype html>
<html lang="UTF-8">
  <head>
    <meta charset="utf-8">
    <title>Child</title>
    <style>
      * {
        font-family: Consolas, sans-serif;
      }
    </style>
  </head>
  <body>
    <h1>사원정보수정</h1>
    <form action="modify.do" method="post">
		<p>
			이름: <br/><input type="text" name="title" value="${modReq.title}">
			
			<c:if test="${errors.title}">제목을 입력하세요.</c:if>
		</p>
		<p>
			전화번호: <br/><textarea name="content" rows="5" cols="10">${modReq.content}
			
			</textarea>
		</p>
		<p>
			생년월일: <br/><textarea name="content" rows="5" cols="10">${modReq.content}
			
			</textarea>
		</p>
		<p>
			사원번호: <br/><textarea name="content" rows="5" cols="10">${modReq.content}
			
			</textarea>
		</p>
		<input type="submit" value="사원정보수정">
	</form>
  </body>
</html>