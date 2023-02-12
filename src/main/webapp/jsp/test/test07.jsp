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
<h2>검색 결과</h2>
<table class="table text-center">

<%
	List<Map<String, Object>> list = new ArrayList<>();

	Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	list.add(map);
	map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);

%>


<thead>
	<tr>
		<th>메뉴</th>
		<th>상호</th>
		<th>별점</th>
	</tr>
</thead>

<tbody>

<%
	String menu = request.getParameter("menu");
	String optionString = request.getParameter("option");
	
	out.println("optionString = " + optionString); 

	int option = 0;
	
	if(optionString == null){
		option = 0;
	} else if(optionString.equals("4") ){
		option = Integer.parseInt(optionString);
	} 
	
	out.println("option = "+  option);
	
	
	if(option == 4){
		for(int i = 0; i < list.size(); i++){
			
			if(list.get(i).get("menu").equals(menu) && (double)list.get(i).get("point") > 4.0){

%>

			<tr>
				<td><%=list.get(i).get("name") %></td>
				<td><%=list.get(i).get("menu") %></td>
				<td><%=list.get(i).get("point") %></td>
			</tr>
<%

				
			}
		}
		
	} else {
		for(int i = 0; i < list.size(); i++){
			if(list.get(i).get("menu").equals(menu)){
%>
			<tr>
				<td><%=list.get(i).get("name") %></td>
				<td><%=list.get(i).get("menu") %></td>
				<td><%=list.get(i).get("point") %></td>
			</tr>
<%
			}
		}
		
	}


%>
	

	

</tbody>



</table>



</body>
</html>