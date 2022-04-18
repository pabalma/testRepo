<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String,String> map = new HashMap<String,String>();
map.put("kim","김철수");
map.put("park","박희정");
map.put("song","송영미");
map.put("hyun","현정수");
request.setAttribute("map",map);
%>
<!-- 액션태그 java코드로 처리가됨.-->
<jsp:forward page="ex04_result.jsp" />
</body>
</html>