<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/iii"
	user="root"
	password="root"
/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		<sql:update>
			INSERT INTO cust (cname, tel, birthday) 
			VALUES ('aa','0231321412','1998-02-02')
		</sql:update>
	</body>
</html>