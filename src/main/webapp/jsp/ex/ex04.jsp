<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 과일 이름 리스트
	List<String> fruitList = new ArrayList<>();
	fruitList.add("사과");
	fruitList.add("바나나");
	fruitList.add("딸기");
	fruitList.add("망고");
	
	// String result = "";
	//for(int i = 0; i < fruitList.size(); i++){
	//	result += "<h2>" + fruitList.get(i) + "<h2>";
	//}
	
	for(String fruit:fruitList){
		out.println(fruit);
	}
	
		
%>

<table border="1">
	<tr>
		<td>복숭아</td>
	</tr>
	
	<tr>
		<td>배</td>
	</tr>
	
</table>





</body>
</html>