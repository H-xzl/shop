<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

		<title>bootstrap</title>
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
							<li class="active"><a href="${pageContext.request.contextPath}/data/analysis">数据分析</a></li>
							<li><a href="${pageContext.request.contextPath}/account/allAccount">账户维护</a></li>
							<li><a href="login.jsp">退出</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- 表格面板体 -->
			
			<div class="row">
				<div class="col-md-6">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">商品访问量分布图</h3>
						</div>
						<div class="panel-body">
							<div id="container1" style="width:400px;height:400px">
								<script>
									Highcharts.chart('container1', {
										chart: {
											plotBackgroundColor: null,
											plotBorderWidth: null,
											plotShadow: false,
											type: 'pie'
										},
										title: {
											text: '商品访问量占比'
										},
										tooltip: {
											pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
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
												name: '手机',
												y: 57.3,
												sliced: true,
												selected: true
											}, {
												name: '电脑',
												y: 22.7
											}, {
												name: '实体店',
												y: 13.2
											}, {
												name: '其他',
												y: 6.8
											}]
										}]
									});
								</script>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3 class="panel-title">TOP5热门商品</h3>
						</div>
						<div class="panel-body">
							<div id="container2" style="width:400px;height:400px">
								<script>
									var chart = Highcharts.chart('container2', {
										chart: {
											type: 'bar'
										},
										title: {
											text: '热点商品Top5'
										},
										subtitle: {
											text: '数据来源: 本站'
										},
										xAxis: {
											categories: ['手机', '电器', '衣服', '电脑', '零食'],
											title: {
												text: null
											}
										},
										yAxis: {
											min: 0,
											title: {
												text: '数量',
												align: 'high'
											},
											labels: {
												overflow: 'justify'
											}
										},
										tooltip: {
											valueSuffix: '万件'
										},
										plotOptions: {
											bar: {
												dataLabels: {
													enabled: true,
													allowOverlap: true // 允许数据标签重叠
												}
											}
										},
										legend: {
											layout: 'vertical',
											align: 'right',
											verticalAlign: 'top',
											x: -40,
											y: 100,
											floating: true,
											borderWidth: 1,
											backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
											shadow: true
										},
										series: [{
											name: '销量',
											data: [107, 31, 635, 203, 2]
										}, {
											name: '库存',
											data: [133, 156, 947, 408, 6]
										}]
									});
								</script>
							</div>

						</div>
					</div>
				</div>

			</div>
				<div class="row">
					<div class="col-md-6">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h3 class="panel-title">热卖商品TOP5</h3>
							</div>
							<div class="panel-body">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>排名</th>
											<th></th>
											<th>名称</th>
											<th>销售量</th>
											<th>价格</th>
											<th>信息</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${hotProducts}" var="hotProduct">
											<tr>
												<td>1</td>
												<td><img src="${pageContext.request.contextPath}/static/img/${hotProduct.picUrl}" alt="商品图片"  width="20px"/></td>
												<td>${hotProduct.name}</td>
												<td>${hotProduct.visitCount}</td>
												<td>${hotProduct.price}</td>
												<td><button type="button" class="btn btn-xs btn-default">详情</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel panel-warning">
							<div class="panel-heading">
								<h3 class="panel-title">急需补货商品</h3>
							</div>
							<div class="panel-body">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>排名</th>
											<th></th>
											<th>名称</th>
											<th>库存</th>
											<th>价格</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${minProducts}" var="minProduct">
											<tr>
												<td>1</td>
												<td><img src="${pageContext.request.contextPath}/static/img/${minProduct.picUrl}" alt="商品图片"  width="20px"/></td>
												<td>${minProduct.name}</td>
												<td>${minProduct.sum}</td>
												<td>${minProduct.price}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			
		</div>

	</body>
</html>
