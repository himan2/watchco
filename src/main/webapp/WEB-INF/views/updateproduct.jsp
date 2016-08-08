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

<form:form action="${pageContext.request.contextPath}/updateproduct" method="post" modelAttribute="newproduct3" enctype="multipart/form-data">
 
 <form:input type="hidden" path="productId" />

<table align="center" >

<tr><td>Enter Product Name</td><td><form:input type="text" placeholder="Enter Product Name" path="productName" /></td></tr>

<tr><td>Enter Product ID</td><td><form:input type="text" placeholder="Enter Product ID" path="productId"/></td></tr>

<tr><td>Enter Product Description</td><td><form:input type="text" placeholder="Enter Product Description" path="productDescription"/></td></tr>

<tr><td>Enter Product Category</td><td><form:input type="text" placeholder="Enter Product Category" path="productCategory"/></td></tr>

<tr><td>Enter Product Qty</td><td><form:input type="text" placeholder="Enter Product Qty" path="productQty"/></td></tr>

<tr><td>Enter Product Price</td><td><form:input type="text" placeholder="Enter Product Price" path="productPrice"/></td></tr>

<tr>
				<td><form:label path="productImage" for="productImage">Image:</form:label></td>
				<td>
					<label class="form-control"><span id="file_display1">Choose Image</span><span style="position: relative; "><form:input path="productFile" onchange="changeFileDisplay1();" type="file" style="opacity:0;" class="form-control"  id="imageFile1"/></span></label>
							  		
					<script type="text/javascript">
								  			
						function changeFileDisplay1()
						{
							document.getElementById("file_display1").innerHTML = $('#imageFile1').val();;
						}
								  		
					</script>
							  		
				</td>
			</tr>

<tr><td> <input type="submit" value="Update" class="btn btn-primary"></td></tr>

</table>

</form:form>

</body>
</html>