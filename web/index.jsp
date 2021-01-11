
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <!--2 针对移动设备，配置如下 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--3 引入jquery.js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <!--4 引入Bootstrap的css和js文件：注意bootstrap的js文件一定要在jquery.js之后-->
    <link type="text/css"  rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <title>登录</title>
  </head>
  <body>
  <div class="container">
    <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6">
        <h1 class="bg-info" style="text-align: center;">管理员登录</h1>
      </div>
      <div class="col-md-2"></div>
    </div>
    <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6">
        <form action="${pageContext.request.contextPath}/product/allProduct" method='post'>
          <!-- 登录表单 -->
          <table class="table">
            <tr class="active">
              <td>用户名</td>
              <td><input class="form-control" type="text" name="username" id="username"></td>
              <td></td>
            </tr>
            <tr class="active">
              <td>密码</td>
              <td><input class="form-control" type="password" name="password" id="password"></td>
              <td></td>
            </tr>

            <tr class="active">
              <td></td>
              <td style="text-align: center;">
                <a href="${pageContext.request.contextPath}/admin/register" class="btn btn-info">注册</a>
                <input class="btn btn-success" type="submit" value="登录">
              </td>
              <td></td>
            </tr>
            <tr>
              <td></td>
              <td></td>
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
