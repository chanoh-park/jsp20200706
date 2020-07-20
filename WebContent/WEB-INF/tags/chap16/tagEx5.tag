<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="count" %>
<%@ attribute name="name" required="true" %> <!-- required를 true로 넣으면 값을 무조건 넣어줘야 한다(false가 기본값) -->
<%@ attribute name="address" type="java.lang.String" %> <!-- type="java.lang.String"이 기본값 -->
<%@ attribute name="member" type="chap11.Member" %> <!-- type : type 명시(객체도 가능하다) -->

<h3>tag 5</h3>
<h4>count : ${count }</h4>
<h4>name : ${name }</h4>
<h4>member name : ${member.name }</h4>