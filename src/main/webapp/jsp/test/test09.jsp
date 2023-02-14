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

<div>

	<h1>오늘부터 1일</h1>
	<%
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DATE, 100);
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		
		String dateString = formatter.format(calendar.getTime());
	
	%>
	
	<div>100일 : <%=dateString %></div>

</div>

</body>
</html>