<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int height = Integer.parseInt(request.getParameter("height"));
	int weight = Integer.parseInt(request.getParameter("weight"));
	
	double BMI =  weight / ((height / 100.0) * (height / 100.0));
	
	String resultString = null;
	if(BMI <= 20){
		resultString = "저체중";
	} else if(BMI <= 25){
		resultString = "정상";
	} else if(BMI <= 30){
		resultString = "과체중";
	} else {
		resultString = "비만";
	}
%>

<h2>BMI 측정 결과</h2>
<div>당신은 <span class="text-info"><%= resultString %></span> 입니다</div>
<div>BMI 수치 = <%= BMI %></div>


</body>
</html>