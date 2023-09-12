<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">

@import url('https://webfontworld.github.io/sunn/SUIT.css');

html, body, pre, h1, h2, h3, h4, h5, h6, dl, dt, dd, ul, li, ol, th, td, p, blockquote, form, fieldset, legend, menu, nav, section, hgroup, article, header, aside, footer, input, select, textarea, button {
    margin: 0;
    padding: 0;
    list-style:none;
    font-family: 'SUIT';
}

a {
    color: #000;
    text-decoration: none;
    text-decoration-line: none;
}

a:focus, a:hover {
    text-decoration: none;
    outline: none;
}

#mainNav{
	width: 100%;
	height: 50px;
	background-color: yellow;
	position: fixed;
}

#logo {
	width: 71px;
    margin-left: 10px;
    padding-top: 7px;
}

#MyPage {
	width: 71px;
    padding-top: 12px;
    text-decoration: none;
    font-weight: 500;
    float: right;
    
    
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

.footer {
    width: 100%;
    min-width: 1048px;
	height: 200px;
 	border-top: 1px solid #eee; 
	margin-left: 170px;
	background-color: #f8f8f8;
	display: -webkit-inline-box;
} 

.footer-wrap {
	display: flex;
	width: 100%;
	margin: 0 auto;
	height: 200px;
	
}

.footerLeft {
	width: 16%;
    padding-top: 63px;
}

.footerLeft > img {
	width: 164px;
    margin-left: 104px;
}

.footerRight {
	width: 67%;
	padding-top: 35px;
	margin-left: 69px;
}

.footer_Rtop {
	display: flex;
	padding-bottom: 12px;
    margin-bottom: 22px;
    border-bottom: 1px solid #dddddd;
    justify-content: space-between;
}

.footer_Rul {
	display: flex;
	padding-top: 20px;
}

.footer_Rul > li {
	position: relative;
    padding-right: 21px;
    margin-right: 20px;
    font-size: 15px;
    color: #666;
}

.footer_Rul > li:hover {
	cursor: pointer;
}

.footer_Rul > li:nth-child(2) {
	color: #333;
	font-weight: 700;
}

.footer_Rul > li:not(:last-child)::after {
    content: "";
    position: absolute;
    top: 50%;
    right: 0;
    width: 1px;
    height: 10px;
    background-color: #bbb;
    transform: translateY(-50%);
}



.footer_Rbottom_Text {
	display: flex;
	margin-bottom: 10px;
}

.footer_brand_text:not(:last-child) {
    position: relative;
    padding-right: 15px;
    margin-right: 14px;
    font-weight: 600;
    color: #333;
}

.footer_brand_text:not(:last-child)::after {
    content: "";
    position: absolute;
    top: 50%;
    right: 0;
    width: 1px;
    height: 10px;
    background-color: #bbb;
    transform: translateY(-50%);
}

.footer_brand_text:last-child {
    font-weight: 600;
}

.footer_Rbottom_bottom {
	color: #aaa;
}

.fm_select {
	width: 180px;
	height: 40px;
	padding: 0 14px 0;
	background-color: #f8f8f8;
	-webkit-appearance: none; 
    -moz-appearance: none;
    color: #888;
    border: 1px solid #ccc;
    background: url(/resources/img/footer_more.png) no-repeat 94% 50%;
}

</style>


<link rel="icon" href="../resources/img/favicon.png" >


<title>Team2_ERP</title>
</head>
<body></body>

	<div id="mainNav">
		<img alt="logo" src="../resources/img/logo.png" id="logo">
		<a href="#" id="MyPage">MyPage</a>
	
	</div>
	
	<div id="menu">
	
		<img alt="profile" src="../resources/img/profile.png" id="profile">
		
		<p id="p_name">Hong SaramIn</p>
		<p id="p_dept">소속부서 / 소속 팀</p>
		
		<hr style="width: 141px; margin-top: 50px; height: 10px; border-style: none; background-color: yellow;">
	
	</div>


</body>
</html>