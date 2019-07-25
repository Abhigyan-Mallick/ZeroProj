<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  

<div class="container">
<br/>
<br/>

<table class="table table-bordered" width="50%" align="center" cellspacing="3">
	<tr bgcolor="pink">
	<td colspan="5">
	<h2 align="center">Ordered Items</h2>
	</td>
	</tr>
	
	<tr bgcolor="gray">
	<td> SL#</td>
	<td> Product Name</td>
	<td> Quantity  </td>
	<td> Price </td>
	<td>Total Price </td>
</tr>
<c:if test="${not empty cartItemList}">

<c:forEach items="${cartItemList}" var="cart">

<form action="<c:url value="/updateCartItem/${cart.cartItemId}"/>"method="get">

<tr>
	  <td>${cart.cartItemId}</td>
      <td>${cart.productName}</td>
      <td>${cart.quantity}</td>
      <td>${cart.price}</td>
      <td>${cart.price*cart.quantity}</td>
</tr> 
</form>
</c:forEach>
</c:if>


<c:if test="${empty cartItemList}">

<tr>
<td colspan="6"><h3 align="center"> OOPS Cart is Empty</h3></td>
</tr>
</c:if>

<tr bgcolor="pink">
	<td colspan="4" align="center">Total Amount</td>
	<td colspan="1"><b>Rs.${totalAmount}/-</b></td>
</tr>


<tr>
 	<form action="<c:url value="/updateAddress"/>" method="post">
 	
	<td colspan="2">
	<h4><b>Address</b></h4> 
	<textArea cols="30" rows="3" name="addr"></textArea>
	</td>
	
	<td colspan="2">
			<b>Current Address</b> 
			<p colspan="0">${addr}</p>
	</td>
	
	<td>
	<input type="submit" value="UpdateAddress" class="btn btn-success"/>
	</td>
	</form>

	
	<tr>
	<td  class="btn btn-success" align="center" colspan="3"> <a href="<c:url value="/showCart"/>">EditCartItem</a> </td>
    <td class="btn btn-success" align="center" colspan="3"> <a href="<c:url value="/payment"/>">Payment</a>
    </td> 
	</tr>


      
</table>
</div>
</body>
</html>

