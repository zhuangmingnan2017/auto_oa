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
        <td>流程ID</td>
        <td>流程定义ID</td>
        <td>流程名称</td>
        <td>启动时间</td>
        <td>结束时间</td>
        <td>状态</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${historicInstanceList}" begin="0" var="item" varStatus="varStatus">
        <tr onclick="detailHistoricInstance('${item.id}');" style="cursor: pointer;">
            <td>${varStatus.index+1}</td>
            <td>${item.id}</td>
            <td>${item.processDefinitionId}</td>
            <td>${item.processDefinitionName}</td>
            <td><fmt:formatDate value="${item.startTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
            <td><fmt:formatDate value="${item.endTime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
            <td>
               <c:if test="${item.endTime == null}">
                   未结束
               </c:if>
                <c:if test="${item.endTime != null}">
                    已结束
                </c:if>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%@ include  file="../common/footer.jsp"%>
</body>
<script type="text/javascript">
    function detailHistoricInstance(hisInstanceId){
        window.location.href="detail.html?instanceId="+hisInstanceId;
    }
</script>
</html>

