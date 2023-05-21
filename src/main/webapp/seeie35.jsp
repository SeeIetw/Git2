<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String result="";
	String op = request.getParameter("op");
	
	try{
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		
		switch(op){
			case "1": result += ( intX + intY ); break;
			case "2": result += ( intX - intY ); break;
			case "3": result += ( intX * intY ); break;
			case "4": 
				result += ( intX / intY ) + " ... " + ( intX % intY ); break;
		}
	}catch(Exception e){
		x = y = op = "";
	}
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		<form>
		<input name="x" value="<%= x %>">
		<select name="op">
			<option value="1" <%= op.equals("1")?"selected":"" %>>plus
			<option value="2" <%= op.equals("2")?"selected":"" %>>minus
			<option value="3" <%= op.equals("3")?"selected":"" %>>time
			<option value="4" <%= op.equals("4")?"selected":"" %>>divide
		</select>
		<input name="y" value="<%= y %>">
		<input type="submit" value="=">
		<span><%= result %></span>
		</form>
	</body>
</html>