<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex02_response.jsp response 객체 다루기 </title>
</head>
<body>

<h1>response 객체 다루기 </h1>
일반 response <%= 100+200+300 %><br/>
Redirect:<%
	//클라이언트 브라우저에게 ex01_basic.jsp를 재 요청 하도록 명령한다 
	out.print("나는 ex02_response 임 ");
 	response.sendRedirect("../jsp/ex01_basic.jsp"); //이 파일로 이동함  
%>

</body>
</html>