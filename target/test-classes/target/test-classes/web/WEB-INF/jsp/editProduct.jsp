
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加商品</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
<%--    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/4.5.3/css/bootstrap.min.css" rel="stylesheet">--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <h3>编辑商品</h3>
                <hr/>
                <form action="${pageContext.request.contextPath}/product/editProduct" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="id" value="${product.id}">
                    <div class="form-group">
                        <label for="name">商品名称</label>
                        <input name="name" type="text" class="form-control" id="name" value="${product.name}" required placeholder="商品名">
                    </div>
                    <div class="form-group">
                        <label for="price">商品价格</label>
                        <input name="price" type="number" class="form-control" id="price" value="${product.price}" required placeholder="商品价格">
                    </div>
                    <div class="form-group">
                        <label for="sum">商品总量</label>
                        <input name="sum" type="number" class="form-control" id="sum" required value="${product.sum}" placeholder="商品数量">
                    </div>

                    <div class="form-group">
                        <label for="visitCount">商品热度</label>
                        <input name="visitCount" type="number" class="form-control" id="visitCount" required value="${product.visitCount}" placeholder="商品热度" >
                    </div>

                    <div class="form-group">
                        <label for="status">商品状态</label>
                        <select id="status" name="status" required class="form-control">
                            <c:if test="${product.status==1}">
                                <option selected value="1">上架</option>
                                <option value="0">下架</option>
                            </c:if>
                            <c:if test="${product.status==0}">
                                <option selected value="0">下架</option>
                                <option value="1">上架</option>
                            </c:if>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="description">商品描述</label>
                        <input name="description" type="text" class="form-control required" id="description" value="${product.description}" placeholder="商品描述">
                    </div>
                    <button type="submit" class="btn btn-primary col-sm-4">提交</button>
                    <button type="button" onclick="history.back()" class="btn btn-info col-sm-4 col-sm-offset-4">返回</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>