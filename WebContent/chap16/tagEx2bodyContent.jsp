<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my"  tagdir="/WEB-INF/tags/chap16"%>
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

<h1>태그 body scriptless</h1>
<my:tagEx1body>
	<!-- scriptless가 기본값 -->
	<!-- 안에 내용물을 넣을 수 있다 -->
	<!-- expression language를 잘 해석해서 보여준다 -->
	<!-- jsp action 태그도 잘 해석한다 -->
	<!-- 스크립트릿을 허용하지 않는다 -->
	<p>hello world</p>
	${pageContext.request.contextPath }
	<jsp:include page="includeEx3.jsp"></jsp:include>
	
	<%-- 스크립트릿 (허용 x)
	<% 
		Object o = new Object();
		out.print(o);
	%>
	--%>
	
	<%-- 표현식 (허용 x)
	<%= o %>
	--%>
	<%-- 선언부 (허용 x)
	<%!
		int i = 0;
	%>
	--%>
</my:tagEx1body>

<h1>태그 body tagdependent</h1>
<my:tagEx2body>
	<!-- 안에 내용물을 넣을 수 있다 -->
	<!-- el, jsp action 태그 등을 있는 그대로 보여준다(text 형식으로 나타낸다) -->
	<!-- jsp action tag는 호출을 하지 않는다 -->
	<p>hello wolrd 2</p>
	${pageContext.request.contextPath }
	<jsp:include page="includeEx3.jsp"></jsp:include>
</my:tagEx2body>

</body>
</html>