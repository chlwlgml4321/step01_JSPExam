<%@page import="java.util.concurrent.atomic.AtomicInteger"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.ANEWARRAY"%>
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
<%--
	//application에 저장된 count 수를 가져온다. 
 	Object ojb=application.getAttribute("count");
	
   if(ojb==null){//한번도 저장한 값이 없을때 
	application.setAttribute("count", 1);
	ojb=application.getAttribute("count");
	 
   }else{
	 //읽어온 값에 +1을 하고 다시 저장한다.
	   int count=(int)ojb;
	   if(session.isNew()){//새로고침해도 방문자 수 안늘어남 
	   count++;
	   application.setAttribute("count", count);
	   }
   }
	
	//최종값을 출력한다. 
--%>

<%
	//application에 저장된 count 수를 가져온다. 
	Object ojb=application.getAttribute("count");
	
 	if(ojb==null){//한번도 저장한 값이 없을때 
		application.setAttribute("count", new AtomicInteger());
		ojb=application.getAttribute("count");
	 
 }
 	
 	AtomicInteger it=(AtomicInteger)ojb;
 	int count= it.get(); //현재값 가져오기 
 	if(session.isNew()){
 		count =it.incrementAndGet(); //증가한 후 값 가져오기 
 		}
 	
%>
	
<h3>방문자 수: <%=application.getAttribute("count")%> 명 </h3>

</body>
</html>