<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="memberInfo" class="chap08.MemberInfo" />
<jsp:setProperty property="*" name="memberInfo"/>
<jsp:setProperty name="memberInfo" property="password" value="<%= memberInfo.getId() %>" />

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
<title>가입</title>
</head>
<body>

<table width="400" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty property="id" name="memberInfo"/></td>
		<td>암호</td>
		<td><jsp:getProperty name="memberInfo" property="password" /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><jsp:getProperty name="memberInfo" property="name" /></td>
		<td>이메일</td>
		<td><jsp:getProperty name="memberInfo" property="email" /></td>
	</tr>
</table>

</body>
</html>