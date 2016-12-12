
<%@include file="adminhome.jsp"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<title>Add Supplier</title>
<style>
.bg-grey {
	border-radius: 25px;
	border: 2px solid #73AD21;
	padding: 20px;
	width: 340px;
	height: 250px;
}
</style>
</head>
<body>

	<center>
		<h2>Add Supplier</h2>
		<form:form method="POST" action="addsup" commandName="supplier">
			<div class="container-fluid bg-grey">
				<table style="width: 300px; height: 200px; text-align: center">
					<tr>

						<td><form:label path="supplier_name">Supplier-Name:</form:label></td>

						<td><form:input path="supplier_name" /></td>
					</tr>
					<tr>
						<td><form:label path="supplier_address">Supplier-Address:</form:label></td>

						<td><form:input path="supplier_address" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Submit"
							style="color: blue; font-size: 13pt" /></td>
						<td><input type="reset" value="Cancle"
							style="color: red; font-size: 13pt" /></td>
					</tr>
				</table>
			</div>
		</form:form>
	</center>
	<br><br>
	<center>
	<h2>Supplier List</h2>
		<c:if test="${!empty supplierList}">
			<table>
				<tr>
					<th>Supplier Id</th>
					<th>Supplier Name</th>

					<th>Address</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>


				<c:forEach items="${supplierList}" var="supplier">
					<tr>
						<td>${supplier.supplier_id}</td>
						<td>${supplier.supplier_name}</td>

						<td>${supplier.supplier_address}</td>
						<td><a
							href="<c:url value='editsupplier${supplier.supplier_id}'/>">Edit</a></td>
						<td><a
							href="<c:url value='deletesupplier${supplier.supplier_id}'/>">Delete</a></td>
					</tr>
				</c:forEach>


			</table>
		</c:if>
		<center>
			<a href="adminhome">Back</a>
		</center>


	</center>
</body>
</html>