<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	<table border="1">
	<%
	for(int i=0; i<4; i++){%>
		<tr>
		<%for(int j=0; j<2; j++){ %>
			<td><%=(i+j)%></td>
		<%}%>
		</tr>
	<%}%>
	</table> --%>
	

	
	<%
	String message = URLEncoder.encode("바보야", "utf-8") ;
	response.sendRedirect("fail.jsp?message="+message);
	%>
</body>
</html>