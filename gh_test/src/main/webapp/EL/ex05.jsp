<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="MEMBER.MemberDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
MemberDTO dto = new MemberDTO();
dto.setUserid("kim");
dto.setName("김철수");
dto.setPasswd("1234");
request.setAttribute("dto",dto);
%>
<jsp:forward page="ex05_result.jsp"/>
</body>
</html>