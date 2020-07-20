<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ attribute name="dan" required="true" %>

<c:forEach begin="1" end="9" var="gugudan">
	<h2>${dan } x ${gugudan } = ${dan * gugudan }</h2> 
</c:forEach>