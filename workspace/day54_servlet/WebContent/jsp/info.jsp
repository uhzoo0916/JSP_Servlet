<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>info.jsp</title>
</head>
<body>

<h1>INFORMATION</h1> 
<table>
	<form action="../info" method="post" name = "frm">
		<tr>
			<td>NAME :</td>
			<td><input type="text" name="name" placeholder="�̸��� �Է��ϼ���"></td>		
		</tr>
		<tr>
			<td>Phone</td>
			<td><input type="tel" name="tel" placeholder="��ȭ��ȣ�� �Է��ϼ���"></td>		
		</tr>	

		<tr>
			<td>Address</td>
			<td><input type="text" name="address" placeholder="�ּҸ� �Է��ϼ���"></td>		
		</tr>	
			
		<tr>
			<td>
			<input type="submit" value="Submit" >
			<input type="reset" value="Reset">				
			</td>
		</tr>				
	</form>
</table>

</body>
</html>