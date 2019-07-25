<%@include file="Header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">

<form action="<c:url value="/updateCategory"/>" method="post">

<table cellspacing="3" align="center" class="table table-bordered">

	<tr bgcolor="orange">
		<td colspan="2">
			<center> Update Category Detail </center>
		</td>
	</tr>
	
	<tr>
		<td>Category ID</td>
		<td><input type="text" name="catId" id="catId" value="${myCategory.categoryId}" readOnly/></td>
	</tr>
	
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName" id="catName" value="${myCategory.categoryName}" /></td>
	</tr>
	
	<tr>
		<td>Category Desc</td>
		<td><input type="text" name="catDesc" id="catDesc" value="${myCategory.categoryDesc}" /></td>
	</tr>
	
	<tr>
		<td colspan="2">
		<center> <input type="submit" value="UPDATE"/> </center>
		</td>
	</tr>
	
</table>
</form>
</div>
</body>
</html>