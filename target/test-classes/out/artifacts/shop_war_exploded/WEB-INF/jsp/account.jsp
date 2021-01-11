<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1"/>
		<script src="${pageContext.request.contextPath}/static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/highcharts.js"></script>

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap-theme.min.css"/>

		<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>

		<title>用户分析</title>
	</head>
	<body>
		<div class="container">
			<!-- 导航栏 -->
			<nav class="navbar navbar-default">
				<div class="row">
					<div class="col-md-11">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">
								<img src="${pageContext.request.contextPath }/static/img/anger.png" width="20px"/>
							</a>
						</div>
						<ul class="nav navbar-nav">
							<li><a href="${pageContext.request.contextPath}/product/allProduct">商品维护</a></li>
							<li><a href="${pageContext.request.contextPath}/data/analysis">数据分析</a></li>
							<li class="active"><a href="${pageContext.request.contextPath}/account/allAccount">账户维护</a></li>
							<li><a href="login.jsp">退出</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- 表格面板体 -->
			
			<div class="row">
				<div class="col-md-5">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">用户来源分布</h3>
						</div>
						<div class="panel-body">
							<div id="container1" style="width:350px;height:400px">
							<script>
								Highcharts.chart('container1', {
									chart: {
										plotBackgroundColor: null,
										plotBorderWidth: null,
										plotShadow: false,
										type: 'pie'
									},
									title: {
										text: '用户来源占比'
									},
									tooltip: {
										pointFormat: '{series.name}: ' +
												'<b>{point.percentage:.1f}%</b>'
									},
									plotOptions: {
										pie: {
											allowPointSelect: true,
											cursor: 'pointer',
											dataLabels: {
												enabled: false
											},
											showInLegend: true
										}
									},
									series: [{
										name: 'Brands',
										colorByPoint: true,
										data: [{
											name: '淘宝',
											y: 61.41,
											sliced: true,
											selected: true
										}, {
											name: '京东',
											y: 11.84
										}, {
											name: '苏宁易购',
											y: 10.85
										}, {
											name: '当当网',
											y: 4.67
										}, {
											name: '考拉海购',
											y: 4.18
										}, {
											name: '其他',
											y: 7.05
										}]
									}]
								});
							</script>
						</div>
						</div>
					</div>
				</div>
				<div class="col-md-7">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">用户访问量趋势</h3>
						</div>
						<div class="panel-body">
							<div id="container2" style="min-width:500px;height:400px">
								<script>
									var chart = Highcharts.chart('container2', {
										chart: {
											type: 'line'
										},
										title: {
											text: '用户访问趋势'
										},
										subtitle: {
											text: '数据来源:本站'
										},
										xAxis: {
											categories: ['周一', '周二',
												'周三', '周四', '周五', '周六', '周日']
										},
										yAxis: {
											title: {
												text: '数量'
											}
										},
										plotOptions: {
											line: {
												dataLabels: {
													// 开启数据标签
													enabled: true
												},
												// 关闭鼠标跟踪，对应的提示框、点击事件会失效
												enableMouseTracking: false
											}
										},
										series: [{
											name: '日期',
											data: [250, 300, 600, 800, 400, 500, 900]
										}]
									});
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<table class="table table-bordered table-hover">
				<thead>
					<tr class="bg-primary">
						<th>用户名</th>
						<th>手机号</th>
						<th>年龄</th>
						<th>邮箱</th>
						<th>地址</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
							<td>${user.username}</td>
							<td>${user.mobile}</td>
							<td>${user.age}</td>
							<td>${user.email}</td>
							<td>${user.address}</td>
							<td>
								<button onclick="deleteUser(${user.id})"
										type="button"
										class="btn btn-xs btn-danger">删除</button>
								<button onclick="editUser(${user.id})"
										type="button"
										class="btn btn-xs btn-primary">编辑</button>
							</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>

	<script type="text/javascript">
		function deleteUser(id) {
			if (confirm("是否删除该用户？"))
			$.post('${pageContext.request.contextPath}/account/deleteUser',{id:id},
					function (data,status) {
						if (data>0){
							alert("删除成功");
							location.href="${pageContext.request.contextPath}/account/allAccount"
						}
						else {alert("删除失败");}
					},'json')
		}
		function editUser(id) {
			alert(id);
		}
	</script>
	</body>
</html>
