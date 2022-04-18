<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="STUDENT.StudentDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학생 테이블</h2>
	<table border="1">
	<tr>
		<th>학번</th>
		<th>이름</th>
		<th>학년</th>
		<th>학과</th>
	</tr>
<%
List<StudentDTO> items = (List<StudentDTO>)request.getAttribute("List");
for(StudentDTO dto : items) {
%>
	<tr>
		<td><%=dto.getStudno()%></td>
		<td><%=dto.getSname()%></td>
		<td><%=dto.getGrade()%></td>
		<td><%=dto.getMname()%></td>
	</tr>
<%
}
%>
	</table>
</body>
</html>