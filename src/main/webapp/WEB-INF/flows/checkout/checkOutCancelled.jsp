<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="utf-
8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title><spring:message code = "canceled.title"></spring:message></title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1 class="alert alert-danger"><spring:message code = "canceled.canceled"></spring:message></h1>
				<p><spring:message code = "canceled.message"></spring:message></p>
			</div>
		</div>
	</section>
	<section>
		<div class="container">
			<p>
				<a href="<spring:url value="/products" />" class="btn btnprimary">
					<span class="glyphicon-hand-left glyphicon"></span><spring:message code = "canceled.products"></spring:message>
				</a>
			</p>
		</div>
	</section>
</body>
</html>