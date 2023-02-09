<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="/jsp/test/test04.jsp">
<h2>사칙 연산</h2>

<input type="text" name="number1">

<select name="option">
	<option>+</option>
	<option>-</option>
	<option>X</option>
	<option>/</option>
	
<input type="text" name="number2">

<button type="submit">계산</button>

</select>





</form>

</body>
</html>