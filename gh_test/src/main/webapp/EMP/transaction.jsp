<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="EMP.EmpDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	EmpDAO dao = new EmpDAO();
	dao.insert();
	dao.insert_batch();
	out.println("트랜젝션 처리가 완료되었습니다.");
%>
</body>
</html>