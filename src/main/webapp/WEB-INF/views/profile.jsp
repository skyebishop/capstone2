<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>User Profile</h1>
	
	Email: ${ user.email }<br />
	Password: ${ user.password }<br />
	
	<a href="/logout">Logout</a>

</body>
</html>