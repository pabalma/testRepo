<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입 (암호화 방식)</h2>
	<form method="post" action="/jsp02/encrypt_servlet/join.do">
		아이디 : <input type="text" name="userid"><br>
		비밀번호: <input type="password" name="passwd"><br>
		이 름 : <input name="name"><br>
		<button>회원가입</button>
	</form>
	<br>
	<a href="login.jsp">이전</a>
</body>
</html>