<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="check_session.jsp" %>
<script src="../include/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$("#btnLogout").click(function(){
			location.href = "/jsp02/session_servlet/logout.do";
		});
	});
</script>
</head>
<body>
	<h2><%=session.getAttribute("message")%></h2>
	<%=session.getAttribute("userid")%>님이 접속중입니다.
	<br>
	<button type="button" id="btnLogout">로그아웃</button>
</body>
</html>