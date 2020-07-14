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
	${param} : request에 있는 parameter 가져오기(값이 하나일 때 쓴다)
	
	${paramValues} : 값이 여러개일 경우 쓴다(paramValues의 key에 해당하는 것은 배열)
--%>

<h1>
<%= request.getParameter("name") %>, 

${param.name } <%-- 위에 있는 code가 아래에 있는 code로 변했다 --%>
</h1>

<hr />

<h1>
${paramValues.name[0] }
</h1>

<h1>
${paramValues.name[1] }
</h1>

</body>
</html>