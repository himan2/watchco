<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <title>contact us</title>
 
  
 <c:import url="head-meta.jsp" />
 <style>
 body {
   background: url(resources/images/Dark-wooden-website-background.jpg) no-repeat center center fixed; 
}
 </style>

</head>
<body>

<c:import url="head.jsp"/>
<br><br><br><br>

<div class="container" align="center">
<br><br><br><br><br>
  <img src=resources/images/thnku.jpg class="img-rounded"  >
  <a href="${pageContext.request.contextPath}/index" class="btn btn-success btn-lg btn pull-left" 
  style="position: absolute; top: 340px; left: 660px; ">Back to Home Page</a>
</div>

</body>
</html>