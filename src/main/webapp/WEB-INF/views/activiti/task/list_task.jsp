<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-5
  Time: 下午4:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>任务列表</title>
</head>
<body>
    <c:forEach items="${list}" var="item">
        任务id：${item.id}<br />
        任务名称：${item.name}<br />
        任务描述：${item.description}<br />
        任务优先级：${item.priority}<br />
        任务拥有者:${item.owner}<br />
        任务指派者：${item.assignee}<br />
        流程实例id：${item.processInstanceId}<br />
        执行id：${item.executionId}<br />
        流程定义id:${item.processDefinitionId}<br />
        创建时间：<fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /><br />
        任务定义key：${item.taskDefinitionKey} <br />
        任务截止时间：<fmt:formatDate value="${item.dueDate}" pattern="yyyy-MM-dd HH:mm:ss" /><br />
        分类:${item.category}<br />
        表单key：${item.formKey}<br />
        任务变量：${item.taskLocalVariables}<br />
        任务签收时间：<fmt:formatDate value="${item.claimTime}" pattern="yyyy-MM-dd HH:mm:ss" /><br />
        <br /><br />
    </c:forEach>
</body>
</html>
