<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   String body = request.getParameter("body");
   if(body == null){
	   body = "../main.jsp";
   }
   String under_body = request.getParameter("under_body");
   if(under_body == null){
	   under_body = "../under_body.jsp";
   }else{
   String path = under_body;
   String pathFull = application.getRealPath(path);

   try{
   	BufferedReader br = 
   			new BufferedReader(new FileReader(pathFull));
   	String str = "";
   	while((str=br.readLine()) !=null){
   		out.println(str+"<br>");
   	}
   	String message = URLEncoder.encode(str, "utf-8") ;
	response.sendRedirect("../notice.jsp?message="+message);
   }catch(Exception e){
   	e.printStackTrace();
   }
   }
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<hr>
	<jsp:include page="menu.jsp"/>
	<hr>
	<jsp:include page="<%=body %>"/>
	<hr>
	<jsp:include page="<%=under_body %>"/>
	<hr>
	<jsp:include page="footer.jsp"/>
</body>
</html>