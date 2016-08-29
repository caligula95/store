<%@ page  isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title><spring:message code="contact.title"></spring:message></title>

</head>
<body>

<div class="contact">
	  <div class="container">
		 <ol class="breadcrumb">
		  <li><a href='<spring:url value="/"></spring:url>'><spring:message code="home"></spring:message></a></li>
		  <li class="active"><spring:message code="contact.contact"></spring:message></li>
		 </ol>
			<!--start contact-->
			<h3><spring:message code="contact.contactUs"></spring:message></h3>
		  <div class="section group">
		  				
				<div class="col-md-6 span_1_of_3">
					<div class="contact_info">
			    	 	<h4><spring:message code="contact.findUsHere"></spring:message></h4>
			    	 		<div class="map">
					   			<iframe src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe>
					   		</div>
      				</div>
      			<div class="company_address">
				     	<h4><spring:message code="contact.companyInformation"></spring:message> :</h4>
						    	<p>500 Lorem Ipsum Dolor Sit,</p>
						   		<p>22-56-2-9 Sit Amet, Lorem,</p>
						   		<p>USA</p>
				   		<p>Phone:(00) 222 666 444</p>
				   		<p>Fax: (000) 000 00 00 0</p>
				 	 	<p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
				   </div>
				</div>				
				<div class="col-md-6 span_2_of_3">
				  <div class="contact-form">
					    <form:form modelAttribute="request">
					    	<div>
						    	<span><label><spring:message code="contact.name"></spring:message></label></span>
						    	<span><form:input path="name" class="textbox" type="text"/> </span>
						    </div>
						    <div>
						    	<span><label><spring:message code="contact.e-mail"></spring:message></label></span>
						    	<span><form:input path="eMail" class="textbox" type="text"/></span>
						    </div>
						    <div>
						     	<span><label><spring:message code="contact.mobile"></spring:message></label></span>
						    	<span><form:input path="phone" class="textbox" type="text"/></span>
						    </div>
						    <div>
						    	<span><label><spring:message code="contact.subject"></spring:message></label></span>
						    	<span><form:textarea path="body"/></span>
						    </div>
						   <div>
						   		<span><input type="submit" class="mybutton" value="<spring:message code="contact.submit"></spring:message>"></span>
						  </div>
					    </form:form>

				    </div>
  				</div>				
		  </div>
	  </div>
 </div>

</body>
</html>