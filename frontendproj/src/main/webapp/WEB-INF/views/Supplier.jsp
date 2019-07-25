<%@ include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<div class="container">

<form action="InsertSupplier" method="post">

<table class="table table-bordered" width="50%" align="center">

	<tr bgcolor="gray"><td colspan="2"><h4><center>ENTER SUPPLIER DETAILS</center></h4></td></tr>
	<tr>
		<td>Supplier Name</td>
		<td><input type="text" name="supplierName" id="supplierName"/></td>
	</tr>
	<tr>
		<td>Supplier Address</td>
		<td><input type="text" name="supplierAddress" id="supplierAddress"/></td>
	</tr>
	<tr>
		<td colspan="2">
		<center><input type="submit" value="INSERT"/></center>
		</td>
	</tr>
</table>
</form>


<table align="center" class="table table-bordered">
	<tr bgcolor="pink">
		<td colspan="4"><h3><center>SUPPLIER DETAILS</center></h3></td>
	</tr>
	<tr bgcolor="skyblue">
		<td><center>Supplier ID</center></td>
		<td><center>Supplier Name</center> </td>
		<td><center>Supplier Address </center></td>
		<td><center>Operations</td>
	</tr>
	<c:forEach items="${suppliers}" var="supplier">
	<tr>
		<td><center>${supplier.supplierId}</center></td>
		<td><center>${supplier.supplierName}</center></td>
		<td><center>${supplier.supplierAddress}</center></td>
		<td>
		<center>
			<a href="<c:url value="/editSupplier/${supplier.supplierId}"/>"><img src="<c:url value="file:///G:/PRC%20CC/GaddegtFrontend/src/main/resources/images/icons8-edit-24.png"/>" alt="edit"></a>
			<a href="<c:url value="/deleteSupplier/${supplier.supplierId}"/>"><img src="<c:url value="file:///G:/PRC%20CC/GaddegtFrontend/src/main/resources/images/icons8-delete-bin-24.png"/>" alt="Delete"></a>
		</center>
		</td>
	</tr>	
	</c:forEach>
	
</table>
</div>

</body>
</html>


