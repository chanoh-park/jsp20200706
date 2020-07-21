<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16" %>
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

<h1>데이터 입력</h1>
<form action="" method="post">
	이름 : <input type="text" name="name" /> <br />
	나이 : <input type="number" name="age" /> <br />
	<input type="submit" value="등록" />
</form>

<a href="jdbcEx2.jsp">리스트 확인</a> <br />

<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	if(name != null & age != null) {

		Class. forName("com.mysql.cj.jdbc.Driver");
	
		String url = "jdbc:mysql://localhost/test1" + "?serverTimezone=Asia/Seoul";
		String id = "root";
		String pw = "rootpw";
		Connection con = DriverManager.getConnection(url, id, pw);
		
		Statement stmt = con.createStatement();
		
		String sql = "INSERT INTO member VALUES('" + name + "', " + age + ")";
		int rows = stmt.executeUpdate(sql);	// INSERT는 executeUpdate 사용
		
		//ResultSet rs = stmt.executeQuery("SELECT name, age FROM member");
		
		out.print(rows + "개의 행이 업데이트 되었습니다.");
		
		if(stmt != null) {
			stmt.close();
		}
		
		if(con != null) {
			con.close();
		}
	}
%>

</body>
</html>