<%@page import="myclasses.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member1 = new Member();
	member1.setId(1);
	member1.setAccount("SeeIe");
	member1.setEmail("SeeIe@gmail.com");
%>
<!-- equivalent -->
<jsp:useBean id="member2" class="myclasses.Member"></jsp:useBean>
<jsp:setProperty property="id" value="2" name="member2"/>
<jsp:setProperty property="account" value="Brad" name="member2"/>
<jsp:setProperty property="email" value="Brad@gmail.com" name="member2"/>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		<%
			out.print(member1.getId()+" : "
				+ member1.getAccount()+" : "+member1.getEmail()+" <br>");
		%>
		<hr>
		<%
			out.print(member2.getId()+" : "
				+ member2.getAccount()+" : "+member2.getEmail()+" <br>");
		%>
		<hr>
		
		<jsp:getProperty property="id" name="member2"/> :
		<jsp:getProperty property="account" name="member2"/> :
		<jsp:getProperty property="email" name="member2"/>
	</body>
</html>