<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<String> items = (List<String>)request.getAttribute("items");
for(String str:items) {
	out.println(str+"<br>");
}
%>
	<hr>
	<c:forEach var="fruit" items="${items}">
		${fruit}<br>
	</c:forEach>
</body>
</html>