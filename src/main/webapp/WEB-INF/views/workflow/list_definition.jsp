<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="list_definition" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>可用流程-基于工作流的办公自动化系统</title>
    <%@ include  file="../common/header.jsp"%>
</head>
<body>
<%@ include  file="../common/barside.jsp"%>

<table class="table table-hover">
    <thead>
    <tr>
        <td>序号</td>
        <td>流程定义ID</td>
        <td>部署ID</td>
        <td>流程名称</td>
        <td>版本</td>
        <td>状态</td>
        <td>操作</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${definitionList}" begin="0" var="item" varStatus="varStatus">
        <tr>
            <td>${varStatus.index+1}</td>
            <td>${item.id}</td>
            <td>${item.deploymentId}</td>
            <td>${item.name}</td>
            <td>${item.version}</td>
            <td>
                <c:choose>
                    <c:when test="${item.suspended == false}">
                        <span style="color:green">可用</span>
                    </c:when>
                    <c:otherwise>
                        <span style="color:red">挂起</span>
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <button class="btn btn-success" onclick="definitionStart('${item.id}')">
                    <span class="glyphicon glyphicon-off"></span>
                    启动
                </button>
                <button class="btn btn-primary">
                    <span class="glyphicon glyphicon-lock"></span>
                    挂起
                </button>
                <button class="btn btn-danger">
                    <span class="glyphicon glyphicon-remove"></span>
                    删除
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%@ include  file="../common/footer.jsp"%>
</body>
<script type="text/javascript">
    // 跳转启动信息填写页面
    function definitionStart(definitionId) {
        var url = "${formPre}definition/"+definitionId+"/get.html";
        window.location.href=url;
    }
</script>
</html>

