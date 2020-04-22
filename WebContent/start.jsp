<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>이제 쉬어요</h1>
	
	<%-- 
	<%
		//자바코드 작성
		String name = "최지희";
		out.println(name + "님 반가워요"); //이건브라우져출
		System.out.println("난 어디 출력되니? ");//이건 콘솔(서버창)에 출력!
	%>
--%>
	<h3>오늘 점심 뭐먹지 ?</h3>

	<%
		String menu = "짜장";
	%>
	<h3>
		메뉴:
		<%=menu%></h3>
		메소드 호출: <%= test(20) %>
		
		<%! 
		String name;
		int age;
		
		//메소드 선언 ---->메소드선언은 !안에서만!!!!!!!!!!
		public String test(int age){
		System.out.println("test메소드 선언되었습니다. "); //이건 콘솔에 출력되는거~
		return age+"살 입니다.... ";
		}%>
		
		 
		
		<%
		Date today=new Date();  %>
		
		<%= today.toLocaleString() %>
		
		<hr>
		<%
		 out.println("졸립죠? ");//줄바꿈 안됨ㅠ 
		 out.println("자고싶다아   ");//ln붙히면 줄을 바꿔서 내려보냄 
		 out.println("집가고싶다 ");
		
		%>
		
			<hr>
		<%
		 out.print("졸립죠?<br> ");//줄바꿈 됨 
		 out.print("<h1 style='color:red'>자고싶다아 </h1><br>   ");//자바코드안에 css, html코드 섞어 쓸수있다!!! 
		 out.print("집가고싶다<br>  ");
		
		%>
</body>
</html>