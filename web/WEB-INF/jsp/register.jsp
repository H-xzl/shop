<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1"/>
		<script src="${pageContext.request.contextPath}/static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap-theme.min.css"/>
		<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<title>登录</title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-2" style="margin-top: 300px;">
					<form class="form-horizontal">
					  <div class="form-group">
						<label for="username" class="col-sm-2 control-label">Username</label>
						<div class="col-sm-4">
						  <input type="text" class="form-control" id="username" name="username" placeholder="Username">
						</div>
					  </div>
					  <div class="form-group">
						<label for="password" class="col-sm-2 control-label">Password</label>
						<div class="col-sm-4">
						  <input type="password" class="form-control" id="password" name="password" placeholder="Password">
						</div>
					  </div>
					  <div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
						  <div class="checkbox">
							<label>
							  <input type="checkbox"> Remember me
							</label>
						  </div>
						</div>
					  </div>
					  <div class="form-group">
						<div class="col-sm-2 col-sm-offset-2">
						  <input type="submit" class="btn btn-primary btn-block" value="注册"/>
						</div>
						<div class="col-sm-2">
						  <a href="login.jsp" class="btn btn-primary btn-block">返回</a>
						</div>
					  </div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>