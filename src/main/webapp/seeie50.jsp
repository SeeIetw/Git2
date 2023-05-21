<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	Integer a = (Integer)session.getAttribute("a");
	a++;
	session.setAttribute("a", a);
	
	
	Integer b = (Integer)application.getAttribute("b");
	b++;
	application.setAttribute("b", b);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		I am brad50.<hr>
		${sessionScope.names[2] }<br>
		${applicationScope.names[2] }<br>
		<hr>
		a = ${sessionScope.a }
		b = ${applicationScope.b }
	</body>
</html>