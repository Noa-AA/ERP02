<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>


<!DOCTYPE html>
<html>
<head>

<style type="text/css">

#nnn{
	width: 100%; 
	height: 100px; 
	background-color: blue; 
	padding-top: 64px;
	margin-left: 170px;
}

#workInfo{
	width: 100%;
	height: 350px;
	margin-left: 170px;
	background-color: lightgreen;
	display: -webkit-inline-box;
}

#box1{
	height: 230px;
	width: 300px;
	background-color: red;
	margin-left: 30px;
    margin-top: 60px;
    border-radius: 12px;
}

#box2{
	height: 230px;
	width: 300px;
	background-color: yellow;
	margin-left: 30px;
    margin-top: 60px;
    border-radius: 12px;
}

#box3{
	height: 230px;
	width: 300px;
	background-color: white;
	margin-left: 30px;
    margin-top: 60px;
    border-radius: 12px;
}

#noticeInfo{
	width: 100%;
	height: 350px;
	margin-left: 170px;
	background-color: lightgreen;
	display: -webkit-inline-box;
}

#notice_ttl{
	width: 100%;
	height: 40px;
	margin-left: 170px;
	background-color: pink;
}

#notice_box{
	height: 230px;
	width: 300px;
	background-color: white;
	margin-left: 30px;
    margin-top: 60px;
    border-radius: 12px;
}



</style>

<link rel="icon" href="../resources/img/favicon.png" >

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<div id="nnn">
			<br><br>
			<span style="font-size: 23px; font-weight: bold;">>> 출결 정보</span>
		
		</div>
	
	<div id="workInfo">
		
		<div id="box1">
			
		</div>
		
		<div id="box2">
			
		</div>
		
		<div id="box3">
			
		</div>
		
	</div>
	
	<div id="notice_ttl">
		<span style="font-size: 23px; font-weight: bold;">>>공지사항</span>
	</div>
	
	<div id="noticeInfo">
	
		<div id="notice_box"></div>
	
	</div>
	
	

</body>
</html>


<%@ include file="/WEB-INF/views/layout/footer.jsp" %>














