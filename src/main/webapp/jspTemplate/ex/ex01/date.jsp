<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Date now = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
	
	String dateString = formatter.format(now);

%>

<h3><%=dateString %></h3>


</body>
</html>