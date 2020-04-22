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
String addr=" 경기도 판교!!!!!!" ;
%>
<h3>여기는 footer.jsp입니다. </h3>
<h1>주소: <%=addr %> </h1>
<!-- 인데스 파일에 addr변수가 선언되어있기 때문에 인덱스 파일을 실행했을때 오류없이 주소 제주도로 뜸  -->
<!--위에 addr을 한번더 선언해주면 500번 오류뜸  
	하나의 서블릿을 공유 한다는 특징이 있어서 하나의 문서처럼 공유가 됨! -->
</body>
</html>