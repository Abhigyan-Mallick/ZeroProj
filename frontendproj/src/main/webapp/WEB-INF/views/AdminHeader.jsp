<%@ page language="java" contentType="text/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OnlineShopping</title>

<style type="text/css">
#myId
{
background-color:cyan;
}
</style>
</head>


<body>
<div id="myId" class="container-fluid">
<h2><center>S.K.A.R.T Items</center></h2>
</div>

<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
       <a class="navbar-brand" href="#">ItemsAvailable</a>
     </div>
     
     
    <c:if test="${sessionScope.loggedIn}">
     
      <ul class="nav navbar-nav">
         <li class="active"><a href="AdminHome">Home</a></li>
             
              <li><a href="<c:url value="/category"/>">ManageCategory</a></li>
              <li><a href="<c:url value="/supplier"/>">ManageSupplier</a></li>
              <li><a href="<c:url value="/product"/>">ManageProduct</a></li>
             
              <li><a href="<c:url value="/logout"/>">Logout</a></li>
            
        </ul>
       
       <div class="nav navbar-nav navbar-right">
       <a href="#">${sessionScope.username}</a>
       </div>
    </c:if>
     
      <c:if test="${!sessionScope.loggedIn}">
     
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="<c:url value="/GadgetFrontEnd/Login"/>">Login</a></li>
        <!--  <li><a href="<c:url value="/GadgetFrontEnd/AboutUs"/>">AboutUs</a></li> -->
        <li><a href="<c:url value="/GadgetFrontEnd/Register"/>">Register</a></li>
        <!--  <li><a href="<c:url value="/GadgetFrontEnd/ContactUs"/>">ContactUs</a></li> -->
      </ul>
      </c:if>
     
  </div>
</nav>
</body>
</html>