<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%
	request.setCharacterEncoding("UTF-8");
	Class.forName("com.mysql.cj.jdbc.Driver");
	String account = request.getParameter("account");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii","root","root");
	PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM member WHERE account=?");
	pstmt.setString(1, account);
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
		out.print("Duplicated!!");
	}
%>