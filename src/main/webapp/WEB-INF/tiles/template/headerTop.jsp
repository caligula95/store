<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<script src="/resources/js/responsiveslides.min.js"></script>
<script>  
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: false,
      });
    });
  </script>
  
<div class="header-top">
	 <div class="header-bottom">			
				<div class="logo">
					<h1><a href='<spring:url value="/"></spring:url>'><spring:message code="header.logo"></spring:message></a></h1>					
				</div>
			 <!---->		 
			 <div class="top-nav">
				<ul class="memenu skyblue"><li class="active"><a href='<spring:url value="/"></spring:url>'><spring:message code="home"></spring:message></a></li>
					<li class="grid"><a href='<spring:url value="/products"></spring:url>'><spring:message code = "header.products"></spring:message></a>	
					</li>
					<li class="grid"><a href='<spring:url value="/contact"></spring:url>'><spring:message code = "header.contact"></spring:message></a></li>
										
				</ul>				
			 </div>
			 <!---->
			 <div class="cart box_1">
				 <a href='<spring:url value="/cart"></spring:url>'>
					<div class="total">
					<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span>)</div>
					<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
				</a>
				<p><a href="javascript:;" class="simpleCart_empty"><spring:message code="headerTop.EmptyCart"/></a></p>
			 	<div class="clearfix"> </div>
			 </div>
			 <div class="clearfix"> </div>
			 <!---->			 
			 </div>
			<div class="clearfix"> </div>
</div>