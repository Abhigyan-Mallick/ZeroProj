<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<%@include file="UserHeader.jsp"%>
    
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>User Home Page</title>
 
<style type="text/css">
#myId
{
background-color:red;
}
</style>

</head>
<body>
<br/><br/><br/>

<h1><b><center><font face="Times New Roman" color="blue">Welcome to User Home Page</font></center></b></h1>

<div class="container">
<br/>
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
  
  
    <!-- CAROUSEL INDICATION START -->
    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>
    <!-- CAROUSEL INDICATION END -->

      <!-- CAROUSEL WRAPPER FOR SLIDES START -->
    <div class="carousel-inner" role="listbox">

     <div class="item active"><!-- slide--0 -->
        	  <img src="<c:url value="https://rukminim1.flixcart.com/flap/2500/2500/image/48e0e6.jpg?q=80"/>" alt="TV" width="100%" height="100%">
        <div class="carousel-caption"></div>
    
	 </div>
    <div class="item"><!-- slide--1 -->
        	  <img src="<c:url value="https://assets.jassets.com/assets/images/retaillabs/2019/5/2/6db8fe00-8631-4cb1-96d1-3c2a1486a7021556792228101-FlyingMachine-HomePage-1300X470.jpg"/>"  alt="clothes" width="100%" height="100%">
        <div class="carousel-caption"></div>
    </div>
       <!-- CAROUSEL WRAPPER FOR SLIDES END -->
  
    </div>

      <!-- Left and right controls start -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
     <!-- Left and right controls start -->
  </div>
</div>

</body> 
</html>
