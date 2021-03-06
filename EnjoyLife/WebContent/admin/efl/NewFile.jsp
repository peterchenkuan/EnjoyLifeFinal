<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/Content/AssetsBS3/img/favicon.ico">
<title>Dashboard Template for Bootstrap</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/dashboard.css" rel="stylesheet">
<!--[if lt IE 9]><script src=~/Scripts/AssetsBS3/ie8-responsive-file-warning.js></script><![endif]-->
<script src="js/ie-emulation-modes-warning.js"></script>
<!--[if lt IE 9]><script src=https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js></script><script src=https://oss.maxcdn.com/respond/1.4.2/respond.min.js></script><![endif]-->
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="">享樂生活管理</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">圖表</a></li>
					<li><a href="#">設定</a></li>
					<li><a href="#">外型</a></li>
					<li><a href="#">幫助</a></li>
				</ul>
				<form class="navbar-form navbar-right">
					<input class="form-control" placeholder="收尋..">
				</form>
			</div>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li class="active"><a href="#">瀏覽 <span
							class="sr-only">(current)</span></a></li>
					<li><a href="host.jsp"  target="aa">回報</a></li>
					<li><a href="#">分析</a></li>
					<li><a href="#">匯出</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="">會員管理</a></li>
					<li><a href="">景點管理</a></li>
					<li><a href="">糾團管理</a></li>
					<li><a href="">文章管理</a></li>
					<li><a href="">活動管理</a></li>
					<li><a href="">小精靈設定</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="">吃飯</a></li>
					<li><a href="">睡覺</a></li>
					<li><a href="">打咚咚</a></li>
				</ul>
			</div>
		
			
				<iframe name="frame" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" width="800" src="../aa/index.html" height="1000" frameborder="o" scrolling="no" style='background-color:#efefef'>
				
				</iframe>
			
			
			
		
			</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
	<script src="js/docs.min.js"></script>
<!-- 	<script src="/Scripts/AssetsBS3/ie10-viewport-bug-workaround.js"></script> -->
	<div id="global-zeroclipboard-html-bridge"
		class="global-zeroclipboard-container" title=""
		style="position: absolute; left: 0px; top: -9999px; width: 15px; height: 15px; z-index: 999999999;"
		data-original-title="Copy to clipboard">
		<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
			id="global-zeroclipboard-flash-bridge" width="100%" height="100%">
			<param name="allowScriptAccess" value="sameDomain">
			<param name="scale" value="exactfit">
			<param name="loop" value="false">
			<param name="menu" value="false">
			<param name="quality" value="best">
			<param name="bgcolor" value="#ffffff">
			<param name="wmode" value="transparent">
			<param name="flashvars"
				value="trustedOrigins=kkbruce.tw%2C%2F%2Fkkbruce.tw%2Chttps%3A%2F%2Fkkbruce.tw">
			<embed
				loop="false" menu="false" quality="best" bgcolor="#ffffff"
				width="100%" height="100%" name="global-zeroclipboard-flash-bridge"
				allowscriptaccess="sameDomain" allowfullscreen="false"
				type="application/x-shockwave-flash" wmode="transparent"
				pluginspage="http://www.macromedia.com/go/getflashplayer"
				flashvars="trustedOrigins=kkbruce.tw%2C%2F%2Fkkbruce.tw%2Chttps%3A%2F%2Fkkbruce.tw"
				scale="exactfit">
		</object>
	</div>
	<svg xmlns="http://www.w3.org/2000/svg" width="200" height="200"
		viewBox="0 0 200 200" preserveAspectRatio="none"
		style="visibility: hidden; position: absolute; top: -100%; left: -100%;">
		<defs></defs>
		<text x="0" y="10"
			style="font-weight:bold;font-size:10pt;font-family:Arial, Helvetica, Open Sans, sans-serif;dominant-baseline:middle">200x200</text></svg>
</body>
</html>