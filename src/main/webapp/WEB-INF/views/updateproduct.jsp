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
.form .form-control { margin-bottom: 10px; }
@media (min-width:768px) {
 #home{
  margin-top:50px;
 }  
</style>



</head>
<body>
<c:import url="head.jsp"/>
<br><br><br><br><br>
<div class="container" id="wrap">



<form:form action="${pageContext.request.contextPath}/updateproduct" method="post" modelAttribute="newproduct3" enctype="multipart/form-data">
 
 <form:input type="hidden" path="productId" />

<table align="center" >

<tr><td>Enter Product Name</td>
	<td>
	<form:input type="text" path="productName" class="form-control input-lg" placeholder="productName"  />
	</td>
</tr>

<tr><td>Enter Product ID</td>
	<td>
	<form:input type="text" path="productId" class="form-control input-lg" placeholder="Enter Product ID"  />
	</td>
</tr>

<tr><td>Enter Product Description</td>
	<td>
	<form:input type="text" path="productDescription" class="form-control input-lg" placeholder="Enter Product Description"  />
	</td>
</tr>

<tr><td>Enter Product Category</td>
	<td>
	<form:input type="text" path="productCategory" class="form-control input-lg" placeholder="Enter Product Category"  />
	</td>
</tr>

<tr><td>Enter Product Qty</td>
	<td>
	<form:input type="text" path="productQty" class="form-control input-lg" placeholder="Enter Product Qty"  />
	</td>
</tr>

<tr><td>Enter Product Price</td>
	<td>
	<form:input type="text" path="productPrice" class="form-control input-lg" placeholder="Enter Product Price"  />
	</td>
</tr>

<tr>
				<td><form:label path="productImage" for="productImage">Image:</form:label></td>
				<td>
					<label class="form-control input-lg"><span id="file_display1">Choose Image</span><span style="position: relative; "><form:input path="productFile" onchange="changeFileDisplay1();" type="file" style="opacity:0;" class="form-control"  id="imageFile1"/></span></label>
							  		
					<script type="text/javascript">
								  			
						function changeFileDisplay1()
						{
							document.getElementById("file_display1").innerHTML = $('#imageFile1').val();;
						}
								  		
					</script>
							  		
				</td>
			</tr>

<tr><td> <input type="submit" value="Update Product" class="btn btn-lg btn-primary" style="position: absolute; top: 450px; right: 560px; "></td></tr><br>

</table>
<br><br><br><br><br>
</form:form>
</div>

</body>
</html>