<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="/jspTemplate/ex/ex02/style.css" type="text/css">

</head>
<body>




	<div id="wrap">
	<jsp:include page="header.jsp" />
	<nav class="main-menu">
		<ul>
			<li class="nav-item"><a class="nav-link" href="#">메뉴1</a></li>
			<li class="nav-item"><a class="nav-link" href="#">메뉴2</a></li>
			<li class="nav-item"><a class="nav-link" href="#">메뉴3</a></li>
			<li class="nav-item"><a class="nav-link" href="#">메뉴4</a></li>
			
		</ul>
	
	</nav>
	<section class="contents bg-primary">
		<img alt="설산" width="100%" src="https://cdn.pixabay.com/photo/2017/06/22/05/14/deogyusan-2429596_960_720.jpg">
	
	</section>
	<footer class="bg-danger"><div class="text-center">Copyright</div></footer>
	
	</div>

</body>
</html>