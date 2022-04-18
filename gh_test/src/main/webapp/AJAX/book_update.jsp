<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="BOOK.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	int price = Integer.parseInt(request.getParameter("price"));
	int amount = Integer.parseInt(request.getParameter("amount"));
	BookDTO dto = new BookDTO(idx,title,author,price,amount);
	BookDAO dao = new BookDAO();
	int result = dao.update_book(dto);
	if(result > 0) out.println("성공적으로 수정되었습니다.");
	else out.println("수정에 실패하였습니다.");
	response.sendRedirect("book.jsp");	
%>
</body>
</html>