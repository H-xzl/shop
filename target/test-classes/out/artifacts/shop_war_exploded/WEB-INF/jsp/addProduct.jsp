
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>添加商品</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <h3>添加商品</h3>
                <hr/>
                <form action="${pageContext.request.contextPath}/product/addProduct" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="id" value="">
                    <div class="form-group">
                        <label for="name">商品名称</label>
                        <input name="name" type="text" class="form-control" id="name" required placeholder="商品名">
                    </div>
                    <div class="form-group">
                        <label for="price">商品价格</label>
                        <input name="price" type="number" class="form-control" id="price" required placeholder="商品价格">
                    </div>
                    <div class="form-group">
                        <label for="sum">商品总量</label>
                        <input name="sum" type="number" class="form-control" id="sum" required placeholder="商品数量">
                    </div>

                    <input name="visitCount" type="hidden" id="visitCount" value="0">

                    <div class="form-group">
                        <label for="status">商品状态</label>
                        <select id="status" name="status" required class="form-control">
                            <option selected value="1">上架</option>
                            <option value="0">下架</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="addDate">添加时间</label>
                        <input name="addDate" type="date" class="form-control" required id="addDate" value="<fmt:formatDate value='<%=new Date() %>' pattern="yyyy-MM-dd" />">
                    </div>
                    <div class="form-group">
                        <label for="description">商品描述</label>
                        <input name="description" type="text" class="form-control required" id="description" placeholder="商品描述">
                    </div>
                    <div class="form-group">
                        <label for="picUrl">商品图片</label>
                        <input type="file" required name="picUrl" id="picUrl">
                    </div>
                    <button type="submit" class="btn btn-primary">提交</button>
                    <button type="button" onclick="history.back()" class="btn btn-info">返回</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>