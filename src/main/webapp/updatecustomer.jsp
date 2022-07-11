<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>first JAVA Project</title>
</head>
<body>

	<%
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String userName=request.getParameter("username");
		String password=request.getParameter("password");
	%>

	<form action="" method="post">
		Customer <input type="text" name="cusid" value="<%= id%>"/><br />
		Name <input type="text" name="name" value="<%= name%>"/><br />
		email <input type="text" name="email" value="<%= email%>"/><br />
		phone Number <input type="text" name="phone" value="<%= phone%>"/><br />
		username <input type="text" name="uname" value="<%= userName%>"/><br />
		password <input type="text" name="uname" value="<%= password%>"/><br />
		<input type="submit" class="" value="update"  name="submit"/>
		
	</form>
</body>
</html>