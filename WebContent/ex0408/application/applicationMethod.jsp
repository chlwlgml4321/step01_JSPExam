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
<h1>ServletContext -application 변수 </h1>

<h3>
application.getContextPath(): <%=application.getContextPath() %><p>
application.getRealPath("/"): <%=application.getRealPath("/") %><p>
application.getMajorVersion(): <%=application.getMajorVersion() %><p>
application.getMinorVersion(): <%=application.getMinorVersion() %><p>
application.getServerInfo(): <%=application.getServerInfo() %><p>

</h3>
<h3>application 에 정보 저장하기 </h3>
<%
application.setAttribute("message", "졸려");
application.setAttribute("addr", "서울시 강남구....");
%>

<h3> appliction정보 확인하기 </h3>
메세지: <%=application.getAttribute("message") %><p>
주소: <%=application.getAttribute("addr") %><p>

<a href="../session/sessionGet.jsp">정보 확인하러가기 </a>

</body>
</html>


