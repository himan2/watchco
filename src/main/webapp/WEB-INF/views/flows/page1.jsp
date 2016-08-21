<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <title>page1</title>
 
  
 <c:import url="/head-meta" />
 <style>
 body {
   background: url(resources/images/Dark-wooden-website-background.jpg) no-repeat center center fixed; 
}
.table{
display: inline-block;
}
 </style>

</head>

<script type="text/javascript">

'use strict';
var myApp = angular.module('myApp',[]);

myApp.factory('UserService', ['$http', '$q', function($http, $q)
{

return {
 
    deleteFromCart: function(item){
            return $http.post('http://localhost:8080/watchco/flows/deleteFromCart/', item)
                    .then(
                            function(response){
                                return response.data;
                            }, 
                            function(errResponse){
                                console.error('Error while sending data');
                                return $q.reject(errResponse);
                            }
                    );
    },
            fetchAllItems: function(item){
                return $http.post('http://localhost:8080/watchco/flows/fetchAllItems/')
                        .then(
                                function(response){
                                    return response.data;
                                }, 
                                function(errResponse){
                                    console.error('Error while sending data');
                                    return $q.reject(errResponse);
                                }
                        );
        	}
    };
 
}]);
	
	///////////////
	
	
	myApp.controller("abc",['$scope', 'UserService' ,function($scope , $UserService)
	{
		//$scope.data = {"name":"Himanshu"};
		
		//console.log( $scope.data );
		
		/* $UserService.sendData( $scope.data )
		.then(
            	function(response)
            	{
            		console.log( response );	
            	}
	            , 
	            function(errResponse)
	            {
	            	console.error('Error while Sending Data.');
	            } 
        	); */
        	
        	$scope.delFromCart = function( cartId )
        	{
        		$UserService.deleteFromCart(cartId)
        		.then
            	(
            			function(response)
            			{
            				try
            				{
            					$scope.data=response;
            				}
            				catch(e)
            				{
            					$scope.data=[];
            					
            				}
            			console.log($scope.data);
            			}
            			,
            			 
         	            function(errResponse)
         	            {
         	            	console.error('Error while Sending Data.');
         	            } 
            	);
        	}
        	
        	$UserService.fetchAllItems()
        	.then(
                	function(response)
                	{
                		//console.log( response );
                		
                		try
                    	{
                    		$scope.data = response;
                    	}
                    	catch(e)
                    	{
                    		$scope.data = [];
                    	}	
                    	
                    	console.log( $scope.data );
                	}
    	            , 
    	            function(errResponse)
    	            {
    	            	console.error('Error while Sending Data.');
    	            } 
            	); 
			
        	
	}]);

</script>

<body ng-app="myApp" ng-controller="abc">

<c:import url="/head"/>
<br><br><br><br><br>
<div class="container">
  <a href="${flowExecutionUrl}&_eventId=goToCheckout" class="btn btn-primary btn-lg btn pull-right">Current Cart
  <span class="glyphicon glyphicon-chevron-right"></span></a>
  <a href="${pageContext.request.contextPath}/products" class="btn btn-success btn-lg btn pull-left">
  <span class="glyphicon glyphicon-chevron-left"></span>Back to Products</a>
  </div>
<br>
<div ng-repeat="x in data" style="background-color: rgba(255,255,255,0.5);">


<div class="container">
<div class="panel panel-primary">
      
    </div>
    <br>
	
		<div class="row">
<div class="col-sm-6">
 <div class="panel panel-primary" style="margin: auto; width: 85%;">
  
   <div class="panel-body" >
       
          		<img src="${pageContext.request.contextPath}/{{x.ProductImage}}" width="100%" 
          		class="img img-responsive img-thumbnail"></img>
          		</div>
          		</div>
          		</div>
          		
          		<div class="col-sm-6">
				<div class="panel panel-primary">
  
   <div class="panel-body">
          		<table class="table" style="margin: auto; width: 85%;">

<tr>
	<td>Product Name</td>
	<td>{{x.ProductName}}</td>
</tr>

		<input type="hidden" value="${ProductId}" name="pid" />
		
		<tr>
			<td>Qty</td>
			<td>{{x.ProductQty}}</td>
		</tr>
		
		<tr>
			<td>Price</td>
			<td>{{x.ProductPrice}}</td>
		</tr>
		
		<tr>
			<td></td>
			<td><input type="button" value="Delete from Cart" class="btn btn-danger" ng-click="delFromCart(x.CartId)" /></td>
		</tr>

</table>
          		</div>
          	</div>
          </div>


		</div>
		</div>
</div>
		<br>
		<br>
		<br>
</body>

</html>