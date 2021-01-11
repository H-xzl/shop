
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
</head>
<body>
    <p>${product.id}</p>
    <p>${product.name}</p>
    <p>${product.price}</p>
    <p>${product.sum}</p>
    <p>${product.visitCount}</p>
    <p>${product.status}</p>
    <p><fmt:formatDate value='${product.addDate}' pattern="yyyy-MM-dd HH:mm:ss"/></p>
    <p>${product.description}</p>
    <img src="${pageContext.request.contextPath}/static/img/${product.picUrl}" alt="商品图片" width="200px" height="200px">
    <br>
    <button onclick="history.back()" class="btn btn-success">返回</button>
</body>
</html>
