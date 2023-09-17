<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="user.model.User"%>
<%@page import="user.dao.UserDao"%>
<%@page import="user.model.Work"%>
<%
User user = new User();
request.setAttribute("user", user);
Work work = new Work();
request.setAttribute("work", work);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userMypage</title>
<style type="text/css">
/* 전체화면 */
#full {
	width: 1000px;
	height: 1000px;
	margin: auto;
	background-color: #A9E2F3;
}
/* 헤더부분 */
.header {
	background-color: #2E64FE;
	width: 1000px;
	height: 160px;
	margin: auto;
	position: static;
}
/* 사원정보 마이페이지 부분 */
.mypage {
	background-color: #58D3F7;
	width: 250px;
	height: 500px;
	position: absolute;
	top: 168px;
	text-align: left;
}

#work_banner {
	width: 750px;
	height: 50px;
	top: 500px;
	float: right;
	background-color: #D8D8D8;
}

.container>img {
	height: 50;
	width: 50;
	border-radius: 20px;
	float: left;

}

#work_info {
	width: 750px;
	height: 200px;
	top: 820px;
	float: right;
	border-radius: 20px;
	line-height: 100px;
	text-align: center;
	background-color: #BDBDBD;
}

.circle1 {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	background-color: #2E9AFE;
	top: 900px;
	float: left;
}

.circle2 {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	background-color: #FA5858;
	top: 900px;
	float: left;
}

.circle3 {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	background-color: #F3F781;
	top: 900px;
	float: left;
	height: 150px;
}

.circle4 {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	background-color: #58FAF4;
	top: 900px;
	float: left;
	height: 150px;
}

.circle5 {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	background-color: #31B404;
	top: 900px;
	float: left;
	height: 150px;
}

#pay_banner {
	width: 750px;
	height: 50px;
	top: 500px;
	float: right;
	background-color: #D8D8D8;
}

#pay_info {
	width: 750px;
	height: 200px;
	top: 820px;
	float: right;
	border-radius: 20px;
	line-height: 100px;
	text-align: center;
	background-color: #BDBDBD;
}

.area1 {
	width: 200px;
	height: 200px;
	border-radius: 50%;
	background-color: #819FF7;
	top: 900px;
	float: left;
}

.area2 {
	width: 200px;
	height: 200px;
	border-radius: 50%;
	background-color: #819FF7;
	top: 900px;
	float: left;
}

.area3 {
	width: 200px;
	height: 200px;
	border-radius: 50%;
	background-color: #819FF7;
	top: 900px;
	float: left;
}


</style>
</head>
<body>
	<div id="full" align="center">
		<div class="header">
			<form action="logout.do" method="post">
				<div align="right">
					<button type="submit" id="userLogout">ログアウト</button>
				</div>
			</form>
			<form action="<!--메인페이지 주소자리 --" method="post">
				<div align="right">
					<button type="submit" id="goHome">ホーム</button>
				</div>
			</form>
			<label>Logo</label>
			<div class="mypage">
				<div align="center">
					<label><b>マイページ</b></label><br /> <br /> <img height="90"
						width="90" src="./images/profileIcon.png"><br />
				</div>
				<br /> <label><b>社員情報</b></label>
				<hr>
				<label>氏名</label><br />
				<%=user.getName()%>
				<hr>
				<label>メールアドレス</label><br />
				<%=user.getMail()%>
				<hr>
				<label>社員コード</label><br />
				<%=user.getUserCode()%>
				<hr>
				<label>部署・職級</label><br />
				<%=user.getDeptNo()%><%="/ "%><%=user.getRank()%>
				<hr>
				<label>電話番号</label><br />
				<%=user.getTel()%>
				<hr>
			</div>
			<!-- 여기까지mypge 태그부분 -->
		</div>
		<div id="work_banner">
			<div class="container > img">
				<img height="50" width="50" src="./images/calendarIcon.jpg">&nbsp;&nbsp;<label>通勤情報</label>
			</div>
		</div>
		<div id="work_info">
			<div class="circle1">
				出勤&nbsp;
				<%=work.getWork()%>
			</div>
			<div class="circle2">
				欠勤&nbsp;<%=work.getAbsncWork()%></div>
			<div class="circle3">
				遅刻&nbsp;<%=work.getLate()%></div>
			<div class="circle4">
				年次&nbsp;<%=work.getAnnualLeave()%></div>
			<div class="circle5">
				夜勤&nbsp;<%=work.getNightShitf()%></div>
		</div>
		<!-- 여기까지 출근정보 부분  -->
		<div id="pay_banner">
			<div class="container > img">
				<img height="50" width="50" src="./images/payIcon.png">&nbsp;&nbsp;<label>給料情報</label>
			</div>
		</div>
		<div id="pay_info">
			<div class="area1">
				月給
				<form action="<!-- 월급계산페이지 주소 -->" method="post">
					<button type="submit" id="goPayCheck">照会</button>
				</form>
			</div>
			<div class="area2">
				交通費
				<form action="<!-- 교통비계산페이지 주소 -->" method="post">
					<button type="submit" id="goPayCheck">照会</button>
				</form>
			</div>

			<div class="area3">退職金
			<form action="<!-- 퇴직금계산페이지 주소 -->" method="post">
					<button type="submit" id="goPayCheck">照会</button>
				</form>
			</div>
		</div><!-- 여기까지 급여정보 부분 -->
	</div>
</body>
</html>