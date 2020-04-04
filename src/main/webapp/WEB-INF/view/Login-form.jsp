<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
</head>
<body>
	<center>
<h1> Product Management System</h1>
</center>
<div class="log">
<h2> Admin Login</h2>
				<form:form action="checkuser" modelAttribute="user" method="POST">
				<input type="text" name="username" placeholder="Enter UserName">
<input type="password" name="password" placeholder="Enter Password">
<input type="submit" value="Login">
				</form:form>
				</div>
</body>
</html>
 
