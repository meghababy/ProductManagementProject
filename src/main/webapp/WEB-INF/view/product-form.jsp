<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>product add form</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/product_form.css">
</head>
<body>
<h1> Product Management System</h1>
<h2> Edit Product Details</h2>
	<form:form action="saveProduct" modelAttribute="product" method="POST">
		<form:hidden path="id" />
		<center>
		<table>
			<tbody>

				<tr>
					<td><label>Product Name</label></td>
					<td><form:input path="productName" /></td>
					<td><form:errors path="productName" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td><label>Category</label></td>
					<td><form:input path="category" /></td>
					<td><form:errors path="category" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td><label>Price</label></td>
					<td><form:input path="price" /></td>
					<td><form:errors path="price" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td><label>Date Of Manufacture</label></td>
					<td><form:input path="dom" type="date" /></td>
					<td><form:errors path="dom" cssClass="error"></form:errors></td>
					
					
				</tr>
				<tr>
					<td><label>Date Of Expiry</label></td>
					<td><form:input path="doe" type="date" /></td>
					<td><form:errors path="doe" cssClass="error"></form:errors></td>
					
				</tr>



				<tr>
					<td><input type="submit" value="Save" class="save" /></td>
				</tr>
			</tbody>
		</table>

	</form:form>
	<p>
		<a href="${pageContext.request.contextPath}/product/list">Back to
			List</a>
	</p>

</center>
</body>
</html>