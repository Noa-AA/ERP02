<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원가입</title>

<style>
input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}

input[type='number'] {
	-moz-appearance: textfield;
}
</style>

</head>
<body>

	
		<h2>회원가입(관리자)</h2>

		<form action="join.do" method="post">

			<p>
			이름:<br/><input type="text" name="id" value="${param.name}">
			<c:if test="${errors.name}">이름을 입력하세요</c:if>
			</p>
			
			<p>
			전화번호:<br/><input type="number" name="number" value="${param.number}">
			<c:if test="${errors.number}">전화번호를 입력하세요</c:if>
			<c:if test="${errors.duplicateNumber}">이미 사용중인 전화번호입니다</c:if>
			</p>
			
			<p>
			생년월일:<br/><input type="number" name="user_br" value="${param.user_br}">
			<c:if test="${errors.user_br}">생년월일을 입력하세요</c:if>
			</p>
			
			<p>
			사원번호:<br/><input type="number" name="user_code" value="${param.user_code}">
			<c:if test="${errors.user_code}">사원번호를 입력하세요</c:if>
			<c:if test="${errors.duplicateNumber}">이미 사용중인 전화번호입니다</c:if>
			<c:if test="${errors.notMatch}">일치하지 않는 사원번호입니다</c:if>
			
			</p>

			<!-- submit 버튼 -->
			<input type="submit" value="가입">

		</form>

	


</body>
</html>
