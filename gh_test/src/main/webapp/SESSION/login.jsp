<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" name="form1" action="/jsp02/session_servlet/login.do">
		<table border="1">
		<tr>
			<td>아이디</td>
			<td><input name="userid"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="passwd"></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="LOGIN"></td>
		</tr>
		</table>
	</form>
<%
String message = "";
if(request.getParameter("message") != null) {
	message = request.getParameter("message");
	if(message.equals("logout")) {
%>
	<div style="color:red;">로그아웃 되었습니다.</div>
<%
	} else if(message.equals("xx")) {
%>
	<script>alert("ID 또는 Pass가 존재하지않습니다.");</script>
	<div style="color:pink;">올바른 ID와 Password를 입력해주세요.</div>
<%
	}
}
%>
</body>
</html>