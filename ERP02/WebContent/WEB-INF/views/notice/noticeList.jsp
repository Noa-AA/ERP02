<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="../resources/img/title_logo.png" rel="shortcut icon" type="image/x-icon" id="title_logo">
<title>Team2_ERP</title>

<style type="text/css">

body{margin: 0; padding: 0;}

#nav1{
	height: 60px;
	width: 100%;
	background-color: lightblue;
	position: fixed;
}

#logo{
	margin-top: 8px;
    width: 87px;
    height: 42px;
    margin-left: 10px;
}

#signIn{
	text-decoration: none;
	float: right;
	margin-top: 17px;
	margin-right: 10px;
}

#menu{
	width: 160px;
	background-color: #0051eb;
	height: 100vh;
	float: left;
    position: fixed;
    margin-top: 60px;
}

ul {
	list-style-type: none;
	padding: 0;
	margin:  0;
	padding-top: 10px;
}

li a {
	text-decoration: none;
	display: block;
	color: white;
	padding: 8px 15px 8px 15px;
	font-weight: bold;
}

hr {
	width: 130px;
    height: 1px;
    background-color: white; 
    border: 0;
}

#work{
	width: 100%;
	/* background-color: lightpink; */
	height: 250px;
	display: block;
    margin-left: 160px;
}

#work1 {
	width: 350px;
    height: 210px;
	background-color: #f0f3f0;
	margin-left: 210px;
	margin-right: 130px;
    border-radius: 6px;
    display: inline-block;
     box-shadow: 0px 5px 10px 5px lightgrey;
}
#work2 {
	width: 350px;
    height: 210px;
	background-color: #f0f3f0;
	    margin-right: 130px;
    border-radius: 6px;
    display: inline-block;
     box-shadow: 0px 5px 10px 5px lightgrey;
}
#work3 {
	width: 350px;
    height: 210px;
	background-color: #f0f3f0;
	margin-right: 210px;
    border-radius: 6px;
    display: inline-block;
     box-shadow: 0px 5px 10px 5px lightgrey;
}

#work_title {
	margin-left: 55px;
    font-size: 32px;
    font-weight: 700;
}

 #notice_title{
	margin-left: 55px;
    font-size: 32px;
    font-weight: 700;
}

#notice{
	width: 100%;
	/*background-color: salmon; */
	height: 250px;
	display: block;
    margin-left: 160px;
}

#content{
	width: 1323px;
    height: 550px;
    background-color: #f0f3f0;
    margin-left: 210px;
    border-radius: 6px;
    display: inline-block;
    box-shadow: 0px 5px 10px 5px lightgrey;
}

#profile{
	width: 87px;
    height: 82px;
    margin-left: 34px;
    margin-top: 60px;
    margin-bottom: 25px;
}

#empname {
	font-size: 20px;
	font-weight: bold;;
	text-align: center;
	margin-bottom: 5px;
	color: white;
}

#empInfo {
	font-size: 15px;
	text-align: center;
	margin-bottom: 60px;
	font-weight: 500;
	color: white;
	
}

#icon{
	color: white;
	height: 20px;
	width: 20px;
}


</style>


</head>
<body>

<div id="nav1">
	<img src="../resources/img/logo_ERP.png" id="logo">
	<a id="signIn">sign in</a>
</div>

<div id="menu">
<br>
	<ul>
		<li>
			<img src="../resources/img/profile.png" id="profile">
		</li>
		<li id="empname">사원이름</li>
		<li id="empInfo">소속부서 / 소속팀</li>
		<hr>
		<li>
		<!-- <img src="../resources/img/home.png" id="icon"> -->
			<a href="#">홈</a>
		</li>
		<li><a href="#">인사</a></li>
		<li><a href="#">전자결재</a></li>
		<li><a href="#">월급관리</a></li>
		<li><a href="#">부서관리</a></li>
	</ul>
	
</div>

<div style="height: 1200px">

<div style="height: 70px;">
</div>

<div id="work">
	
	<br><br><br><span id="work_title">근태관리</span><br><br><br><br><br>
	
	<div id="work1"></div>
	<div id="work2"></div>
	<div id="work3"></div>

	
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<div id="notice">
	<br><br><span id="notice_title">공지사항</span><br><br><br><br><br>

	<div id="content"></div>

</div>

</div>

<br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>



</body>
</html>





<%@ include file="../layout/footer2.jsp"%>


