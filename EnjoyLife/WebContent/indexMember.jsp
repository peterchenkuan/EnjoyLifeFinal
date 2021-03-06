<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.form.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/register.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
	<link rel='stylesheet' href='css/skel-noscript.css' type="text/css" />
	<link rel='stylesheet' href='css/style.css' type="text/css" />
	<link rel='stylesheet' href='css/style-desktop.css' type="text/css" />
	<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
	<link href="css/dashboard.css" rel="stylesheet">
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
				<div class="row col-sm-10" > 
					<div class="col-sm-3 col-md-2 sidebar">										
						<ul class="nav nav-sidebar">						
<%-- 							<li><a target="frame" href="${pageContext.request.contextPath}/secure/logout.jsp">登出</a></li> --%>
							<li><a target="frame" href="${pageContext.request.contextPath}/display/searchButton.jsp">搜尋會員</a></li>
							<li><a target="frame" href="${pageContext.request.contextPath}/display/regisChange.jsp">修改個人資料</a></li>
							<li><a target="frame" href="${pageContext.request.contextPath}/display/changePassword.jsp">修改密碼</a></li>
							<li><a target="frame" href="${pageContext.request.contextPath}/friend/friend.jsp">好友功能</a></li>	
							<li><a target="frame" href="${pageContext.request.contextPath}/message/message.jsp">訊息功能</a></li>							
						</ul>				
					</div>								
						<iframe name="frame" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 " width="1000" height="1000" frameborder="o" scrolling="no">
						</iframe>																				
				</div>
			</div>
		</div>
		
		<!-- Copyright -->
<!-- 		<div id="copyright"> -->
<!-- 			<div class="container"> -->
<!-- 				Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>) -->
<!-- 			</div> -->
<!-- 		</div> -->
		<%@include file="/includes/logout" %>
	</body>
</html>