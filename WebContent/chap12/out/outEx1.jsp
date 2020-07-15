<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:out value="${expr }" default="defValue" escapeXml="true" /> 	out : 어떤 값을 출력
	
	값이 null 이라면 default 값을 출력
	
	escapeXml : <, >, &, ', " 등 (true일 경우 : &lt;, &gt;, &amp;, &apos;, &quot; 로 바꿔준다)
 --%>

<h1>
${param.name } 님 반갑습니다.
</h1>

<hr />

<h1>
	<c:out value="${param.name }" default="guest" /> 님 반갑습니다.
</h1>

<hr />

<c:set var="attr1" >
	<h1>hello</h1>
</c:set>

<div>
	\${attr1 }
	${attr1 }
</div>

<div>
	&lt;c:out value=&quot;\${attr }&quot; /&gt; <br />
	<c:out value="${attr1 }" /> 	<!-- text로 들어가게된다 -->
</div>

</body>
</html>