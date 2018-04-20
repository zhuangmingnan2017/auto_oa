<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-4
  Time: 下午3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>用户列表</title>
</head>
<body>
    <c:forEach items="${historyTaskList}" begin="0" var="item">
        id:${item.id} <br />
        businessKey:${item.businessKey}<br />
        ${item.deleteReason}<br />
        ${item.startTime}<br />
        ${item.endTime}<br />
        ${item.durationInMillis}<br />
        ${item.processDefinitionId}<br />
        ${item.name}<br /><br />================
    </c:forEach>
</body>
</html>
