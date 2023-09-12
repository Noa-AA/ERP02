<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원정보 삭제</title>
</head>
<body>
	<form action="delete.do" method="post">
		<p>
			이름: <br/>${delReq.adminName}
		</p>
		<p>
			제목: <br/><input type="text" name="title" value="${delReq.title}">
			${delReq.adminNumber}
			
		</p>
		<p>
			내용: <br/>
			<textarea name="content" rows="5" cols="30">${delReq.content}</textarea>
		</p>
		<input type="submit" value="글 삭제">
	</form>
</body>
</html>