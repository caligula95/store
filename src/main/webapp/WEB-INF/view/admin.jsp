<%@ page  isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Admin</title>

<!-- Bootstrap CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="/resources/css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="/resources/css/elegant-icons-style.css"
	rel="stylesheet" />
<link href="/resources/css/font-awesome.min.css" rel="stylesheet" />

<link href="/resources/css/style1.css" rel="stylesheet">
<link href="/resources/css/style-responsive.css" rel="stylesheet" />
<link href="/resources/css/xcharts.min.css" rel=" stylesheet">
<link href="/resources/css/jquery-ui-1.10.4.min.css"
	rel="stylesheet">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
</head>

<body>
	<!-- container section start -->
	<section id="container" class="">


		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a href='<spring:url value="/"></spring:url>' " class="logo">Nice
				<span class="lite">Admin</span>
			</a>
			<!--logo end-->

			<div class="nav search-row" id="top_menu">
				<!--  search form start -->
				<ul class="nav top-menu">
					<li>
						<form class="navbar-form">
							<input class="form-control" placeholder="Search" type="text">
						</form>
					</li>
				</ul>
				<!--  search form end -->
			</div>
			<div class="top-nav notification-row">
				<!-- notificatoin dropdown start-->
				<ul class="nav pull-right top-menu">
					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">

						</span> <span class="username">Admin</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<div class="log-arrow-up"></div>
							<li class="eborder-top"><a href="#"><i
									class="icon_profile"></i> My Profile</a></li>
							<li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
						</ul></li>
					<!-- user login dropdown end -->
				</ul>
				<!-- notificatoin dropdown end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li class="active"><a class=""
						href='<spring:url value="/"></spring:url>'> <i
							class="icon_house_alt"></i> <span>Dashboard</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_document_alt"></i> <span>Products</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<c:forEach items="${productTitle}" var="productTitle">
								<li><a class="" href='<spring:url value="admin?id=${productTitle.id}"></spring:url>'>${productTitle.title}</a></li>
							</c:forEach>
							Validation
							</a></li>
				</ul>
				</li>
				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<!--overview start-->
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-laptop"></i> Dashboard
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a
								href='<spring:url value="/"></spring:url>'>Home</a></li>
							<li><i class="fa fa-laptop"></i>Dashboard</li>
						</ol>
					</div>
				</div>
				<form:form modelAttribute="product" enctype="multipart/form-data">
					<label for="title"><spring:message
							code="admin.addProduct.title" /></label>
					<form:input path="title" id="title" type="text" />

					<label for="description"><spring:message
							code="admin.addProduct.description" /></label>
					<form:input path="description" id="description" type="text" />

					<label for="price"><spring:message
							code="admin.addProduct.price" /></label>
					<form:input path="price" id="price" type="text" />

					<label for="count"><spring:message
							code="admin.addProduct.count" /></label>
					<form:input path="count" id="count" type="text" />
					<label for="provider"><spring:message
							code="admin.addProduct.provider" /></label>
					<form:input path="ID_provider" id="provider" type="text"/>

					<form:input id="productImage" path="productImage" type="text"/>
					<input type="submit" id="btnAdd" class="btn	btn-primary"
						value="Add" />
				
				</form:form>
				<br>
				<br>
				<form enctype="multipart/form-data"  method="POST" action='<spring:url value="admin/edit/${productById.id}"></spring:url>' >
				<textarea name="title" rows="" cols="">${productById.title}</textarea>
				<textarea name="description" rows="" cols="">${productById.description}</textarea>
				<textarea name="price" rows="" cols="">${productById.price}</textarea>
				<textarea name="count" rows="" cols="">${productById.count}</textarea>
				<textarea name="ID_provider" rows="" cols="">${productById.ID_provider}</textarea>
				<textarea name="productImage" rows="" cols="">${productById.productImage}</textarea>
				<input type="submit" value="Edit">
				</form>
				<a href='<spring:url value="admin/delete/${productById.id}"></spring:url>'>Delete this product</a>
			</section>
		</section>
		<!--main content end-->
	</section>
	<!-- container section start -->
	<!-- javascripts -->
	<script src="/resources/adminjs/jquery.js"></script>
	<script src="/resources/adminjs/jquery-ui-1.10.4.min.js"></script>
	<script src="/resources/adminjs/jquery-1.8.3.min.js"></script>
	<script type="text/javascript"
		src="/resources/adminjs/jquery-ui-1.9.2.custom.min.js"></script>
	<!-- bootstrap -->
	<script src="/resources/adminjs/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="/resources/adminjs/jquery.scrollTo.min.js"></script>
	<script src="/resources/adminjs/jquery.nicescroll.js"
		type="text/javascript"></script>



	<!--custome script for all page-->
	<script src="/resources/adminjs/scripts.js"></script>
	<!-- custom script for this page-->
	<script src="/resources/adminjs/jquery.autosize.min.js"></script>
	<script src="/resources/adminjs/jquery.placeholder.min.js"></script>
	<script src="/resources/adminjs/gdp-data.js"></script>

	<script src="/resources/adminjs/jquery.slimscroll.min.js"></script>

</body>
</html>
