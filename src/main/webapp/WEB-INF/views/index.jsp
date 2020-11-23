<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		<h1>Task Tracking Database</h1><br /><br />
		
		<h3>Log in below:</h3>
		<form method="post" action="/login">
		Email:<input type="email" name="email"/><br />
		Password:<input type="text" name="password"/><br />
		
		<input type="submit"/>
		</form>
		<br /><br />
		<h3>Not signed up? Register below:</h3>
		<form method="post" action="/register">
		Email:<input type="text" name="email"/><br />
		Password:<input type="text" name="password"/><br />
		<input type="submit"/>
		</form>
		
		

</body>
</html>