<%@ page session="false" isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>

</head>
<body>

	<div class="login_sec">
		<div class="container">
			<ol class="breadcrumb">
				 <li><a href='<spring:url value="/"></spring:url>'><spring:message code="home"></spring:message></a></li>
				<li class="active">Login</li>
			</ol>
			<h2>Login</h2>
			<c:if test="${not empty error}">
				<div class="alert alert-danger">
					<spring:message
						code="AbstractUserDetailsAuthenticationProvider.
badCredentials" />
					<br />
				</div>
			</c:if>
			<div class="col-md-6 log">
				<p>Welcome, Admin, please enter the folling to continue.</p>
				<form action="<c:url value= "/j_spring_security_check">
</c:url>"
					method="post">
					<h5>User Name</h5>
					<input type="text" name='j_username'>
					<h5>Password</h5>
					<input type="password" name='j_password'> <input type="submit"
						value="Login">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

</body>
</html>