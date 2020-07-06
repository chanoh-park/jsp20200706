<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%> 	<%-- 한글 깨지는 것을 방지 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js'></script>
<title>Insert title here</title>
</head>
<body>
<%= request.getParameter("name") %> <br />			<%-- getParameter : form 값을 받는다 --%>
<%= request.getParameter("address") %> <br />
<%-- <%= request.getParameterValues("pet") <br /> --%>

<%
	String[] pets = request.getParameterValues("pet");
	for(String pet : pets) {
%>
	<%= pet %> <br />
<%
	}
%>
</body>
</html>