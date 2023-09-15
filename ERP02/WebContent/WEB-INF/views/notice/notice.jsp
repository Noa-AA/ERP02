<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

body{margin: 0;}


#mainNav{
	width: 100%;
	height: 50px;
	background-color: yellow;
	position: fixed;
}

#menu {
	float: left;
	height: 100vh;
	width: 170px;
	background-color: gray;
	position: fixed;
	margin-top: 50px;
}

#profile {
	width: 110px;
    margin-top: 75px;
    margin-left: 28px;
	margin-bottom: 8px;
}

#p_name{
	text-align: center;
	font-weight: 900;
	margin-bottom: 10px;
	padding: 8px;
    margin: 0;
}

#p_dept{
	text-align: center;
	font-weight: 700;
	padding: 0;
    margin: 0;
}

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

<link rel="icon" href="../resources/img/header_logo.png" >

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="mainNav">
		
	
	</div>
	
	<div id="menu">
	
		<img alt="profile" src="../resources/img/profile.png" id="profile">
		
		<p id="p_name">Hong SaramIn</p>
		<p id="p_dept">소속부서 / 소속 팀</p>
		
		<hr style="width: 141px; margin-top: 50px; height: 10px; border-style: none; background-color: yellow;">
	
	</div>
	

	
	
	
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

















