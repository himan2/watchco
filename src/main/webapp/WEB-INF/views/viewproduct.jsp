<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="head-meta.jsp"/>



</head>
<body>
<c:import url="head.jsp"/>

<br><br><br><br><br>

<form action="viewproduct" method="post">

<table align="center" >

<tr><td>Product Name</td><td>${ProductName}</td></tr>

<tr><td>Product ID</td><td>${ProductID}</td></tr>

<tr><td>Product Description</td><td>${ProductDescription}</td></tr>

<tr><td>Product Category</td><td>${ProductCategory}</td></tr>


</table>

</form>

</body>
</html>