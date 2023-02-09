<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/jsp/test/test05.jsp">
	<h2>길이 변환</h2>
	<input type="text" name="length"> cm <br>
	
	<label>인치</label><input type="checkbox" name="option" value="inch">
	<label>야드</label><input type="checkbox" name="option" value="yard">
	<label>피트</label><input type="checkbox" name="option" value="feet">
	<label>미터</label><input type="checkbox" name="option" value="meter">
	
	<br>
	
	<button type="submit">변환</button>
	

</form>

</body>
</html>