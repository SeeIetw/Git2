<%@page import="myclasses.Bike"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
    
<%
	int lottery1 = (int)(Math.random()*49+1);
	int lottery2 = (int)(Math.random()*49+1);
	
	request.setAttribute("lottery1", lottery1);
	request.setAttribute("lottery2", lottery2);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		<h1>SeeIe Big Comp</h1>
		<hr />
		<jsp:include page="seeie38.jsp">
		<jsp:param value="100" name="a"/>
		<jsp:param value="200" name="b"/>
		</jsp:include>
		
		<hr />
	</body>
</html>