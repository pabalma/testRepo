<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="BOOK.*" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	//ajax 부모페이지에서 호출 test
	function hello(ag){
		alert(ag);
	}
</script>
</head>

<body>
<%
BookDAO dao = new BookDAO();
List<BookDTO> items = dao.list_book();
%>
	<table border="1">
		<tr>
			<th>idx</th>
			<th>title</th>
			<th>author</th>
			<th>price</th>
			<th>amount</th>
			<th></th>
		</tr>
<% for(BookDTO dto : items) { %>
		<tr>
			<td><%=dto.getIdx()%></td>
			<td><a href="book_detail.jsp?idx=<%=dto.getIdx()%>"><%=dto.getTitle()%></a></td>
			<td><%=dto.getAuthor()%></td>
			<td><%=dto.getPrice()%></td>
			<td><%=dto.getAmount()%></td>
			<td>
				<input type="button" onclick="del('<%=dto.getIdx()%>')" value="삭제">
			</td>
		</tr>
<% } %>
	</table>
</body>
</html>