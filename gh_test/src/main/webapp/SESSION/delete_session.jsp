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
//session.removeAttribute("id");  //개별 삭제
//session.removeAttribute("passwd");
session.invalidate(); //전체 삭제
%>
	세션이 초기화 되었습니다.
	<a href="view_session.jsp">세션 확인</a>
</body>
</html>