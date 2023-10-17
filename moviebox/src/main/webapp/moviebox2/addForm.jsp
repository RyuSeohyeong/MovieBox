<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var = "contextPath" value="${pageContext.request.contextPath }" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
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
tr td{
padding-top:10px;
padding-botton:20px;
padding:left:30px;
padding-right:40px;}
.add{
text-align:center;
color:white;}
.addbtn{
text-align:center;
}

.mainHome{
text-align:center;
}
</style>
<head>
<meta charset="UTF-8">
<title>MOVIE BOX</title>
</head>
<body>
<p class="logo"><b>MOVIE BOX</b></p>
<br><br>
<h3 class="add">영화 등록 창</h3>
<br>
<form method="post" action="${contextPath }/moviebox/addMovie_2.do">
<table align="center">
<tr>
<td width="400"><input type="text" class="form-control" name="id" placeholder="영화 등록번호를 입력하십시오" ></td>
</tr>
<tr>
<td width="400"><input type="text" class="form-control" name="title" placeholder="영화 제목을 입력하세요" ></td>
</tr>
<tr>
<td width="400"><input type="text" class="form-control" name="genre" placeholder="장르를 입력하세요" ></td>
</tr>
</table>
<hr>
<div class="addbtn">
<button type="submit" class="btn btn-dark" onclick="location.href='${contextPath}/moviebox/addMovie_2.do'" >영화 등록하기</button>
</div>
</form>

	<div class="mainHome">
	<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/moviebox/adminMovieList.do'" >관리자홈으로 돌아가기</button><hr>
	
	</div>
</body>
</html>