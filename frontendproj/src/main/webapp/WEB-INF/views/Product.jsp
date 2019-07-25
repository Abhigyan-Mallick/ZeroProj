<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  
<div class="container">

<form:form action="InsertProduct" method="post" enctype="multipart/form-data" modelAttribute="product">

<table class="table table-bordered" width="50%" align="center">

<tr bgcolor="gray">
			<td colspan="2"><h3 align="center">PRODUCT DATA</h3></td>
	</tr>
	<tr>
			<td colspan="2">
			<h3 align="center">
			<font color="red">${Error}</font></h3></td>
	</tr>
	<tr>
			<td> Product Name </td>
			<td> <form:input path="productName"/></td>
	</tr>
	<tr>
			<td> Price</td>
			<td><form:input path="price"/></td>
	</tr>
	<tr>
			<td>Stock</td>
			<td><form:input path="stock"/></td>
	</tr>
	<tr>
			<td>Category</td>
			<td>
			<form:select path="categoryId">
				<form:option value="0" label="---Select List---"/>
				<form:options items="${categoryList}"/>
			</form:select>
			</td>
	</tr>
	
	<tr>
			<td>Supplier</td>
			<td>
			<form:select path="supplierId">
				<form:option value="0" label="---Select List--"/>
				<form:options items="${supplierList}"/>
			</form:select>
			</td>
	</tr>
	
	<tr>
			<td>Product Desc</td>
			<td><form:input path="productDesc"/></td>
	</tr>
	<tr>
			<td>Product Image</td>
			<td><form:input type="file" path="pimage"/></td>
	</tr>
			
	<tr>
			<td colspan="2">
			<center>
			<input type="submit" value="INSERT"/>
			</center>	
			</td>
	</tr>
	

</table>

</form:form>


<table align="center" class="table table-bordered">
	<tr bgcolor="pink">
		<td colspan="6"><h3><center>PRODUCT DETAILS</center></h3></td>
	</tr>
	<tr bgcolor="blue">
	
		<td><center>Product ID</center></td>
		<td><center>Product Name </center></td>
		<td><center>Price</center> </td>
		<td><center>Stock</center></td>
		<td><center>Image</center></td>
		<td><center>Operations</center></td>
	
	</tr>
	<c:forEach items="${listProducts}" var="product">
	<tr>
		<td><center>${product.productId}</center></td>
		<td><center>${product.productName}</center></td>
		<td><center>${product.price}</center></td>
		<td><center>${product.stock}</center></td>
		<td>
		<center>
		<a href="<c:url value="/productDisplay/${product.productId}"/>">
		<img src="<c:url value="file:///G:/PRC%20CC/GaddegtFrontend/src/main/resources/images/${product.productId}.jpg"/>"width="100" height="100"></td>
		</a>
		</center>
		<td>
		<center>
			<a href="<c:url value="/editProduct/${product.productId}"/>"><img src="<c:url value="file:///G:/PRC%20CC/GaddegtFrontend/src/main/resources/images/icons8-edit-24.png"/>" alt="Edit"></a>
			&nbsp;&nbsp;&nbsp;
			<a href="<c:url value="/deleteProduct/${product.productId}"/>"><img src="<c:url value="file:///G:/PRC%20CC/GaddegtFrontend/src/main/resources/images/icons8-delete-bin-24.png"/>" alt="Delete"></a>
		</center>
		</td>
	</tr>	
	
	</c:forEach>
	
</table>

</div>
</body>
</html>