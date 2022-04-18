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
		$("#btnSave").click(function(){
			var title = $("#title").val();
			var author = $("#author").val();
			var price = $("#price").val();
			var amount = $("#amount").val();
			var param = {"title":title,"author":author,"price":price,"amount":amount};
			$.ajax({
				url: "book_insert.jsp",
				data: param,
				success: function(){
					list();  //테이블 갱신
					clear();
				}
			});
		});
	});
	
	function list() {
		$.ajax({
			url:"book_list.jsp",     //백그라운드 실행
			success:function(txt){
				$("#div1").html(txt);
			}
		});	
	}
	
	function clear() {
		$("#title").val("");
		$("#author").val("");
		$("#price").val("");
		$("#amount").val("");
		$("#title").focus();   //해당 태그 포커스 이동
	}
	
	function del(idx){  //ajax 하위페이지의 del()함수 연결 
		if(confirm("삭제하시겠습니까?")) {
			$.ajax({
				url: "book_delete.jsp",
				data: {"idx":idx},
				success: function(){
					list();
				}
			});
		}
	}
</script>
</head>
<body>
	<h2>도서 목록</h2>
	도서명 <input id="title"><br>
	출판사 <input id="author"><br>
	단&nbsp;&nbsp;&nbsp;가 <input id="price"><br>
	수&nbsp;&nbsp;&nbsp;량 <input id="amount"> 
	<input type="button" value="확인" id="btnSave"><br><br>
	<input type="button" onclick="hello('ok')" value="테스트"><br>
	<div id="div1"></div>
</body>
</html>