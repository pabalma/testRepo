<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String result = (String)request.getAttribute("result");
out.println(result);
%>
	<br><br>
	<a href="../MEMBER/login.jsp">이전</a>   <!-- Controller에서 forward된 페이지라서 전체주소필요 -->
</body>
</html>