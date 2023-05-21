<%@page import="myclasses.Bike"%>
<%
	Bike b1 = (Bike)request.getAttribute("b1");
	b1.upSpeed();
%>
I'm seeie40
<hr />
<%= b1%>
