<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import
	url="https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvAgriculturalProduce.aspx"
	var="data"></c:import>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/iii" user="root" password="root" />
<%
String json = (String) pageContext.getAttribute("data");

Properties prop = new Properties();
prop.put("user", "root");
prop.put("password", "root");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii", prop);

Statement stmt = conn.createStatement();
// 1. delete from food
stmt.executeUpdate("DELETE FROM food");
// 2. ALTER TABLE food AUTO_INCREMENT = 1
stmt.executeUpdate("ALTER TABLE food AUTO_INCREMENT = 1");

String sql = "INSERT INTO omiyage (name, feature, pic, city, town) VALUES (?,?,?,?,?)";
PreparedStatement pstmt = conn.prepareStatement(sql);

JSONArray root = new JSONArray(json);
for (int i = 0; i < root.length(); i++) {
	JSONObject row = root.getJSONObject(i);

	pstmt.setString(1, row.getString("Name"));
	pstmt.setString(2, row.getString("Feature"));
	pstmt.setString(3, row.getString("Column1"));
	pstmt.setString(4, row.getString("County"));
	pstmt.setString(5, row.getString("Township"));

	pstmt.executeUpdate();
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SeeIe Big Comp</title>
</head>
<body>
	<table>
		<tr>
			<th></th>
		</tr>

	</table>
</body>
</html>