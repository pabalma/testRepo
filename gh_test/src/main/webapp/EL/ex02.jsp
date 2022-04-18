<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- http://localhost/jsp02/EL/ex02.jsp?name=김철수&age=34 이걸로 실행-->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<!-- request.getParameter("name") -->
		이름: <input name="name" value="${param.name}"> <!-- 널값이 처리된다. -->
		나이: <input name="age" value="${param.age}">
		<input type="submit" value="확인">
	</form>
	이름: ${param.name}, 나이: ${param.age} <!-- 널값이 처리된다. -->
	<br>  
	널값 미처리: <%=request.getParameter("name")%> 
</body>
</html>