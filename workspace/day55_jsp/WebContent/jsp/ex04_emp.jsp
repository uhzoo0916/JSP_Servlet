<%@page import="com.kosa.ex04.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex04_emp.jsp</title>
</head>
<body>
<%!
	public String message(){	
		return "daebo2 ㅎㅇㅌ";
		}
%>

<%
	Emp e = new Emp(); // (import 해줘야 에러 안남) 객체 생성
	out.print(e.toString());
	
	e.setEmpno(7788);
	e.setName("유현주");
	e.setPay(8000);
	
	out.print(e.getName());
	
	//안에서는 변수 선언 자유로움 
	int num =88;
%>

<%=e.toString()+"<p><hr>" %>
외부 package에 있는 클래스 객체 생성 <br/>
<%= 1+2+3 %> <br/>
<%=num %><br/>
<%=message() %>


</body>
</html>