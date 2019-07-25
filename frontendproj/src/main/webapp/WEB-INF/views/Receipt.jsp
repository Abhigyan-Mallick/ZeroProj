<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  



<div  class="container-fluid">


<table class="table table-bordered" height="50%" width="50%" align="center">
<tr bgcolor="gray">
	<td colspan="4">
		<center>
			<h3><b>Invoice</b></h3>
		</center>
	</td>
</tr>

<tr>
	<td>OrderId</td>
	<td>ORD ${orderId}</td>
</tr>
<tr>
	<td>Order Date</td>
	<td><%=new java.util.Date()%></td>
</tr>
<tr>
	<td>PaymentMode</td>
	<td>${pmode}</td>
</tr>
<tr>
	<td>AmountPayable</td>
	<td><b>Rs. ${totalAmount} /-</b></td>	
</tr>

<tr> </tr>

<tr>
	<td colspan="4">
		
		<table class="table table-bordered" width="50%" align="center" cellspacing="3">
			<tr bgcolor="gray">
				<td colspan="5">
					<h2 align="center"><b>Ordered Items</b></h2>
				</td>
			</tr>
	
			<tr bgcolor="pink">
				<td> SL#</td>
				<td> Product Name</td>
				<td> Quantity  </td>
				<td> Price </td>
				<td>Total Price </td>
			</tr>
			<c:forEach items="${cartItemList}" var="cart">

			<form action="<c:url value="/updateCartItem/${cart.cartItemId}"/>"method="get">
			<tr>
				<td> ${cart.productName}</td>
      			<td> ${cart.quantity}</td>
      			<td> ${cart.price}</td>
      			<td> ${cart.quantity}</td>
      			<td>${cart.price*cart.quantity}</td>
			</tr> 
			</c:forEach>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<b>Address</b>
		</td>
		
		<td colspan="3">
			<b>Shipping Address</b>
			<p colspan="3">${addr}</p>
</td>
</tr>
</table>
</div>
</body>
</html>