<%@page import="myclasses.Bike"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		<%
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss.SSSS");
			out.print(sdf.format(new Date()));
	
		%>
		<hr />
		<%
			Bike b1 = new Bike();
			b1.upSpeed();
			b1.upSpeed();
			b1.upSpeed();
			b1.upSpeed();
			out.print(b1);
		
		
		%>
	</body>
</html>