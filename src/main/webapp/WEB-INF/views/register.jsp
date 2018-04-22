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

</head>
<body style="background-image:url('/static/image/login_oa_bg.jpeg')">
<div class="container">
    <div class="row" style="margin-top: 12%">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/regist.do" method="post">
                <span class="heading">注册新帐号</span>
                <div class="form-group">
                    <input type="text" class="form-control" id="account" name="account" placeholder="用户名">
                    <i class="glyphicon glyphicon-log-out"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="username" name="username" placeholder="姓名">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="password" name="password" placeholder="密码">
                    <i class="glyphicon glyphicon-console"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="re_password" name="re_password" placeholder="再输入密码">
                    <i class="glyphicon glyphicon-console"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="手机号码">
                    <i class="glyphicon glyphicon-phone"></i>
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" id="email" name="email" placeholder="电子邮件">
                    <i class="glyphicon glyphicon-envelope"></i>
                </div>
                <div class="form-group">
                    <i class="fa fa-user">性别</i>
                    <label for="sex_male" class="radio-inline">
                        <input type="radio" id="sex_male" name="sex">男
                    </label>
                    <label for="sex_female" class="radio-inline">
                        <input type="radio" id="sex_female" name="sex">女
                    </label>
                </div>
                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">同意<a href="#">《AUTO-OA用户服务条款》</a></span>
                    <button type="submit" class="btn btn-default" disabled id="regist-btn">注册</button>
                </div>
                <div class="form-group">
                    <p>已有帐号？点击<a href="/login" style="text-decoration: underline;">登录</a></p>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function(){
        $("#regist-btn").click(function () {
            alert("a");
        });
       $("#checkbox1").change(function () {
           if($(this).prop('checked')){
               $("#regist-btn").attr("disabled", false);
           }else{
               $("#regist-btn").attr("disabled", true);
           }
       });
    });
</script>
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
