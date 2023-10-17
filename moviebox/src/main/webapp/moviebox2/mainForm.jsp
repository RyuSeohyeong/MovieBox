<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    import="java.util.*,moviebox.*"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"	 />

<% request.setCharacterEncoding("utf-8"); %>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&family=Open+Sans:ital,wght@1,800&display=swap');

body{
background-color:black;
font-family: 'Open Sans', sans-serif;



}
.button{
 text-align: center;
 margin-top:70px;
    height: 500px;
    }
    .button2{
    padding:50px;
    display:inline-block;
    }
    
    .logo{
    margin-top:200px;
font-size:40px;
text-align:center;
color:white;
}
</style>
<head>
<c:choose>
<c:when test ='${msg=="" }'>
<script>
window.onload=function(){
	alert("영화 예매를 취소했습니다.");
}
</script>
</c:when>
<c:when test ='${msg=="cancel" }'>
<script>
window.onload=function(){
	alert("영화 예매를 취소했습니다.");
}
</script>
</c:when>
<c:when test ='${msg=="res" }'>
<script>
window.onload=function(){
	alert("영화가 예매되었습니다.");
}
</script>
</c:when>
</c:choose>
<meta charset="UTF-8">
<title>MOVIE BOX</title>
</head>
<body>
<p class="logo"><b>MOVIE BOX</b></p>
<%-- <form name ="mainFrm" method = "post"  action="${contextPath}/moviebox/mainForm.do" > 추가한 것 --%>
	<%--<a href="${contextPath}/moviebox/reservationform.do">영화 예매하기</a><br>
	<a href="${contextPath}/moviebox/ticketconfirm.do">예매 확인하기</a> <br>
	<a href="${contextPath}/moviebox/ticketcancle.do">예매 취소하기</a>--%>
	<%-- <a href="${contextPath}/moviebox/admin.do">관리자 메뉴</a> --%>
	<%--</form>--%>
	<div class="button"> <%-- 부모요소에 text-align:center;를 주고 --%>
	<div class="button2"><%-- 자식요소에 display:inline-block;을 주면 가운데 정렬됨 --%>
	<button type="button" class="btn btn-outline-light" onclick="location.href='${contextPath}/moviebox/reservationform.do'"  >영화 예매하기</button><hr>
	<button type="button" class="btn btn-outline-light" onclick="location.href='${contextPath}/moviebox/ticketconfirm.do'">영화 예매 확인하기</button><hr>
	<button type="button" class="btn btn-outline-light" onclick="location.href='${contextPath}/moviebox/ticketcancle.do'" >영화 예매 취소하기</button><hr>
	</div>
	</div>
</body>
</html>