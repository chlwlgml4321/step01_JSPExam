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
//parameter 한글 인코딩 설정----> 이거 안해주면 한글이 깨져서 출력이됨 ㅠ 
request.setCharacterEncoding("utf-8"); 
String addr="대구" ;
%>

<h1>액션 태그 - include개념 </h1>

<jsp:include page="top.jsp" />
<hr>
여기는 index영역입니다. 

<hr color="red">

<jsp:include page="footer.jsp" >
	<jsp:param value="<%=addr %>" name="address"/>
	<jsp:param value="jihee" name="id"/>
</jsp:include>
</body>
</html>