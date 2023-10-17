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
margin-top:70px;
font-size:40px;
text-align:center;
color:white;
}

th, td {
padding-top:10px;
padding-bottom:20px;
padding-left:30px;
padding-right:40px;
}
.res{
color:white;
text-align:center;S}

.reservationbtn{
text-align:center;}

.mainHome{
text-align:center;}

</style>
<head>
<meta charset="UTF-8">
<title>MOVIE BOX</title>
</head>
<body>
<p class="logo"><b>MOVIE BOX</b></p>

<form name="reservFrm" method="get" action="${contextPath}/moviebox/reservation.do">	
<br>
<br>
<br>
	<table class="table-light" align="center" border="1">
		<tr class="table-light" align="center" bgcolor="lightgreen">
			<td class="table-light" width="7%"><b>영화등록번호</b></td> 
			<td class="table-light" width="7%"><b>영화제목</b></td> 
			<td class="table-light" width="7%"><b>장르</b></td> 
		</tr>
	<c:choose>
		<c:when test="${empty movieList}">
			<tr class="table-light"> 
				<td class="table-light" colspan=3 align="center">
				<b>등록된 영화가 없습니다.</b>
				</td>
			</tr>
		</c:when>
		
		<c:when test="${!empty movieList}">
			<c:forEach var="mov" items="${movieList}">
			<tr align="center">
				<td>${mov.id}</td>
				<td>${mov.title}</td>
				<td>${mov.genre}</td>
			</tr>
			</c:forEach>
		</c:when>
	</c:choose>
	</table>
	<br><br>
	<h3 class="res" >영화 예매 창</h3>
<br>

<table align="center">
<tr>

<td width="400"><input type="text" class="form-control" name="resid" placeholder="영화 발급번호를 입력하십시오" ></td>
</tr>
<tr>
<td width="400"><input type="text" class="form-control" name="seat" placeholder="좌석을 입력하세요 (예: A-1)" ></td>
</tr>

<tr>
<td width="400"><input type="text" class="form-control" name="moviename" placeholder="영화제목을 입력하세요" ></td>
</tr>

<tr>
<td width="400"><input type="text" class="form-control" name="movieid" placeholder="영화등록번호를 입력하세요" ></td>
</tr>

</table>
<hr>
<div class="reservationbtn">
<button type="submit" class="btn btn-dark" onclick="location.href='${contextPath}/moviebox/reservation.do'" >영화 예매하기</button>
</div>
</form>
<div class="mainHome">
	<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/moviebox/mainForm.do'" >홈으로 돌아가기</button><hr>
	
	</div>
</body>
</html>