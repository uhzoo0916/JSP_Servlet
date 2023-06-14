<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex06_application.jsp</title>
</head>
<body>
	<h2>application 웹 경로 </h2>
	
<!-- 
가상 경로 : (웹 브라우저에서 바라보는 경로 

물리적 경로 : 
C:\Users\User\Desktop\daebo\7_Jsp_Servlet\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\day55_jsp\day55_jsp


이클립스를 통한 톰켓 구동시 물리적 경로 : 
C:\Users\User\Desktop\daebo\7_Jsp_Servlet\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\day55_jsp\download\memo.txt

 -->
 
 <%
 	request.setCharacterEncoding("utf-8");
 	String resourcePath ="../download/memo.txt";
 	out.print(resourcePath + "<br>");
 	
 	//가상 경로에서 --> 물리적 경로 얻어내기 
 	out.print(request.getContextPath() + "<br>"); //day_55.jsp
 	
 	String contextPath = application.getRealPath(request.getContextPath());
 	String realPath = application.getRealPath(resourcePath);
 	out.print("contextPath" + contextPath + "<br>");
 	out.print("realPath" + realPath + "<br>");
 %>

</body>
</html>