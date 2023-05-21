<%@page import="myclasses.SeeIeUtils"%>
<%@page import="org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/iii" user="root" password="root" />
<sql:query var="rs">
		SELECT * FROM food 
	</sql:query>
<c:set var="amount">${rs.rowCount }</c:set>
<c:set var="rpp" value="10" />
<c:set var="pages">
	${(rs.rowCount-rs.rowCount%rpp)/rpp + (rs.rowCount%rpp==0?0:1)}
</c:set>
<c:set var="page">${param.page==null?1:param.page }</c:set>
<c:set var="prev">${SeeIeUtils.prevPage(page) }</c:set>
<c:set var="next">${SeeIeUtils.nextPage(page, pages) }</c:set>
<c:set var="start">${(page-1)*rpp }</c:set>
<sql:query var="rs">
	SELECT * FROM food LIMIT ${start }, ${rpp }
</sql:query>

<head>
<meta charset="UTF-8">
<title>SeeIe Big Comp</title>
</head>
<body>
	<h1>美食特色小吃</h1>
	<hr />
	總筆數: ${amount } <br />
	頁數: ${page } / ${pages }  <a href="?page=${prev }">上一頁</a>|<a href="?page=${next }">下一頁</a>
	<table border="1" width="100%">
		<tr>
			<th>#</th>
			<th>Name</th>
			<th>Tel</th>
			<th>Pic</th>
		</tr>
		<c:forEach items="${rs.rows }" var="rd">
			<tr>
				<td>${rd.id }</td>
				<td>${rd.name }</td>
				<td>${rd.tel }</td>
				<td><img src="${rd.pic1 }" width="80px" height="60px"></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>