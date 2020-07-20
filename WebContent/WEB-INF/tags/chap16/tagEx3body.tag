<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:forEach begin="1" end="5" >
	<jsp:doBody /> <!-- tag안의 content를 실행시키는 역할 -->
</c:forEach>

