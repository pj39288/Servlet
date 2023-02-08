<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for(int i = 0; i < scores.length; i++){
		sum += scores[i];
	}
	double average = sum / (double) scores.length;
	
%>
<h2> 점수의 평균은 <%=average %> 입니다</h2>

<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;	
	for(String answer:scoreList){
		
		if(answer.equals("O")){
			score += 100/scoreList.size();			
		}
		
	}
	
%>
<h2> 시험점수는 <%=score %> 입니다</h2>

<%!
	int sumAll(int number){
		int sum = 0;
		for(int i = 1; i <= number; i++){
			sum += i;
		}
		
		return sum;
	}
	
%>

<h2>1부터 50까지의 합은 <%= sumAll(50) %>입니다</h2>

<%
	String birthDay = "20010820";
	int year = Integer.parseInt(birthDay.substring(0,4));
	int age = 2023 - year;

%>

<h2><%=birthDay %>의 나이는 <%=age %> 입니다</h2>

</body>
</html>