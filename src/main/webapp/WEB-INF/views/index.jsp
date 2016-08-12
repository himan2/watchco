<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<c:import url="head-meta.jsp"/>

<style>
body {
   background: url(resources/images/Dark-wooden-website-background.jpg) no-repeat center center fixed; 
}

 body {
      position: relative;
  }
 body {
      position: relative;
  }
  #section1 {padding-top:50px;height:800px;color:white; }


h1{
font-family: "Algerian"
}
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }

h4 {
    color: black;
}
.jumbotron{
background-image:url("http://localhost:8080/watchco/resources/images/main_EQB-600.jpg");
}
</style>
</head>
<body>

<c:import url="head.jsp"/>

<div class="jumbotron">
<div class="container">
  
   <div class="container-fluid">
  
  <div class="span">

    <div class="col-sm-3" ><img src="resources/images/meni_logo.png"  alt="Cinque Terre" width="203" height="109"></div>
    <div class="col-sm-9" ><h1 >CHRONO WATCH CO.</h1> </div>

  </div>
    </div> 
   
  </div>
</div>

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">

    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/offer2.jpg" alt="rado" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/images/gsteel.jpg" alt="rolex" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="resources/images/gbluetooth.jpg" alt="casio" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/images/sheen.jpg" alt="omega" width="460" height="345">
      </div>
    </div>

  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br>

<div id="section1" class="container">
  
<div class="panel panel-primary">
      <div class="panel-heading">CASIO PRODUCTS</div>
    </div>
    <br>
  <div>
<div class="row" >
 <div class="col-sm-4" >
   <div class="panel panel-primary">
   <div class="panel-heading"><h3> CASIO G-SHOCK SERIES </h3></div>
   <div class="panel-body">
     <img src="resources/images/gulf.jpg"  alt="Cinque Terre" width="100%" class="img img-responsive" ><h4 style="background-color: rgba(255,255,255,0.8);"> An electronic crown switch and the use of multiple motors combine to enable conflict-free simultaneous operation of multiple functions, and smooth switching between functions.</h4></div>
    </div>
    </div>

<div class="col-sm-4" >
   <div class="panel panel-primary">
   <div class="panel-heading"><h3> EDIFICE SERIES </h3></div>
   <div class="panel-body">
     <img src="resources/images/mud.jpg"  alt="Cinque Terre" width="100%" class="img img-responsive"><h4 style="background-color: rgba(255,255,255,0.8);"> FeaturesSmart Access 
      This new MUDMASTER model was created especially for this whose work takes it into areas where piles of rubble, dirt, and debris are present.</h4></div>
    </div>
    </div>
    
 <div class="col-sm-4" >
   <div class="panel panel-primary">
   <div class="panel-heading"><h3> PRO TREK SERIES </h3></div>
   <div class="panel-body">
     <img src="resources/images/protrek1.jpg"  alt="Cinque Terre" width="100%" class="img img-responsive"><h4 style="background-color: rgba(255,255,255,0.8);">Introducing RANGEMAN, 
  the latest addition to the Master of G series of tough and rugged time pieces that are designed and engineered to stand up to the most grueling conditions imaginable..</h4></div>
    </div>
    </div>
</div>
<br>
<div class="row" >
 <div class="col-sm-6" >
   <div class="panel panel-primary">
   <div class="panel-heading"><h3> SHEEN SERIES </h3></div>
   <div class="panel-body">
     <img src="resources/images/sheenp.jpg"  alt="Cinque Terre" width="504" height="236"><h4 style="background-color: rgba(255,255,255,0.8);"> An electronic crown switch and the use of multiple motors combine to enable conflict-free simultaneous operation of multiple functions, and smooth switching between functions.</h4></div>
    </div>
    </div>
    
<div class="col-sm-6" >
   <div class="panel panel-primary">
   <div class="panel-heading"><h3> VINTAGE SERIES </h3></div>
   <div class="panel-body">
     <img src="resources/images/vintage.jpg"  alt="Cinque Terre" width="504" height="236"><h4 style="background-color: rgba(255,255,255,0.8);"> An electronic crown switch and the use of multiple motors combine to enable conflict-free simultaneous operation of multiple functions, and smooth switching between functions.</h4></div>
    </div>
    </div>
</div>
</div>
  </div>
  
   
  
  </body>
  </html>