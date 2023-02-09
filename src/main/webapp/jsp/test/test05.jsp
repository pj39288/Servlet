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
	int length = Integer.parseInt(request.getParameter("length"));
	
	String[] optionArray = request.getParameterValues("option");

	String optionString = "";
	for(int i = 0; i < optionArray.length; i++){
		optionString += optionArray[i] + " ";
	}
	
	double result1 = 0;
	double result2 = 0;
	double result3 = 0;
	double result4 = 0;

	if(optionString.contains("inch")){
		result1 = length * 0.393701;
	}
	if(optionString.contains("yard")){
		result2 = length * 0.010936;
	}
	if(optionString.contains("feet")){
		result3 = length * 0.032808;
	}
	if(optionString.contains("meter")){
		result4 = length * 0.01;
	}



%>

<h2>변환 결과</h2>
<%=length %> cm <br>
<hr>
<%=result1 %>in <br>
<%=result2 %>yard <br>
<%=result3 %>ft <br>
<%=result4 %>m 




</body>
</html>