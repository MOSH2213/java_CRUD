<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Shoppers</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  </head>
  <body>
  <c:forEach var="cus" items="${cusDetails}">
  		${$cus.id}
  	  	${$cus.name}
  	  	${$cus.email}
  	  	${$cus.phone}
  	   	${$cus.username}
  	   	${$cus.password}  	 	
  </c:forEach>
  
  
    
  </body>
</html>