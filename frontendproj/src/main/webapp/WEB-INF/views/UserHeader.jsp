<%@ page language="java" contentType="text/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OnlinePurchase</title>

<style type="text/css">
#myId
{
background-color:cyan;
}
</style>
</head>


<body>
<div id="myId" class="container-fluid">
<h2><center>Purchase Your Favourite Items</center></h2>
</div>

<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
       <a class="navbar-brand" href="#">PurchaseYourItems</a>
     </div>
     
      <c:if test="${sessionScope.loggedIn}">
    	<ul class="nav navbar-nav">
    	
			<li class="active"><a href="UserHome">Home</a></li>
			
      			<li><a href="<c:url value="/totalProductDisplay"/>">Products</a></li>
   				<li><a href="<c:url value="/showCart"/>">My Cart</a></li>    
        </ul>
     </c:if> 
 	

    <ul class="nav navbar-nav navbar-right">
      <c:if test="${!sessionScope.loggedIn}">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span>SignUp</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      </c:if>
    
      <c:if test="${sessionScope.loggedIn}">
      <li><a href=""><span class="glyphicon glyphicon-log-in"></span>${sessionScope.username}</a></li>
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
      </c:if>
    </ul>
   
  </div>
</nav>

</body>
</html>
