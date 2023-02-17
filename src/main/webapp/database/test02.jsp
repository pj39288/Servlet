<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.doongie.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String query = "SELECT * FROM `bookmark` ORDER BY `id` DESC;";
	ResultSet resultSet = mysqlService.select(query);
%>

	<h2>즐겨찾기 목록</h2>
	<table border="1">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		
		
		<tbody>
		
			<%
			while(resultSet.next()){
			%>
	
			
		
			<tr>
				<td><%= resultSet.getString("name") %></td>
				<td><a href="<%= resultSet.getString("url") %>"><%= resultSet.getString("url") %></a></td>		
				<td><a href="/database/test02/delete?id=<%=resultSet.getInt("id") %>">삭제</a></td>
					
			</tr>
			
			<%
			} 
			%>		
			
		
		</tbody>
	
	
	</table>

</body>
</html>