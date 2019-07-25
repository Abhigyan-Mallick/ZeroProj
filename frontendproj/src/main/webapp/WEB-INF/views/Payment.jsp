<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<form action="<c:url value="/receipt"/>" method="get">
<table align="center" class="table table-bordered" width="50" height="50">

	<tr  bgcolor="pink">
		<td colspan="6"> 
			<center>
				<h2>
					<b>Payment Details</b>
				</h2>
			</center> 
		</td>
	</tr>

	
	<tr>	
	
		<td bgcolor="gray" colspan ="3">
			<div class="custom-control custom-radio">
  				<input type="radio" class="custom-control-input" id="defaultUnchecked" name="pmode" value="CC">
  				<label class="custom-control-label" for="defaultUnchecked"> Credit Card </label>
			</div>
		</td>
		
		<td colspan ="3">
			<div class="custom-control custom-radio">
  				<input type="radio" class="custom-control-input" id="defaultChecked" name="pmode" value="COD" checked>
  				<label class="custom-control-label" for="defaultChecked">Cash on Delivery</label>
			</div>
		</td>
    
    </tr>

	
	<tr bgcolor="gray">
		<td colspan="1">Card No :</td>
		<td colspan="2"><input type="text" class = "form-control" name="cardno"/></td>
	</tr>
	
	
	<tr bgcolor="gray">
		<td colspan="1">Expiry Date :</td>
		<td colspan="2"><input type="text" class = "form-control" name="expiryDate"/></td>
	</tr>
	<tr bgcolor="gray">
		<td colspan="1">CVV No :</td>
		<td colspan="2"><input type="text" class = "form-control" name="cvv"/></td>
	</tr>
	<tr bgcolor="gray">
			<td id="data_title" colspan="1">Card Holder Name :</td>
		<td colspan="2"><input type="text" class = "form-control" name="cname"/></td>
	</tr>
	
	
	<tr>
		<tr bgcolor="pink">
			<td colspan="2"><center><b>Total Amount</b></center></td>
			<td colspan="2"></td>
			<td colspan="2"><b>Rs. ${totalAmount} /-</b></td>
		</tr>
	</tr>
	
	
	<tr bgcolor="skyblue">
		<td colspan="6">
			<center>
				<input type="submit" value="Pay" class="btn btn-success"/>
			</center>
		</td>
	</tr>
	
		
</table>
</form>
</div>

</center>
</body>
</html>


