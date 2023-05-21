<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="seeie34.jsp" %>
<% 
String start = request.getParameter("start");
String rows = request.getParameter("rows");
String cols = request.getParameter("cols");


final int ROWS = rows == null ? 2 : Integer.parseInt(rows);
final int START = start == null ? 2 : Integer.parseInt(start);
final int COLS = cols == null ? 2 : Integer.parseInt(cols);

%>
	


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SeeIe Big Comp</title>
</head>

<body>
	<form onsubmit="return checkData();">
	<input type="number" name="start" value ="<%= START %>"> :
	<input type="number" name="rows" value ="<%= ROWS %>"> x
	<input type="number" name="cols" value ="<%= COLS %>">
	<input type="submit" name="show">
	</form>
	<hr />

	<table border=1 width="100%">
		<%		
		
		for (int k = 0; k < ROWS; k++) {
			out.println("<tr>");
			for (int i = START + k * COLS; i < START + COLS * (k+1); i++) {
				if((k+i)%2==0){
					out.println("<td style='background-color: yellow;'>");
				}else{
					out.println("<td style='background-color: coral;'>");
				}
				for (int j = 1; j < 10; j++) {
					out.print(String.format("%d x %d =%d <br>", i, j, j * i));
				}
				out.println("</td>");
			}
			out.println("</tr>");
		}
		%>

	</table>


</body>
</html>
<script type="text/javascript">
	function checkData(){
		let start = document.getElementById('start').value;
		let rows = document.getElementById('rows').value;
		let cols = document.getElementById('cols').value;
		
		if(start>0 && rows>0 && cols>0){
			return true;	
		} else{
			alert("xxxxxx");
			return false;
		}
	}
</script>