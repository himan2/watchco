<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <title>page4</title>
 
  
 <c:import url="/head-meta" />
 <style>
 body {
   background: url(resources/images/Dark-wooden-website-background.jpg) no-repeat center center fixed; 
}
#xyz{position:relative;}


 </style>

</head>

<script type="text/javascript">
'use strict';
		var myApp = angular.module('myApp',[]);
	
		myApp.factory('UserService', ['$http', '$q', function($http, $q)
		{
	 
    	return {
         
    		deleteAllFromCart: function(item){
                    return $http.post('http://localhost:8080/watchco/flows/deleteAllFromCart/', item)
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
		$UserService.deleteAllFromCart();
	}]); 
	
</script>

<body ng-app="myApp" ng-controller="abc">

<c:import url="/head"/>
<br><br><br><br>
<div class="container">
<div id="xyz">
    <div id="abc">
   
    	<img src="${pageContext.request.contextPath}/resources/images/thnk.jpg" class="img img-responsive" class="img-rounded" style="margin: auto; width: 100%;" >
    	<a href="${pageContext.request.contextPath}/index" class="btn btn-success btn-lg btn pull-left" style="position: absolute; top: 540px; left: 350px; ">Chrono Watch co.</a>
    	<a href="${pageContext.request.contextPath}/contact" class="btn btn-warning btn-lg btn pull-bottomleft" style="position: absolute; top: 543px; right: 10px;">Contact Us</a>
    	 
    </div>
    
</div>
</div>

<br><br><br><br>

</body>
</html>