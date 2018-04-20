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
    <c:forEach items="${taskList}" begin="0" var="item">
        name:${item.name}<br />
        <form action="/autooa/usertask/user/complete.do" method="post">
            taskId:${item.id}
            <input type="hidden" value="${item.id}" name="taskId"/>
            <input type="hidden" value="zmn" name="userName"/>
            <input type="submit" />
        </form>
    </c:forEach>
</body>
</html>
