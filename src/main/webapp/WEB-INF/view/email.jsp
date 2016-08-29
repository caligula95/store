<%@ page session="false" isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<title><spring:message code="email.title"></spring:message></title>

</head>
<body>

<div class="contact">
	  <div class="container">
		 <ol class="breadcrumb">
		   <li><a href='<spring:url value="/"></spring:url>'><spring:message code="home"></spring:message></a></li>
		 </ol>
			<!--start contact-->
			<h3><spring:message code="email.fillTheForm"></spring:message></h3>
		  <div class="section group">				
				<div class="col-md-6 span_1_of_3">
					<div class="contact_info">
			    	 	<h4><spring:message code="email.weCallYou"></spring:message></h4>
      				</div>
      	
				</div>				
				<div class="col-md-6 span_2_of_3">
				  <div class="contact-form">
					    <form:form modelAttribute="order">
					    	<div>
						    	<span><label><spring:message code="email.name"></spring:message></label></span>
						    	<span><form:input path="name" type="text"   class="textbox"/></span>
						    </div>
						    <div>
						     	<span><label><spring:message code="email.mobile"></spring:message></label></span>
						    	<span><form:input path="phone" type="text"   class="textbox"/></span>
						    </div>
						   <div>
						   		<span><input type="submit" class="mybutton" value="<spring:message code="email.send"></spring:message>" /></span>
						  </div>
					    </form:form>
				    </div>
  				</div>				
		  </div>
	  </div>
 </div>
</body>
</html>