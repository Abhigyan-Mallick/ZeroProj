<%@ page language="java" contentType="text/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OnlineShopping</title>



</head>
<body>
<center><h3><b><i>S.K.A.R.T</i></b></h3></center>


<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">MyKart</a>
    </div>
    
    <c:if test="${!sessionScope.loggedIn}">
    <ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
	</ul>
	</c:if>
	
      
    <ul class="nav navbar-nav">
      <c:if test="${sessionScope.loggedIn}">
      	<c:if test="${sessionScope=='ROLE_ADMIN'}">
      	<li><a href="<c:url value="/category"/>">ManageCategory</a></li>
      	<li><a href="<c:url value="/product"/>">ManageProduct</a></li>
      	<li><a href="<c:url value="/supplier"/>">ManageSupplier</a></li>
      	</c:if>
      </c:if>
      
     
   
 	<c:if test="${sessionScope.loggedIn}"> 
      	<c:if test="${sessionScope=='ROLE_USER'}">
      		<li><a href="<c:url value="/totalProductDisplay"/>">Products</a></li>
      
      		<c:if test="${sessionScope.cartsize > 0 }">
	   			<li><a href="<c:url value="/showCart"/>">My Cart (${sessionScope.cartsize})</a></li>    
      		</c:if>
      
      		<c:if test="${sessionScope.cartsize <=0 }">
	   			<li><a href="<c:url value="/showCart"/>">My Cart</a></li>    
      		</c:if>
      	</c:if> 
     </c:if>
 	</ul>

    <ul class="nav navbar-nav navbar-right">
      <c:if test="${!sessionScope.loggedIn}">
      <li><a href="register"><span class="glyphicon glyphicon-user"></span>SignUp</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
      <li><a href="contactus"><span class="glyphicon glyphicon-contact-us"></span>ContactUs</a></li>
      <li><a href="aboutus"><span class="glyphicon glyphicon-contact-us"></span>AboutUs</a></li>
      
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
