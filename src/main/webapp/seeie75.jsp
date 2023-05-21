<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/*
	output :
	{
		page : n,
		error : 0,
		data : [
    {
    	name : xxx,
    	tel : 123
    },
    {
    	name : xxx,
    	tel : 123
    }
    ]
		

	}

*/
String pageStr = request.getParameter("page");

if (pageStr == null) {
	return;
}
int p = Integer.parseInt(pageStr);


JSONObject obj = new JSONObject();
if (p <= 0) {
	obj.put("page", p);
	obj.put("error", 1);
	out.print(obj.toString());
	return;
}
if (p > 10) {
	obj.put("page", p);
	obj.put("error", 2);
	out.print(obj.toString());
	return;
}

JSONArray arr = new JSONArray();
for (int i = 0; i < 4; i++) {
	JSONObject row = new JSONObject();
	row.put("name", "SeeIe" + i);
	row.put("tel", (int) (Math.random() * 10000));
	arr.put(row);
}
obj.put("data", arr);
out.print(obj.toString());
%>