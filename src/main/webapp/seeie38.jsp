<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");

	String a = request.getParameter("a");
	String b = request.getParameter("b");
	
	int lottery1 = (Integer)(request.getAttribute("lottery1"));
	int lottery2 = (Integer)(request.getAttribute("lottery2"));
	

%>
I'm SeeIe, x=<%=x%>, y=<%=y%>.<br>
		  a=<%=a%>, b=<%=b%>.<br>
		  lottery1=<%=lottery1%>, lottery2=<%=lottery2%>.
