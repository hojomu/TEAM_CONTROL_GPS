<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
		#contentsWrap {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: center;
			height: 100vh;
		}

		@media only screen and (min-width: 768px) {
			#contentsWrap {
				flex-direction: row;
			}
			#contentsWrap > div {
				width: 50%;
				height: 400px;
			}
		}

		@media only screen and (max-width: 767px) {
			#contentsWrap > div {
				width: 100%;
				height: 50%;
			}
		}
		
		#listWrap{
			display: flex;
	        flex-direction: column;
	        justify-content: center;
	        align-items: center;
		}
		
		#searchBox{
			display: flex;
	        justify-content: center;
	        align-items: center;
		}
		
		#customerList{
			flex: 1;
        	background-color: violet;
        	height:100%;
		}
		
		
</style>

</head>
<body>

	<div id="contentsWrap">
		<div id="listWrap" style="background-color:red;width:400px;height:400px;">
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
		<div id="map" style="width:500px;height:400px;"></div>
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
