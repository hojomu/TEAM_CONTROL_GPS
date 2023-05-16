<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

	<!-- member.css -->
	<link rel="stylesheet" href="/resources/css/member.css"></link>	
</head>
<body>
<dev class="container">
  <form action="/member" method="post" id="member">
	<div class="item">
	    <table class="table1">
	      <colgroup>
	        <col width="20%" />
	        <col width="35%" /> 
	      </colgroup>
	      <tr>
	        <td class="title1">성   명</td>
	        <td class="content1"><input type="text" name="name" id="name"></td>
	      </tr>
	      <tr>
	        <td class="title1">주민번호</td>
	        <td class="content1"><input type="text" name="personalNumber" id="personalNumber"></td>
	      </tr>
	      <tr>
	        <td class="title1">휴대폰번호</td>
	        <td class="content1"><input type="text" name="phone" id="phone"></td>
	      </tr>
	      <tr>
	        <td class="title1">휴대폰번호</td>
	        <td class="content1"><input type="text" name="locationData_phone" id="locationData_phone"></td>
	      </tr>
	      <tr>
	        <td class="title1">진단내용</td>
	        <td class="content1"><input type="text" name="disease" id="disease"></td>
	      </tr>
	      <tr>
	        <td class="title1">주소</td>
	        <td class="content1"><input type="text" name="adress" id="adress"></td>
	      </tr>
	      <tr>
	        <td class="title1">보호자성명</td>
	        <td class="content1"><input type="text" name="guardianName" id="guardianName"></td>
	      </tr>
	      <tr>
	        <td class="title1">보호자휴대폰</td>
	        <td class="content1"><input type="text" name="guardianPhone" id=guardianPhone></td>
	      </tr>
	      <tr>
	        <td class="title1">라즈베리파이</td>
	        <td class="content1"><input type="text" name="raspberry" id="raspberry"></td>
	      </tr>      
	    </table>
	    
	    <input type="hidden" name="inrollTime" id="inrollTime">
	    
	    <button type="submit">확인</button>
	    
	  </div>
  </form>
</dev>
</body>
</html>