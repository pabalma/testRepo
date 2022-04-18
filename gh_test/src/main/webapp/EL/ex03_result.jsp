<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 이 페이지를 바로 실행할때 아래 코드는 null처리가 됨 -->
	이름: ${sessionScope.name}<br>  
	나이: ${sessionScope.age}<br>
	직업: ${sessionScope.job}<br>
	<br>
	<!-- 이 페이지를 바로 실행할때 아래 코드는 null처리가 안됨 -->
	이름: <%=session.getAttribute("name")%><br> 
	나이: <%=session.getAttribute("age")%><br>
	직업: <%=session.getAttribute("job")%><br>
</body>
</html>