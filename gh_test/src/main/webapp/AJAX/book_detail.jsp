<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="BOOK.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.0.js"></script>
<script>
$(function(){
	$("#btnUpdate").click(function(){
		document.form1.action = "book_update.jsp";
		document.form1.submit();
	});
});
</script>
</head>
<body>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	BookDAO dao = new BookDAO();
	BookDTO dto = dao.detail(idx);
%>
	<form name="form1" method="post">
		<input type="hidden" name="idx" value="<%=idx%>">
		도서명: <input name="title" value="<%=dto.getTitle()%>"><br>
		저&nbsp;&nbsp;&nbsp;자: <input name="author" value="<%=dto.getAuthor()%>"><br>
		가&nbsp;&nbsp;&nbsp;격: <input name="price" value="<%=dto.getPrice()%>"><br>
		수&nbsp;&nbsp;&nbsp;량: <input name="amount" value="<%=dto.getAmount()%>">
		<input type="button" value="수정" id="btnUpdate">
	</form>
</body>
</html>