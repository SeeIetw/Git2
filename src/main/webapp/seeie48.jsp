<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			<title>SeeIe Big Comp</title>
	</head>
	<body>
		Account: ${param.account } <hr />
		${paramValues.habit[0] }<br />
		${paramValues.habit[1] }<br />
		${paramValues.habit[2] }<br />
		${paramValues.habit[3] }<br />
		${paramValues.habit[4] }<br />
		${paramValues.habit[5] }<br />
		${paramValues.habit[6] }<br />
		
		Method: <%=request.getMethod() %><br />
		Method: ${pageContext.request.method}<br />
		IP: <%= request.getRemoteAddr() %><br />
		IP: ${pageContext.request.remoteAddr}<br />
		Locale: <%=request.getLocalAddr() %><br />
		Language: <%=request.getLocale().getDisplayLanguage() %>
	</body>
</html>