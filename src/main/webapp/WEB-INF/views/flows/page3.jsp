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
<body>

<c:import url="/head"/>
<br><br><br><br><br>

<div class="container">
  <button type="button" class="btn btn-success btn-lg btn pull-left"><span class="glyphicon glyphicon-chevron-left"></span>Previous</button>
  <button type="button" class="btn btn-danger btn-lg btn pull-right">Next<span class="glyphicon glyphicon-chevron-right"></span></button>
  
</div>


</body>
</html>