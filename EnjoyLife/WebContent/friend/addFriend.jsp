<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增好友</title>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
label { float: left;}  
</style>
</head>
<body>
<div class="container">
	<form  method="post" class="form-horizontal" id="form" action="addFriend.do">
		<fieldset>
			<legend>新增好友</legend>
			<div class="form-group">
				<label for="friendId" class="control-label col-sm-3">好友ID(*)：</label>
				<div class="col-xs-3">
					<input class="form-control" type="text" id="friendId" name="friendId" value="${param.friendId}" title="請輸入好友帳號">
				</div>
				<label>${ErrorMsg.friendId}</label>
			</div>
			<div class="form-group"> 
				<div class="col-sm-offset-2 col-sm-10">
					<input class="btn btn-success btn-xs" type="submit" id="submit" value="送出">
					<input class="btn btn-primary btn-xs" type="reset" id="reset" value="清除">
				</div>
			</div>
		</fieldset>	
		<a href="${pageContext.request.contextPath}/friend/friend.jsp">好友首頁</a>
	</form>
	
</div>

</body>
</html>