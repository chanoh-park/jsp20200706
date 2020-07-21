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

<%
	Class. forName("com.mysql.cj.jdbc.Driver");

	String url = "jdbc:mysql://localhost/test1" + "?serverTimezone=Asia/Seoul";
	String id = "root";
	String pw = "rootpw";
	Connection con = DriverManager.getConnection(url, id, pw);
	
	String sql1 = "UPDATE money SET money="
				+ "(SELECT money-10 WHERE id=1)"
				+ "WHERE id = 1";
	
	String sql2 = "UPDATE money SET money="
				+ "(SELECT money+10 WHERE id=2)"
				+ "WHERE id = 2";
	
	PreparedStatement pstmt1 = con.prepareStatement(sql1);
	PreparedStatement pstmt2 = con.prepareStatement(sql2);
	
	// 4.1 auto commit -> false;
	con.setAutoCommit(false);	// 자동 commit
	
	pstmt1.executeUpdate();
	
	boolean trouble = false;	// 문제가 생겼을 경우 가정
	
	if(!trouble) {
		pstmt2.executeUpdate();
		con.commit();
	} else {
		con.rollback();	// 문제가 생기면 실행되기 이전으로 되돌아간다
	}
	
	out.print("입금과 출금 완료");
	
	if(pstmt1 != null) {
		pstmt1.close();
	}
	
	if(pstmt2 != null) {
		pstmt2.close();
	}
	
	if(con != null) {
		con.close();
	}
%>

</body>
</html>