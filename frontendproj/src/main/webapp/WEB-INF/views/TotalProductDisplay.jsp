<%@include file="Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
 
<div class="row text-center text-lg-left">
	<c:forEach items="${listProducts}" var="product">
		<div class="col-lg-3 col-md-4 col-6">
			<a href="<c:url value="/productDisplay/${product.productId}"/>">
				<img src="<c:url value="file:///G:/PRC%20CC/GaddegtFrontend/src/main/resources/images/${product.productId}.jpg"/>"width="50%" height="50%">
			</a>
		
		<p id="product-name"><strong>${product.productName}</strong></p>
		<p>Price:INR${product.price}/-</p>
		<p>Stock:
		
				 <c:if test="${product.stock > 0}">
						${product.stock}
			     </c:if>
			     
		         <c:if test="${product.stock < 1}">
					<font color="red"> <b>Out Of Stock </b></font>
	 		   	 </c:if>
		</p>
		</div>
		
	</c:forEach>
	
</div>

</div>

</body>
</html>