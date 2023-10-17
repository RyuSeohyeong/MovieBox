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

th, td {
padding-top:10px;
padding-bottom:20px;
padding-left:30px;
padding-right:40px;
}
.mainHome{
text-align:center;}
</style>
<head>
<meta charset="UTF-8">
<title>MOVIE BOX</title>
</head>
<body>
<p class="logo"><b>MOVIE BOX</b></p>

<form name="adminFrm" method="get" action="${contextPath}/moviebox/deleteMovie_2.do">	
<br>
<br>
<br>
	<table class="table-light" align="center" border="1">
		<tr class="table-light" align="center" bgcolor="lightgreen">
			<td class="table-light" width="7%"><b>영화발급번호</b></td> 
			<td class="table-light" width="7%"><b>영화제목</b></td> 
			<td class="table-light" width="7%"><b>장르</b></td> 
				<td class="table-light" width="7%"><b>관리</b></td> 
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
			<c:forEach var="mv" items="${movieList}">
			<tr align="center">
				<td>${mv.id}</td>
				<td>${mv.title}</td>
				<td>${mv.genre}</td>
			 <td><button type="submit" name="id" value="${mv.id}" class="btn btn-dark" style="text-decoration:none" onclick="location.href='${contextPath}/moviebox/deleteMovie.do'" >영화 삭제하기</button></td>
			
			</tr>
			</c:forEach>
		</c:when>
	</c:choose>
	</table>
	<hr>
</form>
<div class="mainHome">
	<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/moviebox/adminMovieList.do'" >관리자홈으로 돌아가기</button><hr>
	
	</div>
</body>
</html>