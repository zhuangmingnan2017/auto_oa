<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="list_instance" />
<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-5
  Time: 下午12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>流程管理-基于工作流的办公自动化系统</title>
    <%@ include  file="../../common/header.jsp"%>
</head>
<body>
<%@ include  file="../../common/barside.jsp"%>

<table class="table table-hover">
    <thead>
    <tr>
        <td>序号</td>
        <td>流程名称</td>
        <td>申请人</td>
        <td>当前节点(审批人)</td>
        <td>当前任务</td>
        <td>创建时间</td>
        <td>状态</td>
        <td>操作</td>
        <td>变量</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" begin="0" var="item" varStatus="varStatus">
        <tr>
            <td>${varStatus.index+1}</td>
            <td>${instance_map[item.processInstanceId].processDefinitionName}</td>
            <td>${instance_map[item.processInstanceId].startUserId}</td>
            <td>${item.assignee}</td>
            <td>${item.name}</td>
            <td><fmt:formatDate value="${instance_map[item.processInstanceId].startTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
            <td>
                <c:choose>
                    <c:when test="${item.suspended == false}"><span style="color:green">运行中</span></c:when>
                    <c:otherwise><span style="color:red">挂起</span></c:otherwise>
                </c:choose>
            </td>
            <td>
               <form action="/ac/task/complete.do" method="post">
                   <input type="hidden" name="taskId" value="${item.id}" />
                   <input type="submit" class="btn" value="办理" />
               </form>
            </td>
            <td>
                ${var_map[item.id]}
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%@ include  file="../../common/footer.jsp"%>
</body>
<%--
<c:forEach items="${list}" var="item">
        流程定义id:${item.processDefinitionId}<br />
        流程定义名称：${item.processDefinitionName}<br />
        流程定义key:${item.processDefinitionKey}<br />
        流程定义版本:${item.processDefinitionVersion} <br />
        流程部署id：${item.deploymentId}<br />
        业务key：${item.businessKey}<br />
        流程变量：${item.processVariables}<br />
        实例名称：${item.name}<br />
        描述：${item.description} <br />
        实例的本地化名称：${item.localizedName}<br />
        实例的本地化描述:${item.localizedDescription}<br />
        开始时间：<fmt:formatDate value="${item.startTime}" pattern="yyyy-MM-dd HH:mm:ss" /><br />
        发起人id：${item.startUserId}
        <br /><br />
    </c:forEach>
--%>
</html>


