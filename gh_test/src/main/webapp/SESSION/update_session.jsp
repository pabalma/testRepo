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
String id = "Lee@naver.com";
String passwd = "5678";
int age = 30;
double height = 160.5;
session.setAttribute("id",id);
session.setAttribute("passwd",passwd);
session.setAttribute("age",age);
session.setAttribute("height",height);
out.println("수정되었습니다.");
%>
	<a href="view_session.jsp">세션 확인</a>
</body>
</html>