<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		<%
			for(int i=1; i<10;i++){
				for(int j=1; j<10;j++){
					out.print(String.format("%d x %d = %d  ",i,j,i*j));
				}
				out.print("<br>");
			}		
		
		%>
		<hr>
		<%
			HashSet<Integer> set = new HashSet<>();
			while(set.size() <6){
				set.add((int)(Math.random()*49+1));
			}
			out.print(set);
		
		
		%>
	</body>
</html>