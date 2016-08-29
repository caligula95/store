<%@ page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html;	charset=ISO-8859-
1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title><spring:message code="cart.title"></spring:message></title>
</head>
<body>

	<section class="container" ng-app="cartApp">
		<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
			<div>
				<a href="javascript:;" class="btn	btn-danger	pull-left simpleCart_empty" ng-click="clearCart()"> <span
					class="glyphicon	glyphicon-remove-sign"></span><spring:message code="cart.clearCart"></spring:message>
				</a> <a href="<spring:url	value="/checkout?cartId=${cartId}"/>"
					class="btn	btn-success	pull-right"> <span
					class="glyphicon-shopping-cart	glyphicon"></span> <spring:message code="cart.checkOut"></spring:message>
				</a>
			</div>
			<table class="table	table-hover">
				<tr>
					<th><spring:message code="cart.product"></spring:message></th>
					<th><spring:message code="cart.price"></spring:message></th>
					<th><spring:message code="cart.quantity"></spring:message></th>
					<th><spring:message code="cart.AllPrice"></spring:message></th>
					
				</tr>
				<tr ng-repeat="item	in	cart.cartItems">
					<td>{{item.product.id}}-{{item.product.title}}</td>
					<td>{{item.product.price}}</td>
					<td>{{item.quantity}}</td>
					<td>{{item.totalPrice}}</td>
					
				</tr>
				<tr>
					<th></th>
					<th></th>
					<th><spring:message code="cart.granTotal"></spring:message></th>
					<th>{{cart.grandTotal}}</th>
					<th></th>
				</tr>
			</table>

			<a href="<spring:url	value="/products"	/>" class="btn	btn-default">
				<span class="glyphicon-hand-left	glyphicon"></span> <spring:message code="cart.continueShoping"></spring:message>
			</a>
		</div>
	</section>
</body>
</html>
