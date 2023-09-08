<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

@import url('https://webfontworld.github.io/sunn/SUIT.css');

html, body, pre, h1, h2, h3, h4, h5, h6, dl, dt, dd, ul, li, ol, th, td, p, blockquote, form, fieldset, legend, menu, nav, section, hgroup, article, header, aside, footer, input, select, textarea, button {
    margin: 0;
    padding: 0;
    list-style:none;
    font-family: 'SUIT';
}

.footer {
	width: 100%;
    min-width: 1048px;
    height: 200px;
    border-top: 1px solid #eee;
    margin-top: 397pxpx; 
    background-color: #f8f8f8;
    display: inline-block;
} 

.footer-wrap {
	    display: flex;
    width: 1600px;
    margin: 0 auto;
    height: 200px;
}

.footerLeft {
	width: 16%;
    margin-top: 54px;
}

.footerLeft > img {
	width: 160px;
	padding-top: 15px;
margin-left: 35px;
}

.footerRight {
	width: 84%;
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
}


</style>

</head>


<footer id="footer" class="footer">
	
	<div class="footer-wrap">
			
			<div class="footerLeft">
				<img src="../resources/img/logo_ERP.png">
			</div>
			
			<div class="footerRight" style="margin-top: 36px;">
				
				<div class="footer_Rtop">
					<ul class="footer_Rul">
						<li>이용약관</li>
						<li>개인정보처리방침</li>
						<li>이메일무단수집거부</li>
					</ul>
					<div class="footer_family">
						<select class="fm_select" onchange="if(this.selectedIndex) { this.blur(); window.open(options[selectedIndex].value); }" >
							<option value="" selected="selected">      FAMILY SITE</option>
							<option value="https://github.com/Noa-AA/tree/dept">남향희 Git</option>
							<option value="https://github.com/Noa-AA/tree/payment">손현식 Git</option>
							<option value="https://github.com/Noa-AA/tree/user">오지성 Git</option>
							<option value="https://github.com/Noa-AA/tree/approval">정지원 Git</option>
							<option value="https://github.com/Noa-AA/tree/admin">조우진 Git</option>
						</select>
					</div>
				</div>
				
				<div class="footer_Rbottom">
					<ul class="footer_Rbottom_Text">
						<li class="footer_brand_text">(주)Team2 HR ERP PROJECT</li>
						<li class="footer_brand_text">남향희 · 손현식 · 오지성 · 정지원 · 조우진</li>
					</ul>
					<ul class="footer_Rbottom_bottom">
						<li>COPYRIGHT©Team2.ALL RIGHTS RESERVED</li>
					</ul>
				</div>
			</div>
			

			
	</div>	<!-- footer-wrap -->	
	
</footer>


</html>






