<%@ page import="java.util.Date" %>
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

<h2>流程综合信息-[${instance.processDefinitionName}]</h2>
<hr />

<table class="table table-hover">
    <tr>
        <td>流程ID</td>
        <td>${instance.id}</td>
        <td>流程定义ID</td>
        <td>${instance.processDefinitionId}</td>
        <td>业务KEY</td>
        <td>${instance.businessKey}</td>
    </tr>
    <tr>
        <td>流程启动时间</td>
        <td><fmt:formatDate value="${instance.startTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
        <td>流程结束时间</td>
        <td><fmt:formatDate value="${instance.endTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
        <td>流程状态</td>
        <td>
            <c:if test="${instance.endTime == null}">
                未结束
            </c:if>
            <c:if test="${instance.endTime != null}">
                已结束
            </c:if>
        </td>
    </tr>
</table>

<h3>活动记录</h3>
<hr />
<table class="table table-hover">
    <thead>
    <tr>
        <td>序号</td>
        <td>活动ID</td>
        <td>活动名称</td>
        <td>任务ID</td>
        <td>办理人</td>
        <td>活动开始时间</td>
        <td>活动结束时间</td>
        <td>活动耗时（秒）</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${activityInstances}" begin="0" var="item" varStatus="varStatus">
        <tr>
            <td>${varStatus.index+1}</td>
            <td>${item.id}</td>
            <td>${item.activityName}</td>
            <td>${item.activityId}</td>
            <td>${item.assignee}</td>
            <td><fmt:formatDate value="${item.startTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
            <td><fmt:formatDate value="${item.endTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
            <td>
                <c:if test="${item.endTime == null}">
                    0.0
                </c:if>
                <c:if test="${item.endTime != null}">
                    <c:set var="startTime" value="${item.startTime}" scope="request"/>
                    <c:set var="endTime" value="${item.endTime}" scope="request"/>
                    <%
                        Date startTime = (Date)request.getAttribute("startTime");
                        Date endTime = (Date)request.getAttribute("endTime");

                        double takeTime = (endTime.getTime() - startTime.getTime())*0.01;
                        request.setAttribute("takeTime", takeTime);
                    %>
                    ${takeTime}
                </c:if>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<h3>相关变量</h3>
<hr />
<table class="table table-hover">
    <thead>
    <tr>
        <td>序号</td>
        <td>变量名称</td>
        <td>变量类型</td>
        <td>值</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${variableInstances}" begin="0" var="item" varStatus="varStatus">
        <tr>
            <td>${varStatus.index+1}</td>
            <td>${item.variableName}</td>
            <td>${item.variableTypeName}</td>
            <td>
                <c:if test="${item.variableTypeName == 'date'}">
                    <fmt:formatDate value="${item.value}" pattern="yyyy-MM-dd HH:mm:ss" />
                </c:if>
                <c:if test="${item.variableTypeName != 'date'}">
                    ${item.value}
                </c:if>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%@ include  file="../common/footer.jsp"%>
</body>

</html>

