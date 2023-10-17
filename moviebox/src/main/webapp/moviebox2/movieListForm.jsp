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
.check{
padding-top:100px;
padding-left:550px;
}
.check2{
text-align:center;}

.col-auto {
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

<form name="ticketconfirm" method="get" action="${contextPath}/moviebox/ticketconfirm_2.do">	


<!-- 
<div class="input-group mb-3">
  <input type="text" name="resid" class="form-control" placeholder="예매한 발급 번호를 입력하세요." aria-label="Recipient's username" aria-describedby="button-addon2" style="width:100pt;height:30pt;">
	<input type="submit" value="조회" style="background-color:white; height:45px;">-->


<!--    <button class="btn btn-outline-light" type="button" id="button-addon2"  >조회</button>-->
</div>



<div class="check">
    <input type="text" class="form-control" name="resid" id="inputPassword2" placeholder="예매한 발급 번호를 입력하세요." style="width:450px;">
  </div>
  <hr>
  <div class="check2">
    <button type="submit" class="btn btn-outline-light">조회</button>
  </div>
  



	



		
		
		
		<br><br>
		 
	
</form>

<div class="mainHome">
	<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/moviebox/mainForm.do'" >홈으로 돌아가기</button><hr>
	
	</div>



</body>
</html>