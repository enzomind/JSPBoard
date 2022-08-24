<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="board.dao.BoardDao" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 처리</title>
</head>

<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<body>
	<%
		BoardDao boarddao = new BoardDao();	
		int result = boarddao.delete(Integer.parseInt(request.getParameter("id")));		
		
		if(result == 1) {
	%>
	<script type="text/javascript">
	   	alert("삭제가 완료되었습니다.");
		location.href="index.jsp";
	</script><br />

	<%
		}
	%>
	
</body>
</html>