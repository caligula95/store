<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false" isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>${product.title}</title>

</head>
<body> 
<div class="product" ng-app="cartApp">
	 <div class="container">				
		 <div class="product-price1">
			 <div class="top-sing">
				  <div class="col-md-7 single-top">	
					 <div class="flexslider">
							  <ul class="slides">
								<li data-thumb="images/si.jpg">
									<div class="thumb-image"> <img alt="" src="${product.productImage}" class="img-responsive"/> </div>
								</li>
							  </ul>
						</div>					 					 

				 </div>	
			     <div class="col-md-5 single-top-in simpleCart_shelfItem">
					  <div class="single-para ">
						 <h4>${product.title}</h4>							
							<h5 class="item_price">${product.price} грн</h5>							
							<p class="para">${product.description} </p>
						    <p ng-controller="cartCtrl">
							<a href="#" ng-click="addToCart('${product.id}')" class="add-cart item_add"><spring:message code="products.addToCart"></spring:message></a>	
							<a href='<spring:url value="email"></spring:url>' ><spring:message code="products.bueFast"></spring:message></a>
							</p>						
					 </div>
				 </div>
				 <div class="clearfix"> </div>
			 </div>
	     </div>
	 </div>
</div>
<!---->

</body>
</html>