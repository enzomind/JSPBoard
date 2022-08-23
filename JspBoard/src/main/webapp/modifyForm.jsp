<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="board.dao.BoardDao"%>
<%@ page import="board.model.Board"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 상세보기</title>
</head>

<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<script>
	function to_ajax() {
		var modifydata = $("form[id=modifyForm]").serialize();

		$.ajax({
			type : "post",
			url : "modifyAction.jsp",
			data : modifydata,
			dataType : "text",
			error : function(xhr, status, error) {
				alert(error);
			},
			success : function(data) {
				alert("수 성공");
				/* let url = 'boardList.jsp'; */ 
				location.replace('boardList.jsp');
			}
			
		});
		
	}
</script>


<body>

	<form id="modifyForm">
		<table border="1" cellpadding="2" cellspacing="0">


			<%
			int idnumber = Integer.parseInt(request.getParameter("id"));

			BoardDao bdao = new BoardDao();
			ArrayList<Board> list = bdao.getDetail(idnumber);

			for (int i = 0; i < list.size(); i++) {
			%>

				
			<input type="hidden" name="id"
					value="<%=idnumber%>">
				
			<tr>
				<td>작성자</td>
				<td><input type="text" name="writer"
					value="<%=list.get(i).getWriter()%>"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title"
					value="<%=list.get(i).getTitle()%>"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><input type="text" name="content"
					value="<%=list.get(i).getContent()%>"></td>
			</tr>
			
			<%
			}
			%>
			
		</table>
	</form>
	
		<button onclick="to_ajax()">수정</button>
		<button onclick="location.href=('boardDetail.jsp?id=<%=idnumber%>');">취소</button>



</body>
</html>