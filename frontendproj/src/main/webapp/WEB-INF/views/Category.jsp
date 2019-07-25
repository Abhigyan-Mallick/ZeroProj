<%@ include file="/WEB-INF/views/Header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<body>
<div class="container">

<form action="InsertCategory" method="post">

<table class="table table-bordered" width="50" height="50" align="center">

	<tr bgcolor="gray">
		<td colspan="2">
		<h4>
			<center>ENTER CATEGORY DETAILS</center>
		</h4>
		</td>
	</tr>
	<tr>
		<td>Category Id</td>
		<td><input type="text" name="catId" id="catId"/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName" id="catName"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		<td><input type="text" name="catDesc" id="catDesc"/></td>
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
		<td colspan="4"><h3><center>CATEGORY DETAILS</center></h3></td>
	</tr>
	<tr bgcolor="cyan">
		<td><center>Category ID</center></td>
		<td><center>Category Name </center></td>
		<td><center>Category Desc</center> </td>
		<td><center>Operations</center></td>
	</tr>
	<c:forEach items="${categories}" var="category">
	<tr>
		<td><center>${category.categoryId}</center></td>
		<td><center>${category.categoryName}</center></td>
		<td><center>${category.categoryDesc}</center></td>
		<td>
		<center>
			<a href="<c:url value="/editCategory/${category.categoryId}"/>"><img src="<c:url value="file:///G:/PRC%20CC/GaddegtFrontend/src/main/resources/images/icons8-edit-24.png"/>" alt="edit"></a>
			<a href="<c:url value="/deleteCategory/${category.categoryId}"/>"><img src="<c:url value="file:///G:/PRC%20CC/GaddegtFrontend/src/main/resources/images/icons8-delete-bin-24.png"/>" alt="Delete"></a>
		</center>
		</td>
	</tr>	
	</c:forEach>
	
</table>
</div>
</body>
</html>

