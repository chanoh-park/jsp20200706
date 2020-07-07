<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.net.*" %>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	boolean login = false;
	
	if(id != null && id.equals("seoul")) {
		if(pw != null && pw.equals("jeju")) {
			login = true;
		}
	}
	
	if(login) {
		String qname = URLEncoder.encode("자바", "utf-8");	// 쿼리 스트링에서 한글로 작성 가능
		response.sendRedirect("home.jsp?id=" + qname); 	// 쿼리 스트링
	}
	else {
		response.sendRedirect("login.jsp");
	}
%>