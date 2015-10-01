<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<title>ENJOY LIFE</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href='http://fonts.googleapis.com/css?family=Arimo:400,700' rel='stylesheet' type='text/css'>
	<!--[if lte IE 8]><script src="js/html5shiv.js"></script><![endif]-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.4.min.js"></script>
	<link rel='stylesheet' href='css/bootstrap.min.css' type="text/css" />
	<link rel='stylesheet' href='css/jquery-ui.min.css' type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="js/Template2.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
	<link rel='stylesheet' href='css/skel-noscript.css' type="text/css" />
	<link rel='stylesheet' href='css/style.css' type="text/css" />
	<link rel='stylesheet' href='css/style-desktop.css' type="text/css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
<style type="text/css">
	label.error{
	/*   background-image: url(images/unchecked.png) no-repeat 0px 0px; */
  	padding-left: 16px;
  	padding-bottom: 2px;
  	font-weight: bold;
  	color: #EA5200;
	}
</style>		
</head>
<body class="homepage">
		<!-- Header -->
<%@include file="/includes/newheader" %>	
		<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row"> 
					
					<!-- Content -->
					<c:if test="${!empty regisOK }">
							<c:remove var="regisOK" scope="session" />
							<script type="text/javascript">
								alert("註冊成功");
							</script>
	
						</c:if>
					<div id="content" class="8u skel-cell-important">
						<section>
							<header>
								<h2>BLOG</h2>
								<span class="byline">Integer sit amet pede vel arcu aliquet pretium</span>
							</header>
							<a href="#" class="image full"><img src="images/pic07.jpg" alt="" /></a>
							<p>This is <strong>Iridium</strong>, a responsive HTML5 site template freebie by <a href="http://templated.co">TEMPLATED</a>. Released for free under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so use it for whatever (personal or commercial) &ndash; just give us credit! Check out more of our stuff at <a href="http://templated.co">our site</a> or follow us on <a href="http://twitter.com/templatedco">Twitter</a>.</p>
							<p>Sed etiam vestibulum velit, euismod lacinia quam nisl id lorem. Quisque erat. Vestibulum pellentesque, justo mollis pretium suscipit, justo nulla blandit libero, in blandit augue justo quis nisl. Fusce mattis viverra elit. Fusce quis tortor. Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget lorem ipsum dolor.</p>
						</section>
					</div>
					
					<!-- Sidebar -->
					<div id="sidebar" class="4u">
						<section>
							<header>
								<h2>HOT</h2>
							</header>
							<ul class="style">
								<li>
									<p class="posted">August 11, 2002  |  (10 )  Comments</p>
									<img src="images/pic04.jpg" alt="" />
									<p class="text">Nullam non wisi a sem eleifend. Donec mattis libero eget urna. Pellentesque viverra enim.</p>
								</li>
								<li>
									<p class="posted">August 11, 2002  |  (10 )  Comments</p>
									<img src="images/pic05.jpg" alt="" />
									<p class="text">Nullam non wisi a sem eleifend. Donec mattis libero eget urna. Pellentesque viverra enim.</p>
								</li>
								<li>
									<p class="posted">August 11, 2002  |  (10 )  Comments</p>
									<img src="images/pic06.jpg" alt="" />
									<p class="text">Nullam non wisi a sem eleifend. Donec mattis libero eget urna. Pellentesque viverra enim.</p>
								</li>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Footer -->

		<!-- Footer -->
		
		<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Enjoy Life
			</div>
		</div>
		<%@include file="/includes/logout" %>
	</body>
</html>