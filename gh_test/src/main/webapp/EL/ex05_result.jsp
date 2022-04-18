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
MemberDTO dto = (MemberDTO)request.getAttribute("dto");
if(dto!=null){	//Null값을 처리해주어야만 한다.
	out.println("이름:"+dto.getName()+"<br>");
	out.println("아이디:"+dto.getUserid()+"<br>");
	out.println("비번:"+dto.getPasswd()+"<br>");
} else {
	out.println("출력할 값이 없습니다.");
}
%>
	<br>
	이름: ${dto.name}<br>			<!-- Null값 처리 불필요 -->
	아이디: ${dto.userid}<br>
	비번: ${dto.passwd}<br>
</body>
</html>