<%@page import="com.kosa.ex04.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- new로 객체 생성 했던 것을 tag 객체 생성 하기 위해 액션 태그 - useBean   -->
<jsp:useBean id="emp" class ="com.kosa.ex04.Emp"></jsp:useBean>
    
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex13_useBean.jsp</title>
</head>
<body>

<%
	/* 자바에서 객체 생성 방법 */
	Emp e = new Emp();
	out.print(e.toString() + "<hr>"); /* emp에 tostring 넣어놨음  */
	e.setEmpno(1004);
	e.setName("유현주");
	e.setPay(9000);
	
	emp.setName("yuna kim");
	out.print(emp.getName());
	
%><hr>
<%=e.toString() %> <p>
<h3><%=emp.toString() %></h3>

</body>
</html>