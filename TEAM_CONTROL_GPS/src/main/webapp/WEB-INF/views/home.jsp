<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<a href="/Geolocation">사용자위치 확인용</a>
<a href="/kakaoMapEx">카카오맵 확인용</a>
<a href="/locationManagement">locationManagement 이동</a>
<a href="/a">a 이동</a>
<a href="/member">member 이동</a>

</body>
</html>
