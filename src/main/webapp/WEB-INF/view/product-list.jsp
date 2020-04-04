<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/product_list.css">



</head>
<body>
	<div id="wrapper">
		<div id="header">
		<div align="right " padding="100px">

			<input type="button" value="logOut"
				onclick="window.location.href = 'logout'; return false;"
				class="add-button" /><br></div>
			<h1>Product Management System</h1>
			
		
			<h2>Product Details</h2>
		</div>
		<!-- add a search bar -->
		<div align="right">
			<form:form action="search" method="POST">
				<input type="text" placeholder="productname" required="required"
					name="productName" />
				<input type="submit" value="Search" class="add-button" />
			</form:form>
		</div>
		<div align="left " padding="100px">

			<input type="button" value="Add product"
				onclick="window.location.href = 'showFormForAdd'; return false;"
				class="add-button" /><br>
		</div>

	</div>
	<div>

		<table>
			<tr>

				<th>ProductName</th>
				<th>Category</th>
				<th>Price</th>
				<th>Date Of Manufacture</th>
				<th>Date Of Expiry</th>
				<th>Action</th>
			</tr>
			<c:forEach var="tempProduct" items="${products}">
				<!-- update link -->
				<c:url var="updateLink" value="/product/showFormForUpdate">
					<c:param name="id" value="${tempProduct.id}" />
				</c:url>
				<c:url var="deleteLink" value="/product/showFormForDelete">
					<c:param name="id" value="${tempProduct.id }" />
				</c:url>
				<tr>
					<td>${tempProduct.productName}</td>
					<td>${tempProduct.category}</td>
					<td>${tempProduct.price}</td>
					<td>${tempProduct.dom}</td>
					<td>${tempProduct.doe}</td>

					<!-- date validation pending -->
					<!--  		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${tempProducts.dom }"/>  </td>
<td><fmt:formatDate pattern="yyyy-MM-dd" value="${tempProducts.doe }"/></td> -->

					<td><a href="${updateLink}">Update</a>| <a
						href="${deleteLink}"
						onclick="if(!(confirm('Are you sure to delete')))return false">Delete</a>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>