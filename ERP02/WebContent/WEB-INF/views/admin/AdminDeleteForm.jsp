<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>������� ����</title>
</head>
<body>
	<form action="delete.do" method="post">
		<p>
			�̸�: <br/>${delReq.adminName}
		</p>
		<p>
			����: <br/><input type="text" name="title" value="${delReq.title}">
			${delReq.adminNumber}
			
		</p>
		<p>
			����: <br/>
			<textarea name="content" rows="5" cols="30">${delReq.content}</textarea>
		</p>
		<input type="submit" value="�� ����">
	</form>
</body>
</html>