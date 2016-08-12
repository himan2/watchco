<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <title>page3</title>
 
  
 <c:import url="/head-meta" />
 <style>
 body {
   background: url(resources/images/Dark-wooden-website-background.jpg) no-repeat center center fixed; 
}
 </style>

</head>

<script type="text/javascript">

'use strict';

	var myApp = angular.module('myApp',[]);
	
	///////////////
	
	myApp.factory('UserService', ['$http', '$q', function($http, $q){
	 
    return {
    	
    	fetchAllItems: function(){
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
		$scope.TotalPrice = 0;
		$scope.shippingAddress = '';
		$scope.billingAddress = '';
		
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
                    	
                    	for(var i=0 ; i < $scope.data.length ; i++ )
                    	{
                    		try
                    		{
                    			$scope.TotalPrice += parseInt($scope.data[i].ProductQty*$scope.data[i].ProductPrice);
                    			$scope.shippingAddress = $scope.data[i].ShippingAddress;
                    			$scope.billingAddress = $scope.data[i].BillingAddress;
                    		}
                    		catch(e)
                    		{
                    			console.log(e);
                    		}
                    			
                    	}
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
  <a href="${flowExecutionUrl}&_eventId=BackToConfirmDetails" class="btn btn-success btn-lg btn pull-left"><span class="glyphicon glyphicon-chevron-left"></span>Previous</a>
 <a href="${flowExecutionUrl}&_eventId=confirmOrder" class="btn btn-danger btn-lg btn pull-right">Next<span class="glyphicon glyphicon-chevron-right"></span></a>
  
</div>
				    	
            <legend>Shipping Details</legend>
                    
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            
                            <label>Billing address</label><br><br>
	<textarea rows="5" placeholder="Billing address" class="form-control" style="resize: none;" ng-model="billingAddress">
	</textarea>
                            
                            </div>
                            </div>
                            <br>
                            <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <label>ShippingAddress</label><br><br>
	<textarea rows="5" placeholder="Shipping Address" class="form-control" style="resize: none;" ng-model="shippingAddress">
	</textarea>
	
	
	<label><h2 style="font-family:Monotype Corsiva"><b>Total Price</b></h2></label><br>
		<textarea rows="2" class="form-control" style="resize: none;font-family:Monotype Corsiva;color:darkblack;font-size:20px" ng-model="TotalPrice" ng-disabled="true"></textarea>
		
	
                          </div>
                    </div>
       <br><br><br>
            <div ng-repeat="x in data" style="background-color: rgba(255,255,255,0.9);">

<table class="table" align="center" >

	<tr>    
          <td colspan="2">
          	<div style="margin: auto; width: 45%;">
          		<img src="${pageContext.request.contextPath}/{{x.ProductImage}}" width="100%" class="img img-responsive img-thumbnail"></img>
          	</div>
          </td>  
	</tr> 

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

</table>
</div>            
            
            <br><br><br><br>

</body>
</html>