<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="MEMBER.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
function view(userid) {
	document.form1.userid.value = userid;
	document.form1.submit();
}
</script>
<title>Insert title here</title>
</head>
<a href="/jsp02/MEMBER/form.jsp">추가</a>
<body>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>가입일자</th>
			<th>주소</th>
			<th>전화</th>
		</tr>
<%
Map map = (Map)request.getAttribute("map");
List<MemberDTO> items = (List)map.get("list");
for(MemberDTO dto : items) {
%>
		<tr>
			<td><a href="#" onclick="view('<%=dto.getUserid()%>')"><%=dto.getName()%></a></td>
			<td><%=dto.getUserid()%></td>
			<td><%=dto.getPasswd()%></td>
			<td><%=dto.getReg_date()%></td>
			<td><%=dto.getAddress()%></td>
			<td><%=dto.getTel()%></td>
		</tr>
<%
}
%>
	</table>
	<form name="form1" method="post" action="/jsp02/member_servlet/view.do">
		<input type="hidden" name="userid">
	</form>
</body>
</html>