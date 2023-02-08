<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

	// 보고싶은 데이터의 형태를 전달 받고, 
	// what = time
	// what = date
	
	String what = request.getParameter("what");
	
	Date date = new Date();
	SimpleDateFormat dateformatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
	SimpleDateFormat timeformatter = new SimpleDateFormat("현재 시간 HH시 mm분 ss초");
	
	String dateString = dateformatter.format(date);
	String timeString = timeformatter.format(date);
	
	String resultString = null;
	if(what.equals("date")){
		resultString = dateString;
	} else {
		resultString = timeString;
	}


%>

<div class="container">

	<div class="display-3"><%= resultString %></div>

</div>


</body>
</html>