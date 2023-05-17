/**
 * 
 */
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(35.53942967185377, 129.33628189825467), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

markers = [];

//병원의 환자 정보(위치) 받아오기
function makeMarkers(hospital){
	// 마커 삭제
	for(let i = 0; i < markers.length; i++){
		markers[i].setMap(null);
	}
	
	// 병원 이름을 바탕으로 환자 정보를 불러오고, 환자 정보를 바탕으로 위치 데이터를 받아와야한다.
	$.getJSON("/getLocationData/"+hospital+".json",function(data){
		console.log(data);
		
		let imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
		let patientsPositions = [];
		
		// 받아온 데이터 for 문
		for(let i = 0; i < data.length; i++){
			// 마커 좌표 생성
			patientsPositions.push({
				title : data[i].name,
				latlng : new kakao.maps.LatLng(data[i].x,data[i].y)
			});
		}
		
		for(let i = 0; i < patientsPositions.length; i++){
			// 마커 이미지 크기 설정
			let imageSize = new kakao.maps.Size(24,35);
			// 마커 이미지 생성
			let markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
			
			// 마커 생성
			let marker = new kakao.maps.Marker({
				map: map,
				position: patientsPositions[i].latlng,
				title: patientsPositions[i].title,
				image: markerImage
			});
			markers.push(marker);
			
		}
		
	})
}

// 병원의 환자 정보(리스트) 받아오기
function getPatientInfo(hospital){
	// 병원 이름을 바탕으로 환자 정보를 불러오고, 환자 정보를 바탕으로 위치 데이터를 받아와야한다.
	$.getJSON("/getPatientsData/"+hospital+".json",function(data){
		console.log(data);
		
		let str = "";
		
		// 받아온 데이터 for 문
		for(let i = 0; i < data.length; i++){
			// 환자 리스트 생성
			str+="<li class='patientName'>"+data[i].name+"</li>"
		}
		
		$("#customerListUl").html(str);
		
	})
	
	intervalId = setInterval(function() {
		makeMarkers(hospital);
	}, 5000);
	
}

// 병원 정보 받아오기
function getHospitalInfo(hospital){ // props를 받을 것
	
	// 병원의 x, y 좌표를 얻어올 것.
	
	/* let newCenter = new kakao.maps.LatLng(lat, lng);
	 * map.setCenter() 병원의 좌표를 설정해서 맵의 중심을 변경해주자*/
	
	/*map은 모든 css가 변경되고 나서 호출되어야 정확한 크기를 나타낼 수 있다.
	위에서 disnone 같은 css의 변경이 끝났다면, 아래의 메소드로 다시 한번 map을 갱신해줘야한다.*/
	map.relayout();
	
	getPatientInfo(hospital); // 병원의 이름 넘겨주기
}

// 병원 정보 입력 버튼 클릭 시 환자 정보 나타내기 ( 임시 )
	const hospitalCheckBtn = document.getElementById('hospital-check-btn');
	
	hospitalCheckBtn.addEventListener('click',function(){
		let initDisnones = document.querySelectorAll('.initial-disnone');
		let hospitalCheckBox = document.querySelector('#hospital-check');
		let hospital = document.getElementById('hospital').value;
		
		for (let i = 0; i < initDisnones.length; i++){
			initDisnones[i].classList.remove('initial-disnone');
		}
		
		if (hospitalCheckBox){
			hospitalCheckBox.classList.add('disnone');
		}
		
			getHospitalInfo(hospital);// 병원에 대한 정보 입력 ex) 병원이름
		
	})
	
// 맵 랜더링

// 5 초마다 
	
	
var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	

	