<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="kosta.board.Board"%>
<%@page import="kosta.board.boardDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  boardDao dao = boardDao.getInstance();
  ArrayList<Board> list = dao.listBoard();
  %>  
   <%Calendar date = Calendar.getInstance();
   		SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일");
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="500" border ="1" cellspacing="0" cellpadding="0">
<tr>
<td>글번호</td>
<td>작성자</td>
<td>타이틀</td>
<td>날   짜</td>
</tr>
<% for(int i=0; i<list.size(); i++){
	 Board b = list.get(i); 
%>
	<tr>
		<td><%=b.getSeq()%></td>
		<td><%=b.getWriter()%></td>
		<td><a href = "detail.jsp?seq=<%=b.getSeq()%>"><%=b.getTitle()%></td>
		<%-- <td><%=list.get(i).getContents()%></td> --%>
		<td><%=today.format(date.getTime())%></td>
	</tr>
<%}%>

</table>



</body>
</html>