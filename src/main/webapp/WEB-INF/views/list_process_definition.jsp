<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-4
  Time: 下午3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>流程定义</title>
</head>
<body>
    <c:forEach items="${process}" begin="0" var="item">
        id:${item.id}<br />
        category:${item.category}<br />
        name:${item.name}<br />
        key:${item.key}<br />
        description:${item.description}<br />
        version:${item.version}<br />
        resourceName:${item.resourceName}<br />
        deploymentId:${item.deploymentId}<br />
        diagramResourceName:${item.diagramResourceName}<br />
        hasStartFormKey:${item.hasStartFormKey}<br />
        suspended:${item.suspended}<br />
        tenantId:${item.tenantId}<br /><br /><br />
        <form action="/autooa/process/instance/start.do" method="get">
            <input type="text" name="processId" placeholder="输入流程定义id"/>
            <input type="text" name="userId" placeholder="员工编号"/>
            <input type="submit" />
        </form>
    </c:forEach>
</body>
</html>
