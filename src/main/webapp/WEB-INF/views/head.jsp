<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"></a>
      <a class="navbar-brand" href="#">CHRONO WATCH CO.</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav" >
      <li ><a href=""></a></li>
         
        <li ><a href="${pageContext.request.contextPath}/index">HOME</a></li>
        <li><a href="${pageContext.request.contextPath}/products">PRODUCTS</a></li>
        <li><a href="${pageContext.request.contextPath}/about">ABOUT US</a></li>
         <li><a href="${pageContext.request.contextPath}/contact">CONTACT US</a></li>
         
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="${pageContext.request.contextPath}/initiateFlow">View Cart</a></li>
        <c:choose>
	      					<c:when test="${not empty pageContext.request.userPrincipal}">
	      						<li><a href="${pageContext.request.contextPath}/index">${pageContext.request.userPrincipal.name}</a></li>
	      						<li><a href="${pageContext.request.contextPath}/logout">Log Out</a></li>
	      						
	      					</c:when>
	      					
	      					<c:otherwise>
	      						<li><a href="${pageContext.request.contextPath}/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        						<li><a href="${pageContext.request.contextPath}/loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        						<li><a href="#"></a></li>
	      					</c:otherwise>
	      				</c:choose>
      
      </ul>
    </div>
  </div>
</nav>



 <footer>
    ChronoWatchCo.@2016  &copy;  All Rights Reserved 
    </footer>  
    
    
    