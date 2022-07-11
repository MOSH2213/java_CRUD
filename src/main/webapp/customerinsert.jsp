<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="customerinsert" method="post">
		name <input type="text" name="name"/><br />
		email <input type="text" name="email"/><br />
		pasword <input type="text" name="psw"/><br />
		phone <input type="text" name="phone"/><br />
		username <input type="text" name="uid"/><br />

		<input type="submit" name="submit" value="insert"/>	
	</form>

</body>
</html>