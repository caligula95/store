<%@ page  isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>

<link href="/resources/css/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- Custom Theme files -->
<!--theme style-->
<link href="/resources/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<script src="/resources/js/jquery.min.js"></script>
<!--//theme style-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Wedding Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<!-- start menu -->
<script src="/resources/js/simpleCart.min.js">
	
</script>
<!-- start menu -->
<link href="/resources/css/memenu.css" rel="stylesheet"
	type="text/css" media="all" />
<script type="text/javascript" src="/resources/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.
js">
	
</script>
<script type="text/javascript" src="/shop/resources/js/controllers.js"></script>

</head>
<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
	<script src="/resources/js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			$("#slider").responsiveSlides({
				auto : true,
				nav : true,
				speed : 500,
				namespace : "callbacks",
				pager : false,
			});
		});
	</script>

	<div class="header-top">
		<div class="header-bottom">
			<div class="logo">
				<h1>
					<a href='<spring:url value="/"></spring:url>'><spring:message
							code="header.logo"></spring:message></a>
				</h1>
			</div>
			<!---->
			<div class="top-nav">
				<ul class="memenu skyblue">
					<li class="active"><a
						href='<spring:url value="/"></spring:url>'><spring:message
								code="home"></spring:message></a></li>
					<li class="grid"><a
						href='<spring:url value="/products"></spring:url>'><spring:message
								code="header.products"></spring:message></a></li>
					<li class="grid"><a
						href='<spring:url value="/contact"></spring:url>'><spring:message
								code="header.contact"></spring:message></a></li>
				</ul>
			</div>
			<!---->
			<div class="cart box_1">
				<a href='<spring:url value="/cart"></spring:url>'>
					<div class="total">
						<span class="simpleCart_total"></span> (<span
							id="simpleCart_quantity" class="simpleCart_quantity"></span>)
					</div> <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
				</a>
				<p>
					<a href="javascript:;" class="simpleCart_empty"><spring:message
							code="headerTop.EmptyCart" /></a>
				</p>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
			<!---->
		</div>
		<div class="clearfix"></div>
	</div>



	<div class="container">
		<ol class="breadcrumb">
			<li><a href='<spring:url value="/"></spring:url>'><spring:message code="home"></spring:message></a></li>
		</ol>
		<div class="registration">
			<div class="registration_left">
				<h3>
					<spring:message code="collectShipindDetail.explanationMessage"></spring:message><span><spring:message code="collectShipindDetail.someCheerful"></spring:message></span>
				</h3>
				<!-- [if IE] 
				< link rel='stylesheet' type='text/css' href='ie.css'/>  
			 [endif] -->

				<!-- [if lt IE 7]>  
				< link rel='stylesheet' type='text/css' href='ie6.css'/>  
			 <! [endif] -->
				<script>
					(function() {

						// Create input element for testing
						var inputs = document.createElement('input');

						// Create the supports object
						var supports = {};

						supports.autofocus = 'autofocus' in inputs;
						supports.required = 'required' in inputs;
						supports.placeholder = 'placeholder' in inputs;

						// Fallback for autofocus attribute
						if (!supports.autofocus) {

						}

						// Fallback for required attribute
						if (!supports.required) {

						}

						// Fallback for placeholder attribute
						if (!supports.placeholder) {

						}

						// Change text inside send button on submit
						var send = document.getElementById('register-submit');
						if (send) {
							send.onclick = function() {
								this.innerHTML = '...Sending';
							}
						}

					})();
				</script>
				<div class="registration_form">
					<!-- Form -->
					<form:form modelAttribute="order.shippingDetail"
						class="formhorizontal">
						<div>
							<label> <form:input id="doorNo"
									path="shippingAddress.streetName" type="text"
									class="form:input-large" placeholder="Название улицы отделения Новой почты" />

							</label>
						</div>
						<div>
							<label> <form:input id="homeNumber"
									path="shippingAddress.homeNumber" type="text"
									class="form:input-large" placeholder="Номер отделения Новой почты" />
							</label>
						</div>
						<div>
							<label> <form:input id="city" path="shippingAddress.city"
									type="text" class="form:input-large" placeholder="Город" />
							</label>
						</div>

						<input type="hidden" name="_flowExecutionKey"
							value="${flowExecutionKey}" />


						<div>
							<button id="back" class="btn btn-default"
								name="_eventId_backToCollectCustomerInfo">Назад</button>
							<input type="submit" id="btnAdd" class="btn btn-primary"
								value="Продолжть" name="_eventId_shippingDetailCollected" />
							<button id="btnCancel" class="btn btn-default"
								name="_eventId_cancel">Отмена</button>
						</div>
					</form:form>
					<!-- /Form -->
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>


	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 about-us">
					<h3>
						<spring:message code="footer.aboutUs"></spring:message>
					</h3>
					<p>
						<spring:message code="footer.textAbout"></spring:message>
					</p>
				</div>
				<div class="col-md-3 ftr-grid">
					<h3>
						<spring:message code="footer.information"></spring:message>
					</h3>
					<ul class="nav-bottom">
						<li><a href="https://novaposhta.ua/tracking"><spring:message
									code="footer.trackOrder"></spring:message></a></li>
						<li><a href='<spring:url value="/"></spring:url>'><spring:message
									code="footer.newProducts"></spring:message></a></li>
						<!-- <li><a href="#"></a></li>
						<li><a href="#">Our Stores</a></li>
						<li><a href="#">Best Sellers</a></li>	 -->
					</ul>
				</div>
				<!-- <div class="col-md-3 ftr-grid">
					<h3>More Info</h3>
					<ul class="nav-bottom">
						<li><a href="login.html">Login</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="contact">Contact</a></li>
						<li><a href="#">Shipping</a></li>
						<li><a href="#">Membership</a></li>	
					</ul>					
			 </div> -->
				<!--  <div class="col-md-3 ftr-grid">
					<h3>Categories</h3>
					<ul class="nav-bottom">
						<li><a href="#">Car Lights</a></li>
						<li><a href="#">LED Lights</a></li>
						<li><a href="#">Decorates</a></li>
						<li><a href="#">Wall Lights</a></li>
						<li><a href="#">Protectors</a></li>	
					</ul>					
			 </div> -->
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="copywrite">
		<div class="container">
			<div class="copy">
				<p>
					© 2016 All Rights Reserved | Design by <a
						href="http://w3layouts.com/" target="_blank">W3layouts</a>
				</p>
			</div>
			<div class="social">
				<a href="#"><i class="facebook"></i></a> <a href="#"><i
					class="twitter"></i></a> <a href="#"><i class="dribble"></i></a> <a
					href="#"><i class="google"></i></a> <a href="?language=en">En</a>|<a
					href="?language=ru">Ru</a>


			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>