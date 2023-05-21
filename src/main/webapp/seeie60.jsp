<%@page import="myclasses.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
Member member = (Member) session.getAttribute("member");
if (member == null) {
	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/iii" user="root" password="root" />
<sql:query var="rs">
	SELECT * FROM member
</sql:query>
<c:if test="${!empty param.delid }">
	<sql:update>
		DELETE FROM member WHERE id = ?
		<sql:param>${param.delid }</sql:param>
	</sql:update>
	<c:redirect url="seeie60.jsp" />
</c:if>
<script>
	function delAlert(account) {
		let isDel = confirm("Do you want to delete " + account + " ?");
		//if(isDel){
		//	AJAX
		//	callback=>refresh	
		//}

		return isDel;
	}
</script>
<head>
<meta charset="UTF-8">
<title>SeeIe Big Comp</title>
</head>
<body>
	Welcome, ${member.account } | ${member.email } <br />
	<a href="seeie61.jsp">Add</a>
	<a href="logout.jsp">Logout</a>
	<hr />
	<table border="1" width="100%">
		<tr>
			<th>#</th>
			<th>Account</th>
			<th>Email</th>
			<th>Delete</th>
			<th>Edit</th>
		</tr>
		<c:forEach items="${rs.rows }" var="rd">
			<tr>
				<td>${rd.id }</td>
				<td>${rd.account }</td>
				<td>${rd.email }</td>
				<td><a href="?delid=${rd.id }"
					onclick="return delAlert('${rd.account}')">Del</a></td>
				<td><a href="seeie62.jsp?editId=${rd.id }">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>