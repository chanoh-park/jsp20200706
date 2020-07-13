<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page session="true" %> <%-- jsp에서 session 사용하는 법 : true -> session 사용(기본값) --%>
    
<%-- 

page : pageContext
request : request
session : session(type : HttpSession)
application : application

--%>

<%
	// session = request.getSession();		// java code만 있다면 reqeust로 세션을 받아와야한다.
%>

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

<h1>Session Ex 1</h1>

<%= System.identityHashCode(session) %> 	<%-- 참조값 --%>

</body>
</html>