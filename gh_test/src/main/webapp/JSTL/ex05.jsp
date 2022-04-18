<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- varStatus : 변수의 상태 - 인데스,일련번호를 위한 변수-->
<c:forEach var="i" begin="0" end="100" step="5" varStatus="s">
	${s.index} / ${s.count} :
	<c:if test="${i%2==0}">
		<span style="font-size:${110-i}px; color:blue;">hello</span>
	</c:if>
	<c:if test="${i%2==1}">
		<span style="font-size:${110-i}px; color:red;">hello</span>
	</c:if>
	<br>
</c:forEach>
</body>
</html>