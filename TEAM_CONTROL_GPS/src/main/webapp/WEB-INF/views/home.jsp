<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	<!-- css -->
	<link rel="stylesheet" href="/resources/css/home.css">
</head>
<body>

    <div class="main_button">
        <button type="button" onclick="location.href='Geolocation'" value="환자용">환자용</button>
        <button type="button" onclick="location.href='locationManagement'" value="병원용">병원용</button>
    </div>
    
    <!-- <a href="/a">a 이동</a> -->
    <!-- <a href="/member">member 이동</a> -->

    <!-- <form method="POST" action="/insert">
        <label for="name">이름</label>
        <input type="text" name="name" id="name">
        <button type="submit">제출</button>
    </form> -->

</body>
</html>
