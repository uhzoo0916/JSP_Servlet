<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex09_foward.jsp</title>
</head>
<body>
<form action ="../module/SubForwardSample.jsp" method="post">
	<select name ="code">
		<option>선택 하세요</option>
		<option value ="A"> Hello World </option>
		<option value ="B"> JAVA World </option>
		<option value ="C"> JSP World </option>
	</select>
	<input type = "submit" value ="전송">

</form>

</body>
</html>