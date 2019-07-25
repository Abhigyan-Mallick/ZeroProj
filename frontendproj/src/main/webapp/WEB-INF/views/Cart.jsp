<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  


<br/>
<br/>
<center>
<div class="container">

<table align="center" class="table table-bordered">
	<tr bgcolor="pink"> 
		<td colspan="7">
			<h3>
				<center>YourCart</center>
			</h3>
		</td>
	</tr>

<tr bgcolor="gray">
	<td>SL#</td>
	<td>Product Name</td>
	<td>Quantity  </td>
	<td>Price </td>
	<td>Total Price </td>
	<td>Operation </td> 
</tr>

<c:if test="${not empty cartItemList}">
<c:forEach items="${cartItemList}" var="cart">

<form action="<c:url value="/updateCartItem/${cart.cartItemId}"/>" method="get">
<tr>
	  <td>${cart.cartItemId}</td>
	  <td>${cart.productName}</td>
      <td><input type="text" value="${cart.quantity}" name="quantity"></td>
      <td>${cart.price}</td>
      <td>${cart.price*cart.quantity}</td>
      
	  <td>
	    <input type="submit" id="mybutton" class="btn btn-info" value="Update"/>
	    <a href="<c:url value="/deleteCartItem/${cart.cartItemId}"/>" class="btn btn-info" method="get">DELETE</a>
	  </td>
      
</tr>
</form>
</c:forEach>
</c:if>  

<c:if test="${empty cartItemList}">
	    <tr> 
			<td colspan="6">
				<h3 align="center">OOPs Cart is Empty</h3>
			</td>
		</tr>
</c:if>
<tr bgcolor="pink">
	<td colspan="4">Total Amount</td>
	<td colspan="2"><b>Rs.${totalAmount}/-</b></td>
</tr>

<tr bgcolor="cyan">

	<td colspan="3" align="center" ><a href="<c:url value="/totalProductDisplay"/>" class="btn btn-success">Continue Shopping</a> </td>
	<td colspan="3" align="center"> <a href="<c:url value="/checkout"/>" class="btn btn-success">CheckOut</a> </td>
	
</tr>

</table>
</div>
</center>
</body>
</html>