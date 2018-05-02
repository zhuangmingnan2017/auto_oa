<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>
        AUTO-OA
    </title>

    <link href="${pageContext.request.contextPath}/static/css/bootstrap/3.3.7/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/font-awesome/4.7.0/font-awesome.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/sweetalter-1.1.3/sweetalter.css" rel="stylesheet" />

    <script src="${pageContext.request.contextPath}/static/js/extend/jquery/3.3.1/jquery.js" ></script>
    <script src="${pageContext.request.contextPath}/static/js/extend/bootstrap/4.0.0/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/extend/bootstrap-show-password/1.1.2/bootstrap-show-password.js"></script>

    <!--jquery.validate-->
    <script src="https://cdn.bootcss.com/jquery-validate/1.17.0/jquery.validate.min.js"></script>
    <%--<script type="text/javascript" src="js/message.js" ></script>--%>

    <link href="${pageContext.request.contextPath}/static/css/login.css" rel="stylesheet">
    <style>
        .dependency_form_group{
            padding: 0 40px;!important;
            margin: 0 0 25px 0;!important;
            position: relative;!important;
        }
        #passwordI{
            position: absolute;
            top: 12px;
            left: 60px;
            font-size: 17px;
            color: #c8c8c8;
            transition: all 0.5s ease 0s;
            z-index: 99;
        }
    </style>
</head>
<body style="background-image:url('/static/image/login_oa_bg.jpeg')">
<div class="container">
    <div class="row" style="margin-top: 22%">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="${pageContext.request.contextPath}/login.do" method="post">
                <span class="heading">用户登录</span>

                <c:if test="${login_error_msg != null and login_error_msg != ''}">
                    <span style="color:red;">${login_error_msg}</span><br />
                </c:if>

                <div class="form-group">
                    <input type="text" class="form-control" id="account" name="account" placeholder="用户名">
                    <i class="glyphicon glyphicon-user"></i>
                </div>
                <div id="passwordDiv" class="dependency_form_group">
                    <input type="password" class="form-control" id="password" name="password" placeholder="密　码">
                    <i id="passwordI" class="glyphicon glyphicon-asterisk"></i>
                </div>
                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">记住我</span>
                    <button type="submit" class="btn btn-default">登录</button>
                </div>
                <%--<p>还没有帐号？点击<a href="${pageContext.request.contextPath}/register.html" style="text-decoration: underline;">注册</a></p>--%>
            </form>
        </div>
    </div>
</div>

</body>

${uCenterLogoutScript}

<script type="text/javascript">
    $(function () {
        $("#password").password();
    });
</script>

</html>
