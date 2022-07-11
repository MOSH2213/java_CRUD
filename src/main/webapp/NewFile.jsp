<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
    


<%@ page import="jakarta.servlet.http.HttpServlet"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
  <c:forEach var="cus" items="${cusDetails}">
  		
  		<table>
  			<thead>
  				<tr>
  					<th>ID</th>
  					<th>NAME</th>
  					<th>EMAIL</th>
  					<th>PHONE</th>
  					<th>SID</th>
  					<th>PASSWORD</th>
  				</tr>
  			</thead>
  			<tbody>
  				<tr>
  					<td>${cus.id}</td>
  					<td>${cus.name}</td>
  					<td>${cus.email}</td>
  					<td>${cus.phone}</td>
  					<td>${cus.username}</td>
  					<td>${cus.password}</td>
  				</tr>
  			</tbody>
  		</table>
    </c:forEach>

  	
</body>
</html>