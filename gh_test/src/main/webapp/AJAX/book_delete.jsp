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
	BookDAO dao = new BookDAO();
	int result = dao.delete_book(idx);
	if(result > 0) out.println("성공적으로 삭제되었습니다.");
	else out.println("삭제에 실패하였습니다.");
	//response.sendRedirect("book.jsp");	//페이지 Ajax에서 처리
%>
</body>
</html>