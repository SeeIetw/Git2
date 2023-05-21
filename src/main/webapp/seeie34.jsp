<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		Ooops! Server Busy!<br />
		<%
			out.print(exception);
		
		%>
	</body>
</html>