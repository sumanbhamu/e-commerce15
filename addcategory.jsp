<%@include file="adminhome.jsp"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<title>addcategory</title>
<style type="text/css">
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
		<h2>Add Category</h2>
		<div id="addcategory" class="container-fluid bg-grey">
			<div class="row">
				<div class="col-sm-5">

					<form:form method="POST" action="addcat" commandName="category">

						<table style="width: 300px; height: 200px; cellpadding: 20px;">
							<tr>

								<td><form:label path="cat_name">Category-Name:</form:label></td>

								<td><form:input path="cat_name" /></td>
							</tr>
							<tr>
								<td><form:label path="description">Description:</form:label></td>

								<td><form:input path="description" /></td>
							</tr>
							<tr>
								<td><input type="submit" value="Submit"
									style="color: blue; font-size: 13pt" /></td>
								<td><input type="reset" value="Cancle"
									style="color: red; font-size: 13pt" /></td>
							</tr>
						</table>
					</form:form>



				</div>
			</div>
		</div>
	</center>


</body>
</html>