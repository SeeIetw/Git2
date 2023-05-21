<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%
if (request.getMethod().equals("POST")) {
	String max = request.getParameter("max");
	if (max != null) {
		try {
	int intMax = Integer.parseInt(max);
	out.print((int) (Math.random() * intMax));
		} catch (Exception e) {
		}
	}
}else{
	out.print("USE POST");
}
%>