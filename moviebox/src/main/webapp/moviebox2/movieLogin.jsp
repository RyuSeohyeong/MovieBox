<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*, moviebox.*"
    pageEncoding="UTF-8" isELIgnored="false"%>
       <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
    request.setCharacterEncoding("utf-8");
    %>
      <c:set var="contextPath" value="${pageContext.request.contextPath }" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<style>
@import url('https://fonts.googleapis.com/css2?family=Caprasimo&family=Gowun+Dodum&family=Open+Sans:ital,wght@1,300;1,800&display=swap');

body{
background-color:black;

font-family: 'Open Sans', sans-serif;}
.logo{
font-size:40px;
text-align:center;
color:white;
}

</style>
<head>
<meta charset="UTF-8">
<title>MOVIE BOX</title>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<p class="logo"><b>MOVIE BOX</b></p>
<fieldset class="login">
<br>
<div class="mx-auto" style="width: 300px;">
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
</svg></span>
  <input type="text" class="form-control" placeholder="아이디를 입력하세요." aria-label="Username" aria-describedby="basic-addon1">
</div>
<br>
<div class="input-group mb-3">
  <span class="input-group-text" id="basic-addon1"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 16 16">
  <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
</svg></span>
  <input type="password" class="form-control" placeholder="비밀번호를 입력하세요." aria-label="Username" aria-describedby="basic-addon1">
</div>
<br>
<div class=loginbox>
<div class="loginbutton">
<button type="button" class="btn btn-dark" style="width: 300px;" onclick="location.href='${contextPath}/moviebox/mainForm.do'">로그인</button>
<hr>
<button type="button" class="btn btn-dark" style="width: 300px;" onclick="location.href='${contextPath}/moviebox/adminMovieList.do'">관리자로 로그인</button>

</div>
</div>
</div>

</fieldset>

</body>
</html>