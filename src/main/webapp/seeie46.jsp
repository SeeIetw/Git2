<%@page import="myclasses.SeeIeUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		<h1>SeeIe Big Comp</h1>
	<hr />
	<form action="seeie46.jsp">
		<input name="x" value="${param.x }">
		<select name="op">
		<option value="1" ${param.op==1?"selected":""}>plus
		<option value="2" ${param.op==2?"selected":""}>minus
		<option value="3" ${param.op==3?"selected":""}>time
		<option value="4" ${param.op==4?"selected":""}>divide
		</select>
		<input name="y" value="${param.y }">
		<input type="submit" value="=">
		<span>${SeeIeUtils.calc(param.x, param.y, param.op)}</span>
	</form>
	</body>
</html>