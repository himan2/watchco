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
   background: url(resources/images/cntimg.jpg) no-repeat center center fixed; 
}


 </style>

</head>
<body>

<c:import url="head.jsp"/>
<br><br><br><br>

<div class="container">

   <div class="container-fluid">
  
  <div class="span">

    <div class="col-sm-9" ><img src="resources/images/cnt1.jpg"  ></div>
    <div class="col-sm-3" ></div>

  </div>
    </div> 
   
  </div>
<br><br>
<div class="container"> 
<div class="row"> 
<div class="col-md-8"> 
<div class="well well-sm"> 
<form> <div class="row"> 
<div class="col-md-6"> 
<div class="form-group"> 
<label for="name"> Name</label> 
<input type="text" class="form-control" id="name" placeholder="Enter name" required="required" /> </div>
<div class="form-group"> <label for="email"> Email Address</label>
<div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope blue"></i> </span>
<input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div> </div>
<div class="form-group"> <label for="subject"> Subject</label> <select id="subject" name="subject" class="form-control" required="required">
<option value="service">General Customer Service</option> 
<option value="product">Product Support</option> </select> 
</div> </div> 
<div class="col-md-6"> 
<div class="form-group"> 
<label for="name"> Message</label> <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required" placeholder="Message"></textarea>
</div> 
</div> 
<div class="col-md-12"> <button type="submit" class="btn btn-primary pull-right" id="btnContactUs"> Send Message</button> </div> </div> </form> </div> </div> 
<div class="col-md-4"> 
<form> 
<br><br><br><br>
<legend><span class="glyphicon glyphicon-globe"></span>Our office</legend> <address> <strong><h3> Chrono Watch Co.</h3>
</strong><br>Crown Building, Opp. A. J. Classic House,<br>
Behind Connaught Metro station, Near Pristine Mall,<br> Kaveri Nagar, New Delhi - 110052<br> 
Phone: +91 20 6933 5533<br>
E-mail: <a href="mailto:#">contact@Chronowatchco.com</a> </address> </form> 
    
</div>
</div> 
</div>

</body>
</html>