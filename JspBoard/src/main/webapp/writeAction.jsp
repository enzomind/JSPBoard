<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="board.dao.BoardDao" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="board" class="board.model.Board" scope="page"/>
<jsp:setProperty name="board" property="writer"/>
<jsp:setProperty name="board" property="title"/>
<jsp:setProperty name="board" property="content"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록처리</title>
</head>
<body>
	<%
		BoardDao boarddao = new BoardDao();	
		
		int result = boarddao.write(board.getWriter(), board.getTitle(), board.getContent());
		
	%>
</body>
</html>