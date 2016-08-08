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
      <a class="navbar-brand"  href="#">CHRONO WATCH CO.</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="index">HOME</a></li>
        <li><a href="products">PRODUCTS</a></li>
        <li><a href="#">NEW COLLECTIONS</a></li>
       <li><a href="#">DEALS</a></li>
        <li><a href="#">ABOUT US</a></li>
         <li><a href="#">CONTACT US</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      
        <c:choose>
	      					<c:when test="${not empty pageContext.request.userPrincipal}">
	      						<li><a href="${pageContext.request.contextPath}/index">${pageContext.request.userPrincipal.name}</a></li>
	      						<li><a href="${pageContext.request.contextPath}/logout">Log Out</a></li>
	      						
	      					</c:when>
	      					
	      					<c:otherwise>
	      						<li><a href="${pageContext.request.contextPath}/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        						<li><a href="${pageContext.request.contextPath}/loginpage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	      					</c:otherwise>
	      				</c:choose>
      
      </ul>
    </div>
  </div>
</nav>



 <footer>
    ABCD
    </footer>  
    
    
    