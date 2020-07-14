<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<%--

	el의 pageScope : page영역의 attribute를 <key, value>로 저장한 Map
	
	Map 사용법
	${map.key}
	${map["key"]}

--%>

<%
	pageContext.setAttribute("key1", "value1");
	pageContext.setAttribute("key2", "value2");
	pageContext.setAttribute("key-3", "value3");
	pageContext.setAttribute("4", "value4");
	pageContext.setAttribute("5key", "value5");
%>

<h1>
${pageScope.key1 }, ${pageScope["key1"] } <%-- 객체.attribute명 : attribute명을 적을때는 변수명을 적을때와 동일한 규칙이다. --%>
<%-- 변수명 규칙을 따를 수 있으면 2가지 방법으로 적을 수 있다 --%>
</h1>

<h1>
${pageScope.key2 }, ${pageScope["key2"] }
</h1>

<h1>
${pageScope["key-3"] }
<%-- 변수명 규칙을 따르지 못하면 Strig 형식으로 써줘야 한다 --%>
</h1>

<h1>
${pageScope["4"] }
</h1>

<h1>
${pageScope["5key"] }
</h1>

<h1>
${cookie.JSESSIONID }, ${cookie["JSESSIONID"] }
</h1>

</body>
</html>