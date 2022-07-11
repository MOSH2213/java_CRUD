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
  		
  		<c:set var="id" value="${cus.id}"/>
  		<c:set var="name" value="${cus.name}"/>
  		<c:set var="email" value="${cus.email}"/>
  		<c:set var="phone" value="${cus.phone}"/>
  		<c:set var="username" value="${cus.username}"/>
  		<c:set var="password" value="${cus.password}"/>
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
    
    <c:url value="updatecustomer.jsp" var="cusupdate">
    	<c:param name="id" value="${id}"/>
    	<c:param name="name" value="${name}"/>
    	<c:param name="email" value="${email}"/>
    	<c:param name="phone" value="${phone}"/>
    	<c:param name="username" value="${username}"/>
    	<c:param name="password" value="${password}"/>
    </c:url>
    <a href="${cusupdate}">
    	<input type="button" name="update" value="update_my_data"/>
    </a>
	
  	
</body>
</html>