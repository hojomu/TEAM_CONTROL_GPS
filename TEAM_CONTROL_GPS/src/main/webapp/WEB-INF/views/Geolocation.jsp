<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form class="locationform"  method="post">
 사용자 이름:<input type="text" id="name"> 
 핸드폰 번호:<input type="text" id="phone"> 
 
 <button type="button" id="btnStart"> 확인 </button>
 
        위도:<span id="x"></span>
        경도:<span id="y"></span>
        
</form> 
    
 <input id="btnStop" type="button" value="감시를 끝낸다" />
    
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="/resources/js/Geolocation.js"></script>
</body>
</html>