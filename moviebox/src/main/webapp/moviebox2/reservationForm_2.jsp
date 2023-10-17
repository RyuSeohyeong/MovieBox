<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
       isELIgnored="false"
      %>
         
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var = "contextPath" value="${pageContext.request.contextPath }" />
<% request.setCharacterEncoding("utf-8");
 /* String id = request.getParameter("id");
 String title = request.getParameter("title");
 String genre = request.getParameter("genre"); */ %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"	 />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOVIE BOX</title>

<Style>

</Style>



</head>
<body>
<p class="logo"><b>MOVIE BOX</b></p>


<form name="reservFrm" method="get" action="${contextPath}/moviebox/completion.do">	

<p class="cls1">선택 영화 </p>
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
		 
	
</form>



<div class="mainHome">
	<button type="button" class="btn btn-dark" onclick="location.href='${contextPath}/moviebox/mainForm.do'" >홈으로 돌아가기</button><hr>
	
	</div>

</body>
</html>