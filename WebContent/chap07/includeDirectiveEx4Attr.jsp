<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="chap05.User" %>

<% 
	User user2 = (User) pageContext.getAttribute("user");
%> 	<%-- pageContext.getAttribute를 선언을 안해줘도 동작 가능 
		 includeDirectiveEx4Attr.jsp 파일을 includeDirectiveEx3Attr.jsp 파일에 그대로 복사한거기 때문에
		 includeDirectiveEx4Attr.jsp 파일에서 User 선언해준것을 사용 --%>

<h1> <%= user2.getAge() %>살 <%= user2.getName() %>님 반갑습니다.</h1> 
