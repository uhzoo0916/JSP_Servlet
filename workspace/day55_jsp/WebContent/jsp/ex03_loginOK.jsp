<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex03_loginOK.jsp</title>
</head>
<body>
<%
	/*  <<전송 방식 >>

1. 한글처리
method = "post"
request.setCharacterEncoding("EUC-KR");

2. method ="get"
localhost:8080/day55_jsp/jsp/ex03_loginOK.jsp?userId=kingsmile&pwd=1004&hobby=baseball&hobby=soccer&hobby=basketball

 <Connector  URIEncoding="UTF-8" 
 connectionTimeout="20000" maxParameterCount="1000" port="8080" protocol="HTTP/1.1" redirectPort="8443" reloadable="true"/>
		
	*/

	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("userID");
	String pw = request.getParameter("pwd");
	
	//String[] hobbys = request.getParameterValues("hobby"); /* 중요 */
	
	/*위 코드와 동일한 두번째 방법 Map Type */
	Map map = request.getParameterMap();
	String[] hobbys = (String[])map.get("hobby"); 
	/*map.get("hobby");  에러  getmethod 가 Object type --> 형변환 해줘야함 */
%>
 
 당신의 id <%= id %> <br>
 당신의 password :  <%= pw %> <br>
 당신의 취미는 :
 <%
 	if(hobbys != null){	// checkbox 에 선택 
 		for(int i = 0; i<hobbys.length; i++){	
%>
	<%= hobbys[i] %> &nbsp;&nbsp;&nbsp;					
<%  			
 		}//for end 
 		
 	}// if end 
 	
 %>

</body>
</html>