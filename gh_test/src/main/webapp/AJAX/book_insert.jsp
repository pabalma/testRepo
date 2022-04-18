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
//폼데이터 읽어서 변수에 저장
String title = request.getParameter("title");
String author = request.getParameter("author");
int price = Integer.parseInt(request.getParameter("price"));
int amount = Integer.parseInt(request.getParameter("amount"));
//dto에 저장
BookDTO dto = new BookDTO(title,author,price,amount);
//dao호출
BookDAO dao = new BookDAO();
dao.insert_book(dto);
//목록 페이지로 이동
//response.sendRedirect("list.jsp");
%>
</body>
</html>