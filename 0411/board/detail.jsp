<%@page import="kosta.board.boardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String str = request.getParameter("seq");
    	int seq1 = Integer.parseInt(str);
   		
   		boardDao dao = boardDao.getInstance();
   		String content=dao.getBoard(seq1);
   	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%=content%>

<!-- 1.seq받기
2.seq casting
3.getBoard(int seq)
4.출력 -->
</body>
</html>