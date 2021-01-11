<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1"/>
		<script src="${pageContext.request.contextPath}/static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap-theme.min.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<title></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<h2 class="bg-info" style="text-align: center;">登录</h2>
				</div>
				<div class="col-md-2"></div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<form action="/Shop/admin/login.do" method='post'>
						<table class="table">
							<tr class="active">
								<td>用户名</td>
								<td><input class="form-control"
										   type="text"
										   name="username"></td>
							</tr>
							<tr class="active">
								<td>密码</td>
								<td><input class="form-control"
										   type="password"
										   name="password"></td>
							</tr>
						
							<tr class="active">
								<td style="text-align: center;">
									<a href="#" class="btn btn-info">注册</a>
									<input class="btn btn-success"
										   type="submit"
										   value="登录">
								</td>
								<td></td>
							</tr>
						</table>
					</form>
				</div>
				<div class="col-md-3"></div>
			</div>
		</div>
	</body>
</html>
