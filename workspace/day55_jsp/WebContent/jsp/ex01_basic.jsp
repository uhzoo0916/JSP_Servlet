<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 페이지 지시어를 가장 많이 쓴다  -->    
 <%@page import="java.util.* , java.io.*, java.net.*" %>
   
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title> ex01_basic.jsp   JSP Basic</title>
</head>
<body>
<h2> JSP Basic </h2>
<div>아무거나~~~~</div>
<%
	//스크립트릿 : 함수를 제외한 자바 코드 - 변수선언, 제어문,.....
	String str = "안녕!!!  JSP를 이용한 웹 브라우저에 출력합니다.";
%>
<h3><%= str %></h3><hr>

<%
	//스크립트릿 : 함수를 제외한 자바 코드 - 변수선언, 제어문,.....
	String str2 = "안녕!!! 22222 JSP를 이용한 웹 브라우저에 출력합니다.";
	out.print(str2);
	
	int su = 300;
	
	for(int i = 1; i<11; i++){   //out.print(i +"<br />");  %>
	
	<h3><%= i %></h3>
		
<%} // end for %><hr>

<%!
	//선언문 : 자바 문법, 변수선언, 함수,....
		
	public String show(){
		return "안녕 jsp 입니다.";
	}
%><hr>
<!-- 표현식 -->
<%= show() %> <br />
<%= "String output!!" %> <br />
<%= 12345 %><br />
<%= 12.34 %><br />
<h2>su + 200 = <%= su + 200 %></h2>
<br /> <%= str2 %>
<%-- <%= num %> --%>

</body>
</html>