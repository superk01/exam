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
String s_id = "a1234";
String s_pass = "qwerl";


String name = request.getParameter("name");
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String area = request.getParameter("area");

if(s_id.equals(id)){
	if(s_pass.equals(pass)){
		String str = "로그인한 당신의 이름이"+name+"이고, ";
		str +="사는 지역은 "+area+"인가?";
		
	/* 	String message = URLEncoder.encode(str,"utf-8");
		response.sendRedirect("afterLogIn.jsp?message="+message); */
		
		request.setAttribute("message", str);
		
		RequestDispatcher re = request.getRequestDispatcher("afterLogIn.jsp");
		re.forward(request, response);
	}
}






%>
</body>
</html>