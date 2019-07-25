<%@include file="Header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<title>Update Supplier</title>

<div class="container">

<form action="<c:url value="/updateSupplier"/>" method="post">

<table cellspacing="3" align="center" class="table table-bordered">

	<tr bgcolor="orange">
		<td colspan="2">
			<center>Update Supplier Detail</center>
		</td>
	</tr>
	
	<tr>
		<td>Supplier ID</td>
		<td><input type="text" name="supplierId" id="supplierId" value="${mySupplier.supplierId}" readOnly/></td>
	</tr>
	
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supplierName" id="supplierName" value="${mySupplier.supplierName}" /></td>
	</tr>
	
	<tr>
		<td>Supplier Address</td>
		<td><input type="text" name="supplierAddress" id="supplierAddress" value="${mySupplier.supplierAddress}" /></td>
	</tr>
	
	<tr>
		<td colspan="2">
		<center><input type="submit" value="UPDATE"/></center>
		</td>
	</tr>
	
</table>
</form>
</div>
</body>
</html>