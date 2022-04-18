<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
HashMap<String,String> map = (HashMap<String,String>)request.getAttribute("map");
String[] names = {"kim","park","song","hyun"};
for(String name : names) {
	out.println(name+"=>"+map.get(name)+"<br>");
}
%>
<br>
${map["kim"]}<br>
${map["park"]}<br>
${map["song"]}<br>
${map["hyun"]}<br>
<br>
${map.kim}<br>
${map.park}<br>
${map.song}<br>
${map.hyun}<br>
</body>
</html>