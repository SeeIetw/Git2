<%@page import="myclasses.Bike"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%
	Bike b1 = new Bike();
	b1.upSpeed();
	b1.upSpeed();
	b1.upSpeed();
	b1.upSpeed();
	request.setAttribute("b1", b1);
%>
    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		I'm seeie39.jsp <br>
		<jsp:forward page="seeie40.jsp"></jsp:forward>
	</body>
</html>