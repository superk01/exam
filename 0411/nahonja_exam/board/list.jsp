<%@page import="kosta.board.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kosta.board.boardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    
    boardDao dao = boardDao.getInstance();
    ArrayList<Board> list = dao.listBoard();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border = "1">
<%for(int i=0; i<list.size(); i++){%>
	<tr>
		<td><%=list.get(i).getSeq() %></td>
		<td><a href = "detail.jsp?seq=<%=list.get(i).getSeq()%>"><%=list.get(i).getTitle() %></a></td>
		<td><%=list.get(i).getWriter()%></td>
	</tr>
<%}%>


</table>
</body>
</html>