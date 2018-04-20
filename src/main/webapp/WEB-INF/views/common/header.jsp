<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-4
  Time: 下午3:42
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">


<!-- Bootstrap core CSS -->
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
<link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/static/css/sweetalter-1.1.3/sweetalter.css" rel="stylesheet" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script src="${pageContext.request.contextPath}/static/js/extend/tooltip.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/extend/Popper.js"></script>
<script src="${pageContext.request.contextPath}/static/js/extend/jquery/3.3.1/jquery.js"></script>
<script src="${pageContext.request.contextPath}/static/js/extend/bootstrap/4.0.0/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/static/js/extend/layer/layer.js" ></script>
<script src="${pageContext.request.contextPath}/static/js/extend/sweetalert2.min.js" ></script>

<%--登录控制--%>
<c:if test="${sessionScope.ACCOUNT == null || sessionScope.ACCOUNT == ''}">
    <!-- 未登录 -->
    <c:redirect url="/jump_to_login"/>
</c:if>