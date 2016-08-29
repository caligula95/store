<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page  isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="utf-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Invalid cart</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1 class="alert alert-danger"><spring:message code="invalidCart.message"></spring:message></h1>
			</div>
		</div>
	</section>
	<section>
		<div class="container">
			<p>
				<a href="<spring:url value="/products" />" class="btn btnprimary">
					<span class="glyphicon-hand-left glyphicon"></span><spring:message code="invalidCart.button"></spring:message>
				</a>
			</p>
		</div>
	</section>
</body>
</html>