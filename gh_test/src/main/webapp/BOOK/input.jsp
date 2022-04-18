<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="insert.jsp">
		도서명 <input name="title"><br>
		출판사 <input name="author"><br>
		단가 <input name="price"><br>
		수량 <input name="amount"><br>
		<input type="submit" value="확인">
	</form>
</body>
</html>