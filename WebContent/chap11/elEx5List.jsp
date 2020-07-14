<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
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

<%
	List<String> list = new ArrayList<>();
	list.add("java");
	list.add("html");
	list.add("css");
	list.add(null);
	
	request.setAttribute("mylist", list);
	pageContext.setAttribute("myNum", "2");
%>

<%-- list 사용법 --%>

<h1>${mylist["0"] }</h1>	<%-- 값으로 변환될 수 있는거면 String 형식으로 써도 된다. --%>
<h1>${mylist[1] }</h1>		<%-- 범위를 넘어가면 출력을 안한다. --%>
<h1>${mylist[myNum] }</h1>		<%-- 어떠한 값을 써줘도 된다 --%>
<h1>${mylist[3] }</h1>		<%-- el에서는 null인 경우 출력 안한다. --%>

<hr />

<h1><%= ((List<String>)request.getAttribute("mylist")).get(3) %></h1> 	<%-- 기존에 사용하던 방식은 null 출력 가능 --%>

</body>
</html>