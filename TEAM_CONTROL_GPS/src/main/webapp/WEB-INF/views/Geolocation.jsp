<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- css -->
	<link rel="stylesheet" href="/resources/css/geolocation.css">
</head>
<body>

<form class="locationform"  method="post">
        <p>이름<input type="text" id="name" placeholder="입력해주세요."></p>
        <p>핸드폰 번호<input type="text" id="phone" placeholder=" - 없이 입력해주세요." > </p>
 
        <button type="button" id="btnStart"> 확인 </button>
        <button id="btnStop" type="button" > end </button> 
        <!-- 
        위도:<span id="x"></span>
        경도:<span id="y"></span>
      -->
</form>  
    
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/resources/js/Geolocation.js"></script>
</body>
</html>