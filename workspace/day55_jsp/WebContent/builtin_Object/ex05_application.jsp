<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex05_application.jsp</title>
</head>
<body>
<h2>web.xml 설정 파일에 등록 되어 있는 내용을 application을 통해 읽어 오기 </h2>

<%
	Enumeration e = application.getInitParameterNames();
	while(e.hasMoreElements()){	
		String element = (String)e.nextElement(); /* (string): 형변환 */
		//out.print(element+"<br>");
%>
	<h3><%= element %></h3>	
	
<%} //while end 

	String emailValue = application.getInitParameter("email");
	out.print("init param email value : " + emailValue + "<br>");
	
	String infoValue = application.getInitParameter("info");
	out.print("init param info value : " + infoValue + "<br>");
%>


</body>
</html>