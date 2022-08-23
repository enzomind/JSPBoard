<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import = "board.dao.BoardDao" %>
<%@ page import = "board.model.Board" %>	

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 상세보기</title>
</head>


<body>
	<table border="1" cellpadding="0" cellspacing="0">

		<tr>
			<th>아이디</th>
			<th>작성자</th>
			<th>제목</th>
			<th>내용</th>

		</tr>
		<tbody>
			<%
				int idnumber = Integer.parseInt(request.getParameter("id"));
			
				BoardDao bdao = new BoardDao();
				ArrayList<Board> list = bdao.getDetail(idnumber);

				for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i).getId()%></td>
				<td><%=list.get(i).getWriter()%></td>
				<td><%=list.get(i).getTitle()%></td>
				<td><%=list.get(i).getContent()%></td>
			</tr>
			<%
				}
			%>


		</tbody>

	</table>
	<a href="modifyForm.jsp?id=<%=idnumber%>">수정하기</a>
</body>
</html>