<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
		ul, li {
		  margin: 0;
		  padding: 0;
		  list-style: none;
		}
		
		header {
			display: flex;
			justify-content: space-between;
			align-items: center;
			width: 1200px;
			height: 80px;
			background-color: #eaf4f3;
			margin: 0 auto;
			padding: 0 10px;
		}
		
		#contentsWrap {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: calc(100vh - 120px);
  			width:100%;
			border: 1px solid #ccc;
  			border-radius: 10px;
  			padding:10px;
  			margin: 0 auto;
		}

		@media only screen and (min-width: 768px) {
			#contentsWrap {
				flex-direction: row;
				width:1200px;
				height:800px;
			}
			#contentsWrap > div {
				width: 50%;
				height: 100%;
			}
		}

		@media only screen and (max-width: 767px) {
			header {
				width: 100%;
			}
		
			#contentsWrap {
				width: 100%;
				height: 100vh;
			}
			
			#contentsWrap > div {
				width: 100%;
				height: 50%;
			}
			
			#customerList {
				border-bottom: 1px solid #ccc;
			}
		}
		
		#listWrap{
			display: flex;
	        flex-direction: column;
	        justify-content: center;
	        align-items: center;
	        width:40%;
	        height:100%;
		}
		
		#searchBox{
			display: flex;
	        justify-content: center;
	        align-items: center;
	        width:100%;
	        padding:10px 5px;
	        border-bottom: 1px solid #ccc;
		}
		
		#customerList{
			flex: 1;
        	height:100%;
        	width:100%;
        	overflow-y: auto;
        	padding:10px 5px;
		}
		
		#mapWrap{
			width:60%;
			height:100%;
			padding:15px;
		}
		
</style>

</head>
<body>
	<header>
		<div id="logoBox">로고</div>
		<div id="accountBox">계정 관련</div>
	</header>

	<div id="contentsWrap">
		<div id="listWrap">
			<div id="searchBox">
				<input type="text">
				<button type="button">검색하기</button>
			</div>
			<div id="customerList">
				<ul>
					<li>고객 이름</li>
					<li>고객 이름</li>
					<li>고객 이름</li>
					<li>고객 이름</li>
				</ul>
			</div>
		</div>
		
		<div id="mapWrap">
			<div id="map" style="width:100%;height:100%;"></div>
		</div>
	</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaoMapApiKey}"></script>
<script>
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(35.6253696, 129.3320192), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
 
</script>

</body>
</html>
