<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <jsp:useBean id="g" class="edu.kosa.quiz.GiftVO"></jsp:useBean>

<jsp:setProperty property="gname" name="g" value="비쵸비세트"/>
<jsp:setProperty property="gno" name="g" value="2"/>
<jsp:setProperty property="g_start" name="g" value="4000"/>
<jsp:setProperty property="g_end" name="g" value="8000"/>

  <h2><%=g.toString() %></h2><hr>
	
<jsp:setProperty property="*" name="g"/>

  선물 세트 : <jsp:getProperty property="gname" name="g"/> <br/>
  선물 번호 : <jsp:getProperty property="gno" name="g"/> <br/>
 	최저값 : <jsp:getProperty property="g_start" name="g"/> <br/>    
  	최고값 : <jsp:getProperty property="g_end" name="g"/> <br/>    
   

<!DOCTYPE html>
<html><head><meta charset="UTF-8">

<title>Quiz_useBean.jsp</title>
</head>
<body>


</body>
</html>