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
//parameter로 전송된 데이터를 받기(request전송)
	String addr= request.getParameter("address");
	String id=request.getParameter("id");

%>

<h3>여기는 footer.jsp입니다. </h3>
<h1>주소: <%=addr  %>  / 아이디: <%=id %></h1>

</body>
</html>