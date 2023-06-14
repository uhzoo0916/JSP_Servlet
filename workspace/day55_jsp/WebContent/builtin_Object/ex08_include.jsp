<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%@include file = "/module/SubInclude.jsp" %>    --%> 
<!-- 해당 파일을 현재 파일 내부에 포함하고 있다. -->
    
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex08_include.jsp</title>
</head>
<body>
<!-- 		해당 파일로 이동했다가 돌아옴 -->
		<jsp:include page="/module/SubInclude.jsp"/>
		<%
			int num=200;/*  SubInclude에 이미 선언되어 있으므로 에러  */
		%>
		
		<h3>Include File Data</h3>
		SubInclude file data : <%=num %> <br>
		<%num = 900; %>
		Change Data: <%=num %>
		

</body>
</html>