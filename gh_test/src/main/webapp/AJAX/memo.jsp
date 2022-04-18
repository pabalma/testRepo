<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.0.js"></script>
<script>
$(function(){
	list();
	$("#button1").click(function(){
		var writer = $("#writer").val();
		var memo = $("#memo").val();
		$.ajax({
			url:"memo_insert.jsp",
			data:{"writer":writer,"memo":memo},
			success:function(){
				list();
			}
		});	
	});
});

function list() {
	$.ajax({
		url:"memo_list.jsp",
		success:function(txt){
			$("#result").html(txt);
		}
	});
}
</script>
</head>
<body>
	<h2>한줄 메모장</h2>
		이름 <input type="text" id="writer" size="10">
		메모 <input type="text" id="memo" size="30">
		<input type="button" id="button1" value="확인">
	<div id="result"></div>
</body>
</html>