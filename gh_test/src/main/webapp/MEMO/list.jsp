<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="MEMO.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>한줄 메모장(이수정)</h2>
	<form method="post" action="insert.jsp">
		이름 <input type="text" name="writer" size="10">
		메모 <input type="text" name="memo" size="30">
		<input type="submit" value="확인">
	</form>
<%
MemoDAO dao = new MemoDAO();
List<MemoDTO> items = dao.list_memo();
%>
	<table border="1" width="750px">
	<tr>
		<th width="10%">번호</th>
		<th width="10%">이름</th>
		<th width="50%">메모</th>
		<th width="15%">IP</th>
		<th width="15%">날짜</th>
	</tr>
<% for(MemoDTO dto : items) { %>
	<tr>
		<td><%=dto.getIdx()%></td>
		<td><%=dto.getWriter()%></td>
		<td><%=dto.getMemo()%></td>
		<td><%=dto.getIp()%></td>
		<td><%=dto.getPost_date()%></td>
	</tr>
<% } %>
	</table>
</body>
</html>