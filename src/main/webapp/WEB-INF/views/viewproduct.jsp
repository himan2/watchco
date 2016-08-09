<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="head-meta.jsp"/>
<style>

#wrap{

background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #FFFFFF), color-stop(1, #D3D8E8));
/* Webkit (Chrome 11+) */ 
background-image: linear-gradient(to bottom, #FFFFFF 0%, 	#8B4513 100%);
}

</style>


</head>
<body>
<c:import url="head.jsp"/>

<br><br><br><br><br>

<div class="container" id="wrap">

<form action="viewproduct" method="post">
<br><br><br>
<table class="table" align="center" >

	<tr>    
          <td colspan="2"><img src="${pageContext.request.contextPath}/${ProductImg}" width="40%" class="img img-responsive img-thumbnail"></img></td>  
	</tr> 

<tr>
	<td>Product Name</td>
	<td>${ProductName}</td>
</tr>

<tr><td>Product Description</td><td>${ProductDescription}</td></tr>

<tr><td>Product Category</td><td>${ProductCategory}</td></tr>


</table>
<br><br><br>
</form>
</div>
</body>
</html>