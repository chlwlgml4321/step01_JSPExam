<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <%
    	//응답코드를 200으로 변경한다.
    	//예외라고 보내면 페이지는 코드를 500으로 받아서
    	//코드를 아예 안보내줄수도있음 
    	response.setStatus(200);
    	
    %>
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
<h1>**예외 발생**</h1>

<h3>
	exception: <%=exception%><br>
	exception.getMessage(): <%=exception.getMessage() %><br>
	exception.getClass(): <%=exception.getClass()%><br>
	exception.getClass().getSimpleName(): <%=exception.getClass().getSimpleName() %><br>
</h3>

</body>
</html>