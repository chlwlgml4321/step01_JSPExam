<%@page import="java.util.Date"%>
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
	
	String id=request.getParameter("userId");
	String pwd=request.getParameter("userPwd");
	String name=request.getParameter("userName");
	
	if(id.equals("최") && pwd.equals("1234")){
		
		//인증된 사용자의 정보를 세션에 저장하기!!
		session.setAttribute("sessionName", name);
		session.setAttribute("sessionTime", new Date().toLocaleString());
		
		
		//쿠키에 현재 인증된 사용자의 id를 저장한다.
		Cookie cookie=new Cookie("lastId", id);
		cookie.setMaxAge(60*60*24*365);//1년 
		cookie.setPath("/");
		
		response.addCookie(cookie);
		
		
		//이동하기 
		response.sendRedirect("LoginOk.jsp");  
		
	}else{
		out.println("<script>");
		out.println("alert('"+name+"님 정보를 확인해줘라 ')");
		out.println("history.back()");
		out.println("</script>");
		
	}
%>
</body>
</html>