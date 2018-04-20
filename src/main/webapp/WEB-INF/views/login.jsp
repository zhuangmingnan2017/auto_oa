<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>
        AUTO-OA
    </title>

    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js" ></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <!--jquery.validate-->
    <script src="https://cdn.bootcss.com/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <%--<script type="text/javascript" src="js/message.js" ></script>--%>

    <link href="/static/css/login.css" rel="stylesheet">

</head>
<body style="background-image:url('/static/image/login_oa_bg.jpeg')">
<div class="container">
    <div class="row" style="margin-top: 22%">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/login.do" method="post">
                <span class="heading">用户登录</span>
                <div class="form-group">
                    <input type="text" class="form-control" id="account" name="account" placeholder="用户名">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="password" name="password" placeholder="密　码">
                    <i class="fa fa-lock"></i>
                    <abbr title="输入密码"><a href="#" class="fa fa-question-circle"></a></abbr>
                </div>
                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">记住我</span>
                    <button type="submit" class="btn btn-default">登录</button>
                </div>
                <p>还没有帐号？点击<a href="/regist" style="text-decoration: underline;">注册</a></p>
            </form>
        </div>
    </div>
</div>

</body>

<c:if test="${NOTIFY_MSG != null and NOTIFY_MSG != ''}">
    <script type="text/javascript">
        alert("${NOTIFY_MSG}");
    </script>
</c:if>

<script type="text/javascript">
    <c:if test="${ERR_MSG != null and ERR_MSG != '' and ERR_NO != null and ERR_NO != 0}">
        alert("${ERR_MSG}");
    </c:if>
</script>

</html>
