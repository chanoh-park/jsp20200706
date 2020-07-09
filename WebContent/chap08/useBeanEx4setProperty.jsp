<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
    
<jsp:useBean id="member" class="chap08.MemberInfo" />

<%-- <jsp:setProperty property="*" name="member"/> param 값이 같은 값을 가지는 모든 것을  찾고 싶을 때 --%>

<jsp:setProperty name="member" property="name" param="name" />	<%-- value 값과 param 값은 같이 쓸 수 없다. --%>

<jsp:setProperty name="member" property="id" />					<%-- property명과 param 값이 같으면 param 값은 생략 가능 --%>

<%--
<%
	member.setName(request.getParameter("name"));
	member.setId(request.getParameter("id"));
%>
--%>

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

<form action="" method="post">
	name : <input type="text" name="name" /> <br />
	id : <input type="text" name="id" /> <br />
	<input type="submit" value="등록" />	
</form>

<ul>
	<%= member.getName() %>, <%= member.getId() %>님 안녕하세요.
</ul>

</body>
</html>