<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="/jsp02/encrypt_servlet/login.do">
		아이디 : <input name="userid"><br>
		비밀번호: <input type="password" name="passwd"><br>
		<button>로그인</button>
	</form>
	<br>
	<a href="join.jsp">회원 등록</a>
</body>
</html>