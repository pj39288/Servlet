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
	int number1 = Integer.parseInt(request.getParameter("number1"));
	
	String option = request.getParameter("option");

	int number2 = Integer.parseInt(request.getParameter("number2"));

	double result = 0.0;
	if(option.equals("+")){
		result = number1 + number2;
	} else if(option.equals("-")){
		result = number1 - number2;
	} else if(option.equals("X")){
		result = number1 * number2;
	} else {
		result = number1 / number2;
	}

%>

<h2>계산 결과</h2>
<%=number1 %> <%=option %> <%=number2 %> = <%=result %>

</body>
</html>