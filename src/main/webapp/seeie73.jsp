<%@page import="myclasses.BCrypt"%>
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
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/iii","root","root");
	PreparedStatement pstmt = conn.prepareStatement("INSERT INTO member (account,password,email) VALUES (?,?,?)");
	pstmt.setString(1, account);
	pstmt.setString(2, BCrypt.hashpw(password, BCrypt.gensalt()));
	pstmt.setString(3, email);
	int n = pstmt.executeUpdate();
	if(n>0){
		response.sendError(HttpServletResponse.SC_OK);
	}else{
		response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	}
%>