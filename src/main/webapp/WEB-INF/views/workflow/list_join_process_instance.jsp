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
        <td>执行ID</td>
        <td>流程实例ID</td>
        <td>流程名称</td>
        <td>流程定义ID</td>
        <td>当前节点</td>
    </tr>
    </thead>
    <tbody>
    <c:set var="iteratorCount" value="1" />
    <c:forEach items="${outputVO.executionList}" begin="0" var="execution">
        <c:forEach items="${outputVO.currentActivityMap[execution.id]}" var="activityId">
            <c:set var="task" value="${outputVO.taskMap[activityId]}" />
            <tr>
                <td>
                    ${iteratorCount}
                    <c:set var="iteratorCount" value="${iteratorCount+1}" />
                </td>
                <td>
                    ${execution.id}
                </td>
                <td>
                    ${execution.processInstanceId}
                </td>
                <td>
                    ${execution.processDefinitionName}
                </td>
                <td>
                    ${execution.processDefinitionId}
                </td>
                <td>
                    <c:if test="${task.processDefinitionId != execution.processDefinitionId}">
                        <%-- 调用了外部流程--%>
                        <span title="调用了外部流程">
                            ${outputVO.definitionMap[task.processDefinitionId].name}-
                        </span>
                    </c:if>
                    ${task.name}

                    <c:if test="${empty task.assignee}">
                        (<span class="text-info">未签收</span>)
                    </c:if>
                    <c:if test="${not empty task.assignee}">
                        (<span class="glyphicon glyphicon-user"></span>${task.assignee}<span class="text-info">办理中</span> )
                    </c:if>
                </td>
            </tr>
        </c:forEach>
    </c:forEach>
    </tbody>
</table>
<%@ include  file="../common/footer.jsp"%>
</body>
<script type="text/javascript">
    // 跳转启动信息填写页面
    function definitionStart(definitionId) {
        window.location.href="${formPre}definition/" + definitionId + "/get.html";
    }

    // 删除的表单提交
    function delFormSubmit(){
        return delDialogShow();
    }
</script>
</html>

