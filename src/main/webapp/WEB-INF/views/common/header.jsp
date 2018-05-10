<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
<%-- 通用路径变量 --%>

<%--项目的根目录--%>
<c:set var="basePath" value="${pageContext.request.contextPath}" />

<c:set var="userPre" value="${basePath}/oa/system/user/" />
<c:set var="permissionPre" value="${basePath}/oa/system/permission/" />
<c:set var="rolePre" value="${basePath}/oa/system/role/" />

<c:set var="modelPre" value="${basePath}/oa/workflow/model/" />
<c:set var="definitionPre" value="${basePath}/oa/workflow/definition/" />
<c:set var="instancePre" value="${basePath}/oa/workflow/instance/" />
<c:set var="formPre" value="${basePath}/oa/workflow/form/" />
<c:set var="taskPre" value="${basePath}/oa/workflow/task/" />


<c:set var="projectPath" value="${pageContext.request.contextPath}" />

<!-- Bootstrap core CSS -->
<link href="${basePath}/static/css/bootstrap/3.3.7/bootstrap.min.css" rel="stylesheet" />
<link href="${basePath}/static/css/font-awesome/4.7.0/font-awesome.min.css" rel="stylesheet" />
<link href="${basePath}/static/css/sweetalter-1.1.3/sweetalter.css" rel="stylesheet" />
<link href="${basePath}/static/css/bootstrap-datepicker/1.8.0/bootstrap-datepicker.css" rel="stylesheet" />
<link href="${basePath}/static/css/bootstrap-datetimepicker/4.17.47/bootstrap-datetimepicker.css" rel="stylesheet" />
<link href="${basePath}/static/css/jquery-contextmenu/3.0.0-beta.2/jquery.contextMenu.css" rel="stylesheet" />
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script src="${basePath}/static/js/extend/tooltip.min.js"></script>
<script src="${basePath}/static/js/extend/Popper.js"></script>
<script src="${basePath}/static/js/extend/jquery/3.3.1/jquery.js"></script>
<script src="${basePath}/static/js/extend/bootstrap/4.0.0/bootstrap.js"></script>
<script src="${basePath}/static/js/extend/layer/layer.js" ></script>
<script src="${basePath}/static/js/extend/sweetalert2.min.js" ></script>
<script src="${basePath}/static/js/extend/bootstrap-datepicker/1.8.0/bootstrap-datepicker.js"></script>
<script src="${basePath}/static/js/extend/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<script src="${basePath}/static/js/extend/jquery-contextmenu/3.0.0-beta.2/jquery.contextMenu.js"></script>
<script src="${basePath}/static/js/extend/jquery-contextmenu/3.0.0-beta.2/jquery.ui.position.js"></script>
<script src="${basePath}/static/js/extend/moment.js/2.22.1/moment.js"></script>
<script src="${basePath}/static/js/extend/moment.js/2.22.1/locale/zh-cn.js"></script>
<script src="${basePath}/static/js/extend/bootstrap-datetimepicker/4.17.47/bootstrap-datetimepicker.min.js"></script>

<%-- ueditor --%>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/extend/ueditor/ueditor.config.js?2023"></script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/extend/ueditor/ueditor.all.js?2023"> </script>
<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/static/js/extend/ueditor/lang/zh-cn/zh-cn.js?2023"></script>

<script type="text/javascript">
    $.ajaxSetup({
        async : false
    });
</script>