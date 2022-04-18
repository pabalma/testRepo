<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- jstl 선언문 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- c태그가 core태그로 지정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int num = Integer.parseInt(request.getParameter("num"));  //num값이 null일경우 예외발생 -> 500Err
int sum = 0;
for(int i=1;i<=num;i++) {
	sum += i;
}
out.println("합계: "+sum);
%>
	<hr>
	<c:set var="sum" value="0" />  <!-- html이 아닌 xml표기법 -->
	<c:forEach var="i" begin="1" end="${param.num}"> <!-- num값이 null이어도 오류없이 처리. -->
		<c:set var="sum" value="${sum+i}"/>
	</c:forEach>
	합계: ${sum}
</body>
</html>