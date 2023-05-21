<%@page import="myclasses.BCrypt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>


<c:if test="${!empty param.editId }">
	<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/iii" user="root" password="root" />
	<sql:query var="rs">
		SELECT * FROM member WHERE id = ?
		<sql:param>${param.editId }</sql:param>
	</sql:query>
</c:if>
<c:if test="${!empty param.updateId }">
	<sql:update>
		<c:if test="${empty param.password }">
			Update member SET account=?, email=? WHERE id = ?
			<sql:param>${param.account }</sql:param>
			<sql:param>${param.email }</sql:param>
			<sql:param>${param.updateId }</sql:param>
		</c:if>
		<c:if test="${!empty param.password }">
			Update member SET account=?, password=?, email=? WHERE id = ?
			<sql:param>${param.account }</sql:param>
			<sql:param>${BCrypt.hashpw(param.password, BCrypt.gensalt()) }</sql:param>
			<sql:param>${param.email }</sql:param>
			<sql:param>${param.updateId }</sql:param>
		</c:if>
	</sql:update>
	<c:redirect url="seeie60.jsp" />
</c:if>

<head>
<meta charset="UTF-8">
<title>SeeIe Big Comp</title>
</head>
<body>
	<h1>Edit Member</h1>
	<hr />
	<form method="post">
		<input type="hidden" name="updateId" value="${param.editId }">
		<table border="1">
			<tr>
				<th>Account</th>
				<td><input name="account" value="${rs.rows[0].account }"/></td>
			</tr>
			<tr>
				<th>Password</th>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<th>Email</th>
				<td><input name="email" value="${rs.rows[0].email }"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Edit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>