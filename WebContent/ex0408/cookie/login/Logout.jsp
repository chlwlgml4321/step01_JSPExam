<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>

<script>
</script>
</head>
<body>


<%
//로그인 기억정보 삭제 
 	session.invalidate();
	response.sendRedirect("LoginForm.jsp");
%>
</body>
</html>