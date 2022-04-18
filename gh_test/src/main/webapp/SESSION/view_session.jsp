<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Enumeration<String> en = session.getAttributeNames();
while(en.hasMoreElements()){
	String key = en.nextElement();
	Object value = session.getAttribute(key);
	out.println("[키]"+key+",");
	out.println("[값]"+value+"<br>");
}
String id = (String)session.getAttribute("id");
String passwd = (String)session.getAttribute("passwd");
int age = 0;
if(session.getAttribute("age") != null) {
	age = (int)session.getAttribute("age");
}
Object a = session.getAttribute("age");
double height = 0;
if(session.getAttribute("height") != null) {
	height = (double)session.getAttribute("height");
}
%>
	<br>
	아 이 디: <%=id%><br>
	비밀번호: <%=passwd%><br>
	나이: <%=age%><br>
	키: <%=height%><br>
	세션아이디: <%=session.getId()%><br>
	<br>
	<a href="delete_session.jsp">세션 삭제</a> 
	&nbsp;&nbsp;
	<a href="update_session.jsp">세션 수정</a>
</body>
</html>