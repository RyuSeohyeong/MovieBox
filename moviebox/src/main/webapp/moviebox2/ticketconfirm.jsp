<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
       isELIgnored="false"
      %>
      
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% request.setCharacterEncoding("utf-8"); %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"	 />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&family=Nanum+Pen+Script&family=Open+Sans:ital,wght@1,800&display=swap');

body{
background-color:black;
font-family: 'Open Sans', sans-serif;}
    .logo {
    margin-top:180px;
font-size:40px;
text-align:center;
color:white;
}
.reservationInfo{
color:white;}

tr td{
padding-top:10px;
padding-botton:20px;
padding:left:30px;
padding-right:40px;}
.mainHome{
text-align:center;}

</style>
<head>
<meta charset="UTF-8">
<title>MOVIE BOX</title>
</head>
<body>
<p class="logo"><b>MOVIE BOX</b></p>
<br><br>

<h2 class="reservationInfo" align="center">예매 정보</h2>
<hr>
	<table class="table-light" border="1" align="center" >
	
		<tr class="table-light" align="center" bgcolor="lightgreen">
		
			<td class="table-light" width="7%" align="center"><b>영화 발급 번호</b></td>
			<td class="table-light" width="7%">${reservation.resid}</td>
		</tr>
		
		<tr>
			<td class="table-light" width="7%" align="center" ><b>좌석</b></td>
		    <td class="table-light" width="7%">${reservation.seat}</td>
		</tr>
		

		<tr>
			<td class="table-light" width="7%" align="center" ><b>영화 제목</b> </td>
	     	<td class="table-light" width="7%">${reservation.moviename}</td>
		</tr>
		
		<tr >
			<td class="table-light" width="7%" align="center"><b>영화 등록 번호</b></td>
			<td class="table-light" width="7%"> ${reservation.movieid}</td>
		</tr>
</table>
<hr>
<div class="mainHome">
	<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/moviebox/mainForm.do'" >홈으로 돌아가기</button><hr>
	</div>
</body>
</html>