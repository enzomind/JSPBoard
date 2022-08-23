<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import = "board.dao.BoardDao" %>
<%@ page import = "board.model.Board" %>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
</head>
<body>
	<table border="1" cellpadding="0" cellspacing="0">

		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>내용</th>
			

		</tr>
		<tbody>
			<%
				BoardDao boarddao = new BoardDao();
				ArrayList<Board> list = boarddao.getList();

				for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getId()%></td>
				<td><%=list.get(i).getWriter()%></td>
				<td><a href="boardDetail.jsp?id=<%=list.get(i).getId()%>"><%=list.get(i).getTitle()%></td>
				<td><%=list.get(i).getContent()%></td>
			</tr>
			<%
				}
			%>

		</tbody>

	</table>
	
	<a href="writeForm.jsp">등록하기</a>
	
</body>
</html>