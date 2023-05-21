<%@page import="javax.websocket.Session"%>
<%@page import="myclasses.Member"%>
<%@page import="myclasses.BCrypt"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String account = request.getParameter("account");
	String password = request.getParameter("password");

	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = DriverManager.getConnection(
		"jdbc:mysql://localhost/iii", "root", "root");

	String sql = "SELECT * FROM member WHERE account = ?"; 
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, account);

	ResultSet rs = pstmt.executeQuery();
	if (rs.next()){
		String hashed = rs.getString("password");
		if (BCrypt.checkpw(password, hashed)){
			// ok
			Member member = new Member();
			member.setAccount(rs.getString("account"));
			member.setEmail(rs.getString("email"));
			session.setAttribute("member", member);
			session.setMaxInactiveInterval(180);
			response.sendRedirect("seeie60.jsp");
		}else{
			// xxxx
			response.sendRedirect("login.jsp");
		}
	}else{
		// xxx
		response.sendRedirect("login.jsp");
	}
		
%>