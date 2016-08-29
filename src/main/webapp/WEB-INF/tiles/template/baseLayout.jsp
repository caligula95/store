<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>

<tiles:insertAttribute name="header"></tiles:insertAttribute>
</head>
<body>
<tiles:insertAttribute name="headertop" />
<div class="slider">
	 <tiles:insertAttribute name="slider"/>
  </div>
  <tiles:insertAttribute name="content"></tiles:insertAttribute>
  <tiles:insertAttribute name="subscribe"></tiles:insertAttribute>
<tiles:insertAttribute name="footer" />
</body>
</html>