<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/iii"
	user="root"
	password="root"
/>
<c:if test="${!empty key }">
<sql:query var="rs">
	SELECT * FROM omiyage WHERE name LIKE ? OR city LIKE ? OR town LIKE ? OR feature LIKE ?";
	<sql:param>${"%" + key + "%" }</sql:param>
	<sql:param>${"%" + key + "%" }</sql:param>
	<sql:param>${"%" + key + "%" }</sql:param>
	<sql:param>${"%" + key + "%" }</sql:param>
</sql:query>
</c:if>








	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
	
	</body>
</html>