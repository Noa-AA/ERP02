<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user login page</title>
</head>
<body>
	<div align="center">
		<h2>ログイン</h2>

		<form action="login.do" method="post">
			<img width="100" height="100" src="./images/loginIcon.jpg" /><br /><br />
			<tr>
				<td>アイディー <br /> <input type="text" name="empid"> <br />
					パスワード <br /> <input type="password" name="userPw"> <br />
					<br />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="submit" value="ログイン"> <br />
	</div>
	</form>
</body>
</html>