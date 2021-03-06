<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="head-meta.jsp"/>
<style>
body {
   background: url(http://localhost:8080/watchco/resources/images/Dark-wooden-website-background.jpg) no-repeat center center fixed; 
}
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


<br><br><br>
<table class="table" style="margin: auto; width: 45%; color:black; font-weight: bold; font-size: 120%;" >

	<tr>    
          <td colspan="2" align="center"><img src="${pageContext.request.contextPath}/${ProductImage}" width="100%" class="img img-responsive img-thumbnail"  ></img></td>  
	</tr> 

<tr>
	<td>Product Name</td>
	<td>${ProductName}</td>
</tr>

<tr>
	<td>Product Description</td>
	<td>${ProductDescription}</td>
</tr>

<tr>
	<td>Product Category</td>
	<td>${ProductCategory}</td>
</tr>

<tr>
	<td>Product Price</td>
	<td>${ProductPrice}</td>
</tr>

	<form action="${pageContext.request.contextPath}/addToCart" method="post">
		<input type="hidden" value="${ProductId}" name="pid" />
		
		<tr>
			<%
 if (!request.isUserInRole("ADMIN"))
 {
 	%>
 	<td>Qty</td>
			<td><input type="number" value="1" min="1" max="10" name="pqty" class="form form-input" /></td>
 	<%
 }
 	%>
			
		</tr>
		
		<tr>
		<%
 if (!request.isUserInRole("ADMIN"))
 {
 	%>
 	<td></td>
			<td><input type="submit" value="Add To Cart" class="btn btn-success"/></td>
 	<%
 }
 	%>
		
			
		</tr>
		
	</form>


</table>
<br><br><br>
</div>
</body>
</html>