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
<%
String id = "a1234";
String pass = "b5678";

String str1 = request.getParameter("id");
String str2 = request.getParameter("pass");
//String message = "";

if(id.equals(str1)){
	if(pass.equals(str2)){
		String str = id + "님 환영합니다.";
		request.setAttribute("message", str);
	/* 	RequestDispatcher re = request.getRequestDispatcher("/identify/success.jsp");
		re.forward(request, response) */; 
		
		
	}else{
	String message = URLEncoder.encode("password", "utf-8") ;
		response.sendRedirect("fail.jsp?message="+message);
	}
}else{
	String message = URLEncoder.encode("id", "utf-8") ;
	response.sendRedirect("fail.jsp?message="+message);
}
%>
<jsp:forward page="/identify/success.jsp"/>
</body>
</html>