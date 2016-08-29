<%@ page session="false" isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title><spring:message code="index.welcome"></spring:message></title>
</head>
<body> 

<!---->	

<!---->
<script src="/shop/resources/js/bootstrap.js"> </script>
<br>
	 <h1 class="centerNewProd"><spring:message code="index.popular"></spring:message></h1>
	 <br>
	 <br>
<div class="items">
	 <div class="container">

		 <div class="items-sec">
		 <c:forEach items="${news}" var="product">
			 <div class="col-md-3 feature-grid">
				 <a href='<spring:url value="/detail?id=${product.id}"></spring:url>'><img src="${product.productImage}" width="600" heigh="600"  alt="${product.title}"/>	
					 <div class="arrival-info">
						 <h4>${product.title}</h4>
						 <p>${product.price }</p>

	
					 </div>
					 <div class="viw">
						<a href='<spring:url value="/detail?id=${product.id}"></spring:url>'><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>Подробнее</a>
					 </div>
				  </a>
			 </div>
			 </c:forEach>
			 <div class="clearfix"></div>
		 </div>
		 
	 </div>
</div>
<!-- subscribe -->
<!---->

<!---->
</body>
</html>
