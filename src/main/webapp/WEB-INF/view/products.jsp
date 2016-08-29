<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<html>
<head>
<title><spring:message code="products.title"></spring:message></title>
</head>
<body> 
<!--header-->
<!--header//-->
<div class="product-model">
	 <div class="container">
			<ol class="breadcrumb">
		   <li><a href='<spring:url value="/"></spring:url>'><spring:message code="home"></spring:message></a></li>
		  <li class="active"><spring:message code="products.products"></spring:message></li>
		 </ol>
			<h2><spring:message code="products.OurProducts"></spring:message></h2>
				
		 <div class="col-md-9 product-model-sec" ng-app="cartApp">						
							<c:forEach items="${products}" var="product">
			<a href='<spring:url value="/detail?id=${product.id}"></spring:url>'><div class="product-grid">
						<div class="more-product"><span> </span></div>						
						<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img alt="${product.title}" src="${product.productImage}" width="600" heigh="600" class="img-responsive"/>
							<div class="b-wrapper">
							<h4 class="b-animate b-from-left  b-delay03">							
							<button><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span><spring:message code="products.view"></spring:message></button>
							</h4>
							</div>
						</div></a>						
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${product.title}</h4>								
								<span class="item_price">${product.price} грн</span>	
								<div class="ofr">
								  
						          <p class="disc"></p>
								</div>
								
								<p ng-controller="cartCtrl">
							<a href="#" ng-click="addToCart('${product.id}')" class="add-cart item_add"><spring:message code="products.addToCart"></spring:message></a>	
							<a href='<spring:url value="email"></spring:url>' ><spring:message code="products.bueFast"></spring:message></a>
							
							</p>	
			
								<div class="clearfix"> </div>
							</div>						
						</div>	
					</div>
					</c:forEach>				
					</div>
	<!-- 		<div class="rsidebar span_1_of_left">
				 <section  class="sky-form">
					 <div class="product_right">
						 <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories</h4>
						 <div class="tab1">
							 <ul class="place">								
								 <li class="sort">Home Decorates</li>
								 <li class="by"><img src="images/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>Lanterns</p></a>	
						     </div>
					      </div>						   			 
				 </section>		  			   
			 </div>	 -->			 
	      </div>
		</div>
</div>
</body>

</html>