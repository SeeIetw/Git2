<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <jsp:useBean id="member" class="myclasses.Member"></jsp:useBean>
	<jsp:setProperty property="account" value="${param.account}" name="member"/>
	<jsp:setProperty property="email" value="${param.email}" name="member"/>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
			HelloV2, ${member.account }
		<hr>
		${member }
	</body>
</html>