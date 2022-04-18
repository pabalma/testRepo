<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
	Connection conn = null;
	try{
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String id = "java";
		String pass = "java1234";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,id,pass);
		out.println("오라클에 접속되었습니다.");
	} catch(Exception e) {
		out.println("오라클 접속 에러...");
		e.printStackTrace();
	}
%>
</body>
</html>