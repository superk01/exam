<%@page import="java.net.URLEncoder"%>
<%@page import="com.sun.xml.internal.ws.api.ha.StickyFeature"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% 
   String code = request.getParameter("page");
   String name2 = URLEncoder.encode("code","utf-8");
   %>
    <jsp:forward page="<%=code%>"> 
   		<jsp:param value="<%=name2%>" name="name"/>
   	</jsp:forward>