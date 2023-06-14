<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
<title>ex03_login.jsp</title>
</head>
<body>
	
	<form action ="ex03_loginOK.jsp" method ="post">
	ID : <input type="text" name ="userID"><br/>
	PWD : <input type="password" name ="pwd"><br/>	
	
	Hobby :
		<input type="checkbox" name ="hobby" value ="baseball">BaseBall	
		<input type="checkbox" name ="hobby" value ="soccer">Soccer		
		<input type="checkbox" name ="hobby" value ="basketball">Basketball <br/>
		
		<input type="submit" value ="·Î±×ÀÎ">			
	</form>

</body>
</html>