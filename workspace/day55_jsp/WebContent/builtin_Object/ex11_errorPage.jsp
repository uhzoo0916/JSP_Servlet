<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--  에러 페이지로 사용할 페이지에는 기재 되어 있어야함   -->  
<%@ page errorPage ="/Error/CommonError.jsp" %> <!-- 에러가 뜨면 이 페이지로 이동해줘  -->


<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex11_errorPage.jsp</title>
</head>
<body>
	<h2>Error Page Test</h2>
<!-- http://localhost:8080/day55_jsp/builtin_Object/ex11_errorPage.jsp?id=zoo -->
	<h3>name value : <%=request.getParameter("id").toUpperCase() %></h3>
</body>
</html>