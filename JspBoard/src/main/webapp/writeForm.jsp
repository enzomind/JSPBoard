<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록</title>
</head>
<body>
	
	<form action="writeAction.jsp" method="post">
	<table border="1" cellpadding="0" cellspacing="0">
	
		<tr>
	    <td>아이디</td>
	    <td><input type="text" name="id" value="4"></td>
	</tr>
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
	</form>
</body>
</html>