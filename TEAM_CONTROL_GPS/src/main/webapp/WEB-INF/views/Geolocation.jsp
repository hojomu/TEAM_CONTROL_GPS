<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
 사용자 위치 확인
 <div id="UserLocationInfo"></div>
 
   <ul>
        <li>위도:<span id="latitude"></span></li>
        <li>경도:<span id="longitude"></span></li>
    </ul>
    
 <input id="btnStop" type="button" value="감시를 끝낸다" />
    
<script src="http://code.jquery.com/jquery-1.11.0.js"></script>
<script src="/resources/js/Geolocation.js"></script>
</body>
</html>