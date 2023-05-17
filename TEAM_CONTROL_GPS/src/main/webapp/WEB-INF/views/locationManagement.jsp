<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- css -->
	<link rel="stylesheet" href="/resources/css/locationManagement.css">

</head>
<body>
	<div id="hospital-check">
		<input id="hospital" name="hospital" type="text" placeholder="병원 정보를 입력하세요">
		<button id="hospital-check-btn" type="button">확인</button>
	</div>

	<header class="initial-disnone">
		<div id="logoBox">로고</div>
		<div id="accountBox">계정 관련</div>
	</header>

	<div class="initial-disnone">
		<div id="contentsWrap">
			<div id="listWrap">
				<div id="searchBox">
					<input type="text">
					<button type="button">검색하기</button>
				</div>
				<div id="customerList">
					<ul id="customerListUl">
					</ul>
				</div>
			</div>
			
			<div id="mapWrap">
				<div id="map" style="width: 100%;height: 100%;"></div>
			</div>
		</div>
	</div>
	
	
	<!-- 스크립트 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaoMapApiKey}"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="/resources/js/locationManagement.js" type="text/javascript"></script>

</body>
</html>
