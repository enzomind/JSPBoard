<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
<title>게시글 등록</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<script>
	function to_ajax() {
		var inputdata = $("form[id=writeForm]").serialize();
		// console.log(data);
		// alert(inputdata);

		$.ajax({
			type : "post",
			url : "writeAction.jsp",
			data : inputdata,
			dataType : "text",
			error : function(xhr, status, error) {
				alert(error);
			},
			success : function(data) {
				alert("입력 성공");
				/* let url = 'boardList.jsp'; */ 
				location.replace('boardList.jsp');
			}
			
		});
		
	}
</script>
</head>
<body>

	<form id="writeForm">
		<table border="1" cellpadding="2" cellspacing="0">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"><br /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"><br /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="content"><br /></td>
			</tr>
		</table>
		
	</form>
		<button onclick="to_ajax()">확인</button>
		<button onclick="location.href=('boardList.jsp');">취소</button>

	<!-- <form action="writeAction.jsp" method="post">
	<table border="1" cellpadding="0" cellspacing="0">
	
	<tr>
	    <td>작성자</td>
	    <td><input type="text" name="writer"></td>
	</tr>
	<tr>
	    <td>제목</td>
	    <td><input type="text" name="title"></td>
	</tr>
	<tr>
	    <td>내용</td>
	    <td><input type="text" name="content"></td>
	</tr>
	
	</table>
	<input type="submit" value="등록"/>
	<a href="boardList.jsp">취소</a>
	</form> -->


</body>

</html>