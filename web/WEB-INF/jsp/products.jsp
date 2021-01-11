<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1"/>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/highcharts.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/static/css/bootstrap.min.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/bootstrap.min.js"></script>

		<title>商品维护</title>
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
							<li class="active"><a href="${pageContext.request.contextPath}/product/allProduct">商品维护</a></li>
							<li><a href="${pageContext.request.contextPath}/data/analysis">数据分析</a></li>
							<li><a href="${pageContext.request.contextPath}/account/allAccount">账户维护</a></li>
							<li><a href="login.jsp">退出</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- 表格面板体 -->
			<div class="panel panel-info">
				<div class="panel-heading">
					<h3 class="panel-title">电商平台趋势</h3>
				</div>
				<div class="panel-body">
					<div id="container1" style="min-width:400px;height:400px">
						<script>
							var chart = Highcharts.chart('container1', {
								chart: {
									type: 'line'
								},
								title: {
									text: '电商平台销售趋势'
								},
								subtitle: {
									text: '数据来源:本站'
								},
								xAxis: {
									categories: ['一月', '二月', '三月', '四月', '五月', '六月']
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
									name: '销售量',
									data: [700, 600, 800, 1200, 500, 400]
								}, {
									name: '访问量',
									data: [1400, 1600,2000, 3000, 1200, 800]
								}]
							});
						</script>
				</div>
			</div>
			
			<a href="${pageContext.request.contextPath}/product/add" class="btn btn-info">添加</a>
			<a href="#" class="btn btn-success">导出</a>
			
			<table class="table table-bordered table-hover">
				<thead>
					<tr class="bg-primary">
						<th><button type="button" class="btn btn-xs btn-danger">删除</button></th>
						<th>商品名</th>
						<th>价格</th>
						<th>库存</th>
						<th>访问量</th>
						<th>状态</th>
						<th>上架时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<jsp:useBean id="products" scope="request" type="java.util.List"/>
				<c:forEach items="${products}" var="product">
					<tr>
						<td>
							<div class="checkbox">
								<label><input type="checkbox" id="blankCheckbox" value="option1" aria-label="..."></label>
							</div>
						</td>
						<td>${product.name}</td>
						<td>${product.price}</td>
						<td>${product.sum}</td>
						<td>${product.visitCount}</td>
						<td>
							<c:if test="${product.status==1}">
								<button type="button" class="btn btn-xs btn-success">上架</button>
							</c:if>
							<c:if test="${product.status==0}">
								<button type="button" class="btn btn-xs btn-warning">下架</button>
							</c:if>
						</td>
						<td><fmt:formatDate value='${product.addDate}' pattern="yyyy-MM-dd HH:mm:ss" /></td>
						<td>
							<button type="button" onclick="deleteProduct(${product.id})" class="btn btn-xs btn-danger">删除</button>
							<a href="${pageContext.request.contextPath}/product/edit?id=${product.id}" class="btn btn-xs btn-primary">编辑</a>
							<a href="${pageContext.request.contextPath}/product/info?id=${product.id}" class="btn btn-xs btn-info">详情</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>

		</div>
		<script type="text/javascript">
			function deleteProduct(id) {
				if (confirm("是否删除此商品？")){
					$.post("${pageContext.request.contextPath}/product/delete",{id:id},
						function (data,status) {
							if (data>0){
								alert("删除成功");
								location.href="${pageContext.request.contextPath}/product/allProduct"
							}
							else {alert("删除失败")}
						},'json')
				}
			}
		</script>
	</body>
</html>
