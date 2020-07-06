<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	int myField = 0;
%>
<%!
	public int multiply(int a, int b) {
		int c = a * b;
		return c;
	}
%>	<%-- 선언부는 <%! %> 로 되어있다. --%>

<%!
	public double multiply(double a, double b) {
		double c = a * b;
		return c;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부를 사용한 두 정수값의 곱</title>
</head>
<body>
10 * 25 = <%= multiply(10, 25) %>
<br />
<%= myField++ %>
</body>
</html>