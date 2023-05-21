<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		<c:set var="x" value="123"/>
		<c:set var="x" value="1234" scope="request"/>
		PageScope x = ${x } <br />
		Request x = ${requestScope.x } <br />
		<hr>
		<c:out value="Hello, World" /><br />
		<c:out value="${x }"></c:out><br />
		<c:out value="${param.x }"></c:out>
		<hr>
		<jsp:useBean id="member" class="myclasses.Member"></jsp:useBean>
		<c:set target="${member }" property="id">10</c:set>
		<c:set target="${member }" property="account">SeeIe</c:set>
		<c:set target="${member }" property="email">SeeIe@SeeIe.com</c:set>
		${member.id } | ${member.account } | ${member.email }<br>
		<c:remove var="member"/> <%//remove %>
		<hr>
		${member } <%//toString %>
		
	</body>
</html>