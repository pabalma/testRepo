<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int distance = Integer.parseInt(request.getParameter("distance"));
	int totCost = 0;
	double cnt140m = 0;
	if(distance > 2) {
		cnt140m = ((distance-2)*1000*1.0)/140;
		totCost = (int)(3000+(150*cnt140m));
	} else {
		totCost = 3000;
	}
%>
	요금: <%=totCost%> 원
</body>
</html>