<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <title>Bootstrap Example</title>
 
  
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
#section1 {padding-top:50px;height:800px;color:white;font-size: 25px; }

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
</style>

</head>

<script type="text/javascript">

	var myApp = angular.module('myApp',[]);
	
	myApp.controller("abc",function($scope)
	{
		$scope.data = ${data};
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
 <a href="AddProduct"><button type="button" class="btn btn-success">Add Product</button></a>
 </div>
  <form align="center">
 <input type="text" placeholder="Search Products..." ng-model="search" />
 </form>
 <br><br>
 
 <div class="container">
 <table class="table" id="section1">
 	<tr ng-repeat="x in data | filter:search">
 	
 		<td><img class="enlarge" src="{{ x.ProductImage }}" class="img-rounded" width="250px" ></td>
 		
 		<td>{{x.ProductID}}<br>{{x.ProductName}}<br>{{x.ProductPrice}}</td>
 		
 		<td><a href="${pageContext.request.contextPath}/viewproduct/{{x.ProductID}}" class="btn btn-info">View Product</a><br><br>
 		<a href="#"><button type="button" class="btn btn-warning">Update Product</button></a><br><br>
 		<a href="#"><button type="button" class="btn btn-danger">Delete Product</button></a>
 		</td>
 	</tr>
 </table>
  </div>

</body>
</html>