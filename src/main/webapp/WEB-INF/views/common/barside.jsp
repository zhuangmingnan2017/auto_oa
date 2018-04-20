<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="projectPath" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <span class="glyphicon glyphicon-home"></span>
                基于工作流的办公自动化系统
            </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
                <li><a href="#">
                    <c:choose>
                        <c:when test="${sessionScope.USER_NAME == null or sessionScope.USER_NAME == ''}">
                            用户
                        </c:when>
                        <c:otherwise>
                            ${sessionScope.USER_NAME}
                        </c:otherwise>
                    </c:choose>
                </a>
                </li>
                <li><a href="${pageContext.request.contextPath}/logout.do">退出登录</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid" style="margin-top:60px;">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-pills nav-stacked">
                <li <c:if test="${pageName == 'list_model'}"> class="active"</c:if>><a href="${projectPath}/ac/model/list.do">部署模型管理<span class="sr-only">(current)</span></a></li>
                <li <c:if test="${pageName == 'list_definition'}"> class="active"</c:if>><a href="${projectPath}/ac/definition/list.do">流程定义管理</a></li>
                <li <c:if test="${pageName == 'list_instance'}"> class="active"</c:if>><a href="${projectPath}/process/instance/list.do">运行中的流程</a></li>
                <li <c:if test="${pageName == 'list_invoke_process'}"> class="active"</c:if>><a href="${projectPath}/ac/definition/go_list_invoke_process.do">发起流程</a></li>
                <li <c:if test="${pageName == 'list_instance'}"> class="active"</c:if>><a href="${projectPath}/process/instance/list.do?userId=${sessionScope.ACCOUNT}">待办任务</a></li>
                <li <c:if test="${pageName == 'list_form'}"> class="active"</c:if>><a href="${projectPath}/ac/form/list.do">表单管理</a></li>
            ------------------------------<br />
                <li><a href="">用户管理</a></li>
                <li><a href="">部门管理</a></li>
            </ul>
        </div>
<div class="col-sm-9 col-md-10  main">