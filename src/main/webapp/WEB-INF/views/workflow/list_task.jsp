<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="list_model" />
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>待办列表-基于工作流的办公自动化系统</title>
    <%@ include  file="../common/header.jsp"%>
</head>
<body>
<%@ include  file="../common/barside.jsp"%>
<table class="table">
        <thead>
            <tr>
                <th>序号</th>
                <th>任务ID</th>
                <th>任务名称</th>
                <th>流程实例ID</th>
                <th>任务创建时间</th>
                <th>办理人</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
    <c:forEach items="${taskList}" begin="0" var="item" varStatus="varStatus">
        <tr>
        <td>${varStatus.index+1}</td>
        <td>${item.id}</td>
        <td>${item.name}</td>
        <td>${item.processInstanceId}</td>
        <td><fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        <td>${item.assignee}</td>
        <td>
            <c:if test="${not empty item.assignee}">
                <form action="${formPre}task/${item.id}/get.html" method="get">
                    <button class="btn btn-default" type="submit">
                        <span class="glyphicon glyphicon-play" style="margin-right: 1em;"></span>办理
                    </button>
                </form>
            </c:if>
            <c:if test="${empty item.assignee}">
                <form action="${taskPre}${item.id}/claim.html" method="post">
                    <button class="btn btn-default" type="submit">
                        <span class="glyphicon glyphicon-user" style="margin-right: 1em;"></span>签收
                    </button>
                </form>
            </c:if>
        </td>
        </tr>
    </c:forEach>
        </tbody>
</table>
<%@ include  file="../common/footer.jsp"%>
<script type="text/javascript">
    function startCompleteTask(taskId) {

    }

</script>
</body>

</html>
