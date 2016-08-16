<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <title>page2</title>
 
  
 <c:import url="/head-meta" />
 <style>
 body {
   background: url(resources/images/Dark-wooden-website-background.jpg) no-repeat center center fixed; 
}
#wrap{

background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #FFFFFF), color-stop(1, #D3D8E8));
/* Webkit (Chrome 11+) */ 
background-image: linear-gradient(to bottom, #FFFFFF 0%, 	#8B4513 100%);


}  
legend{
 color:black;
 font-size:25px;
 font-weight:bold;
 text-align: center;
}
.signup-btn {
  background: #79bc64;
  background-image: -webkit-linear-gradient(top, #79bc64, #578843);
 
  -webkit-border-radius: 4;
  border-radius: 4px;
  text-shadow: 0px 1px 0px #898a88;
  -webkit-box-shadow: 0px 0px 0px #a4e388;
  box-shadow: 0px 0px 0px #a4e388;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  border: solid #3b6e22  1px;
  text-decoration: none;
}

.signup-btn:hover {
  background: #79bc64;
  background-image: -webkit-linear-gradient(top, #79bc64, #5e7056);
  background-image: linear-gradient(to bottom, #79bc64, #5e7056);
  text-decoration: none;
}

.form .form-control { margin-bottom: 10px; }
@media (min-width:768px) {
 #home{
  margin-top:50px;
 }
 </style>

</head>

<script type="text/javascript">
'use strict';
		var myApp = angular.module('myApp',[]);
	
		myApp.factory('UserService', ['$http', '$q', function($http, $q)
		{
	 
    	return {
         
            updateAddresses: function(item){
                    return $http.post('http://localhost:8080/watchco/flows/updateAddresses/', item)
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
		$scope.shippingAddress = '';
		$scope.billingAddress = '';
        
		$scope.updated = '';
		
        $scope.UpdateAddresses = function()
        {
        	$scope.data = { "shippingAddress" : $scope.shippingAddress , "billingAddress" : $scope.billingAddress };
        	
        	console.log( $scope.data );
        	
        	$UserService.updateAddresses( JSON.stringify( $scope.data ) )
        	.then
        	(
        			function(response)
        			{
        				console.log(response);
        				
        				$scope.updated = response.status;
        				
        				window.setTimeout(function()
        				{
        					$scope.$apply( $scope.updated = '' );
        				},3000);
        				
        			}
        			,
        			 
     	            function(errResponse)
     	            {
     	            	console.error('Error while Sending Data.');
     	            } 
        	);
        }
	}]); 
	
</script>

<body ng-app="myApp" ng-controller="abc">

<c:import url="/head"/>
<br><br><br><br>
<div class="container" id="wrap">
  <a href="${flowExecutionUrl}&_eventId=BackToCart" class="btn btn-primary btn-lg btn pull-left" style="position: absolute; top: 340px; left: 150px; "><span class="glyphicon glyphicon-chevron-left"></span>Back to Cart</a>
  <a href="${flowExecutionUrl}&_eventId=ViewCompleteOrder" class="btn btn-primary btn-lg btn pull-right" style="position: absolute; top: 340px; right: 150px; " >Confirm Details<span class="glyphicon glyphicon-chevron-right"></span></a>

 <form >
					    	
            <legend>Shipping Details</legend>
                    
                    <div class="row" style="margin: auto; width: 45%;">
                        <div class="col-xs-12 col-md-12">
                            
                            <label>Billing address</label><br><br>
	<textarea rows="5" placeholder="Billing address" class="form-control" style="resize: none;" ng-model="billingAddress">
	</textarea>
                            
                            </div>
                            </div>
                            <br>
                            <div class="row" style="margin: auto; width: 45%;">
                        <div class="col-xs-12 col-md-12">
                            <label>ShippingAddress</label><br><br>
	<textarea rows="5" placeholder="Shipping Address" class="form-control" style="resize: none;" ng-model="shippingAddress">
	</textarea>
                          </div>
                    </div>
                    
                    			  <br />
          
                    <input type="button" value="Update" class="btn btn-success" style="position: absolute; top: 490px; left: 450px; " ng-click="UpdateAddresses()" ng-disabled="shippingAddress=='' || billingAddress==''">
                        <label class="alert alert-success" style="position: absolute; top: 490px; left: 530px; " ng-show="updated=='updated'">Updated</label>
                        <br><br><br><br><br><br>
            </form>          
</div>

</body>
</html>