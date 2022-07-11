<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <c:forEach var="cus" items="${cusDetails}">
  		<h1>${$cus.id}</h1>
  		<h1>${$cus.name}</h1>
  		<h1>${$cus.email}</h1>
  		<h1>${$cus.phone}</h1>
  		<h1>${$cus.username}</h1>
  		<h1>${$cus.password}</h1>
   </c:forEach>
</body>
</html>