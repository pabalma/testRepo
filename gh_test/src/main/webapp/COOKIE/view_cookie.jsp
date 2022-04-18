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
Cookie[] cookies = request.getCookies();
if(cookies != null) {
	for(int i=0;i<cookies.length;i++) {
		out.println("[키]" + cookies[i].getName()+",");
		out.println("[값]" + cookies[i].getValue()+"<br>");
	}
}

//parameter : 다음 페이지까지만 값을 유지
//cookie : 모든 페이지에서 사용 가능
String name = request.getParameter("name");
%>
	<a href="delete_cookie.jsp?name=<%=name%>">쿠키 삭제</a>
	&nbsp;&nbsp;
	<a href="update_cookie.jsp">쿠키 수정</a>
	<br>
</body>
</html>