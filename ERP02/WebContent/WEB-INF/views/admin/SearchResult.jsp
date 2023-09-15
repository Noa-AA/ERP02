<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>사원관리리스트</h2>

	<table cellspacing="5">
		<!-- 셀 상하간격조정 -->

		<tr>

			<td><div class="search">
					<input type="text" placeholder="이름">
					<!-- 검색 기능입력칸	 -->
				</div></td>

			<style>
.search {
	position: relative; /* 일반적인 문서 흐름으로 배치,상대적 위치조정가능 */
	width: 300px; /* 너비 300픽셀 */
}

input {
	width: 100%; /* 너비를 부모요소의 가로폭에 대해 전체너비로 설정 */
	border: 1px solid #bbb; /* 입력요소 주위에 테두리 생성 두께는 1픽셀 */
	border-radius: 8px; /* 입력요소의 테두리 모서리를 둥글게 처리하기 위한 반지름 값을 지정 */
	padding: 10px 12px; /* 내용과 테두리 사이에 여백생성 상하여백은 각각10픽셀 좌우여백 각각12픽셀*/
	font-size: 14px; /* 입력 요소 안에서 사용되는 글꼴 크기를 지정 */
}

img {
	position: absolute;
	/* 요소를 문서흐름에서 제거하고 부모요소나 다른 위치 지정된 요소를 기준으로 위치를 설정 */
	width: 17px; /* 이미지 너비 17픽셀 */
	top: 10px; /* 이미지 상단 여백을 부모요소부터 10픽셀 떨어진 위치로 설정 */
	right: 12px; /* 이미지 우측 여백을 부모요소로부터 12픽셀 떨어진 위치로 설정 */
	margin: 0; /* 이미지 주위에 여백을 없애기 위해 모든 방향으로 마진 값0설정 */
}
</style>
		</tr>


		<table cellspacing="5">
			<!-- 셀 상하간격조정 -->
			<tr>
				<td>
					<div class="icon">
						<!-- 클래스가 icon인 <div>요소를 정의합니다 -->
						<div class="search">
							<!-- 위에 설명한 동일한 기능 -->
							<i class="fas fa-search"></i>
							<!-- Font Awesome아이콘 라이브러리 에서 fa-search을 나타냅니다. -->
							<div class="search">
								<!-- 이것도 1번,2번과 동일 -->
								<input type="text" placeholder="사원번호"> <img
									src="/img/icon.jpg">
								<!-- 이미지 요소를 생성 파일 경로를 지정하여 해당 이미지를 로드 -->
							</div>

							<style>
.search {
	position: relative;
	width: 300px;
}

input {
	width: 100%;
	border: 1px solid #bbb;
	border-radius: 8px;
	padding: 10px 12px;
	font-size: 14px;
}

img {
	position: absolute;
	width: 17px;
	top: 10px;
	right: 12px;
	margin: 0;
}
</style>



							<div class="icon">
								<div class="search">
									<i class="fas fa-search"></i>
								</div>
				</td>
			</tr>
			</div>

			</div>
			</div>





			<div align="center">
				<!-- 가운데 정렬 -->



				<tr>
					<td><img src="/img/149852.png" alt="view Icon"
						class="view-icon" onclick="performSearch()"> <!-- 홈 버튼 --></td>
				</tr>
				<tr>
					<td><img src="/img/149852.png" alt="view Icon"
						class="view-icon" onclick="performSearch()"> <!-- 수정버튼  -->
						&nbsp; &nbsp; &nbsp;</td>
				</tr>
				<tr>
					<td><img src="/img/149852.png" alt="view Icon"
						class="view-icon" onclick="performSearch()"> <!-- 삭제버튼 --></td>
				</tr>

				<style type="text/css"> /* type속성은 text/css*/
.tg {
	border-collapse: collapse; /* 테이블 셀 사이의 경계를 병합해서 단일 경계로 보여줌*/
	border-spacing: 0; /* 테이블 셀간격 */
}

.tg td { /* 본문 설정 */
	border-color: black; /* 색 */
	border-style: solid; /* 스타일 */
	border-width: 1px; /* 테두리 두께 */
	font-family: Arial, sans-serif; /* 글꼴 */
	font-size: 14px; /* 텍스트크기 */
	overflow: hidden; /* 요소의 내용이 넘치면 초과분은 숨긴다 */
	padding: 25px 25px; /* 안쪽 여백값 */
	word-break: normal; /* 줄바꿈 기본값(단어를 자르지않고 한줄에 표시) */
}

.tg th { /* 머리글셀 설정 */
	border-color: black; /* 색 */
	border-style: solid; /* 스타일 */
	border-width: 2px; /* 테두리 두께 */
	font-family: Arial, sans-serif; /* 글꼴 */
	font-size: 14px; /* 텍스트 굵기 */
	font-weight: normal; /* 텍스트크기 */
	overflow: hidden; /* 요소의 내용이 넘치면 초과분은 숨긴다 */
	padding: 25px 25px; /* 안쪽 여백값 */
	word-break: normal; /* 줄바꿈 기본값(단어를 자르지않고 한줄에 표시) */
}

.tg .tg-0lax {
	text-align: left; /* 가로 정렬을 왼쪽설정  */
	vertical-align: top /* 줄 상자 내에서 위쪽 정렬  */
}
</style>
				<table class="tg">
					<!-- 클래스 tg-->
					<thead>
						<tr>
							<th class="tg-0lax">이름</th>
							<!-- 머리글 셀 (클래스이름은 "tg-0lax")-->
							<th class="tg-0lax">전화번호</th>
							<th class="tg-0lax">생년월일</th>
							<th class="tg-0lax">사원번호</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<!-- 테이블 본문 -->
							<td class="tg-0lax"></td>
							<td class="tg-0lax"></td>
							<td class="tg-0lax"></td>
							<td class="tg-0lax"></td>
						</tr>
					</tbody>
				</table>
			</div>
</body>
</html>