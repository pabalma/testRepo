<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="MEMO.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String writer = request.getParameter("writer");
String memo = request.getParameter("memo");
MemoDTO dto = new MemoDTO();
dto.setWriter(writer);
dto.setMemo(memo);
dto.setIp(request.getRemoteAddr());
MemoDAO dao = new MemoDAO();
dao.insert_memo(dto);

//백그라운드 이동을 하기때문에 어차피 화면에는 안보인다.->트래픽관리를 위해 주석처리.
//response.sendRedirect("list.jsp");  
%>
</body>
</html>