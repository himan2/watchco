<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <title>Products</title>
 
  
 <c:import url="head-meta.jsp" />

<style>

body {
   background: url(resources/images/Dark-wooden-website-background.jpg) no-repeat center center fixed; 
}
input[type=text] {
    
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('resources/images/searchicon.png');
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 50%;
} 
/* .enlarge:hover {
	transform:scale(2,2);
	transform-origin:0 0;
} */
#section1 {padding-top:50px;height:600px;color:black;font-size: 25px; }

.button {
   
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 26px;
    margin: 4px 2px;
    cursor: pointer;
}
/* .table{
display: inline-block;
} */
</style>

</head>

<script type="text/javascript">

	var myApp = angular.module('myApp',[]);
	
	myApp.controller("abc",function($scope)
	{
		$scope.data = ${data};
		
		$scope.search = '${param.item}';
	});
	
</script>



<body ng-app="myApp" ng-controller="abc">

<!-- {{data.ProductName}}
 
 <input type="text" ng-model="data.ProductName" />
 {{data.ProductID}}
 
 <input type="text" ng-model="data.ProductID" />
 {{data.ProductPrice}}
 -->
 
 <c:import url="head.jsp"/>
 <br><br><br><br><br>
 <div align="right">
 
 <%
 if (request.isUserInRole("ADMIN"))
 {
 	%>
 	<a href="AddProduct"><button type="button" class="btn btn-success" 
 	style="position: absolute; top: 100px; right: 80px;">Add Product</button></a>
 	<%
 }
 	%>
 
 </div>
  <form align="center">
 <input type="text" placeholder="Search Products..." ng-model="search" />
 </form>
 <br><br>
 
 <div class="container">
 
 
 
 <table class="table" id="section1">
 	<tr ng-repeat="x in data | filter:search" style="background-color: rgba(255,255,255,0.5);">
 	
 		<td align="center"><img src="${pageContext.request.contextPath}/{{ x.ProductImage }}" class="img-rounded" width="250px" ></td>
 		
 		<td align="center" style="font-weight: bold;"><br>NAME : {{x.ProductName}}<br>PRICE : Rs.{{x.ProductPrice}}</td>
 		
 		<td ><a href="${pageContext.request.contextPath}/viewproduct/{{x.ProductID}}" class="btn btn-info" style="font-weight: bold;" >View Product</a><br><br>
 		<%
 if (request.isUserInRole("ADMIN"))
 {
 	%>
 	<a href="${pageContext.request.contextPath}/updateproduct/{{x.ProductID}}" class="btn btn-warning" style="font-weight: bold;">Update Product</a><br><br>
 		<a href="${pageContext.request.contextPath}/deleteproduct/{{x.ProductID}}"><button type="button" class="btn btn-danger" style="font-weight: bold;">Delete Product</button></a>
 	<%
 }
 	%>
 		
 		</td>
 	</tr>
 </table>
  </div>

</body>
</html>