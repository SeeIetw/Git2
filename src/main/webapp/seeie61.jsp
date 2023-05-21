<%@page import="myclasses.BCrypt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<!DOCTYPE html>
<script type="text/javascript">
function checkAccount(){
	$('#mesg').load('seeie72.jsp?account='+$('#account').val());
}

function add(){
	$.post("seeie73.jsp",{
		"account" : $('#account').val(),
		"password" : $('#password').val(),
		"email" : $('#email').val()	
	},function(data, status){
		if(status == 'success'){
			console.log("success");
			location.href = 'seeie60.jsp';
		}
	})
}


</script>



<html>


<c:if test="${!empty param.account }">
	<c:if test="${pageContext.request.method == 'GET'}">
		<c:redirect url="seeie60.jsp" />
	</c:if>
	<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/iii" user="root" password="root" />
	<sql:update>
		INSERT INTO member (account, password, email) VALUES (?,?,?)
		<sql:param>${param.account }</sql:param>
		<sql:param>${BCrypt.hashpw(param.password, BCrypt.gensalt()) }</sql:param>
		<sql:param>${param.email }</sql:param>
	</sql:update>
	<c:redirect url="seeie60.jsp" />
</c:if>
<head>
<meta charset="UTF-8">
<title>SeeIe Big Comp</title>
</head>
<body>
	<h1>New Member</h1>
	<hr />
	<form method="post">
		<table border="1">
			<tr>
				<th>Account</th>
				<td><input id="account" name="account" onblur="checkAccount()"/><span id="mesg"></span></td>
			</tr>
			<tr>
				<th>Password</th>
				<td><input id="password" type="password" name="password" /></td>
			</tr>
			<tr>
				<th>Email</th>
				<td><input id="email" name="email" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input onclick="add()" type="submit" value="Add" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>