<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Cookie cookie = new Cookie("my-cookie-age", "my-cookie");
	cookie.setMaxAge(2*60);	// 2분 
							// cooki.setMaxage(60*60) -> 1시간 : (1440)으로 써도된다
							// 쿠키가 얼마동안 살아있을건지 명시
	response.addCookie(cookie);
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

</body>
</html>