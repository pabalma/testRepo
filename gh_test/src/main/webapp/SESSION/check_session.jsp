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
String userid = (String)session.getAttribute("userid");

//세션을 체크하여 로그인을 안하고 그냥 주소로 들어온 경우 막아주는 역할
if(userid == null) {
%>
	<script>
		alert("로그인하세요.");
		location.href = "/jsp02/SESSION/login.jsp";
	</script>
<%
}
%>
</body>
</html>