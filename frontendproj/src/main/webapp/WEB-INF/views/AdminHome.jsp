<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<%@include file="AdminHeader.jsp"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Admin Home Page</title>
</head>
<body >

<br/>
<br/>
<br/>
<h1><b><center><font face="Times New Roman" color="blue">Welcome to Admin Home Page</font></center></b></h1>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
   <!-- CAROUSEL INDICATION START -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" ></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
     </ol>
     <!-- CAROUSEL INDICATION END -->

   <!-- CAROUSEL WRAPPER FOR SLIDES START -->
    <div class="carousel-inner" role="listbox">

      <div class="item "><!-- slide 0 -->
        <img src="<c:url value="https://st.depositphotos.com/1054979/4580/v/950/depositphotos_45804195-stock-illustration-worlds-best-admin-stamp.jpg"/>" alt="" width="100%" height="100%">
      </div>

      <div class="item"><!-- slide 1 -->
        <img src="<c:url value="https://cdn.shopify.com/s/files/1/0089/5618/2628/products/front_ce583236-210b-47d7-b067-ce0e0b8aabf2_2048x.png?v=1548576297"/>" alt="" width="100%" height="100%">
      </div>

      <div class="item active"><!-- slide 2 -->
        <img src="<c:url value="file:///G:/PRC%20CC/GaddegtFrontend/src/main/resources/images/My%20Post.png"/>"  alt="" width="100%" height="100%">
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
     <!-- Left and right controls End -->
  </div>
</div>
     
</body> 
</html>
