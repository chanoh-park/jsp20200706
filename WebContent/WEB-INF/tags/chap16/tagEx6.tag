<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="attr" fragment="true" %> <!-- fragment : jsp attribute action tag 사용 가능(false가 기본값) -->
											 <!-- 스크립트는 작석 불가 -->
<%@ attribute name="attr2" fragment="true" %>

<h1>tag file</h1>

<jsp:invoke fragment="attr" /> <!-- jsp 파일에 쓴 jsp:attribute 값을 읽을 때 사용 -->

<jsp:invoke fragment="attr2" var="myAttr2" scope="page" /> <!-- 당장 쓰는게 아니라면 어딘가에 넣어놓고 쓸 수 있다 -->

<h1>attribute 저장 후</h1>
${myAttr2 }