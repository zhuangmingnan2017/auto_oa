<%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-4
  Time: 下午4:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>分组列表</title>
</head>
<body>
    <c:if test="${errno != 0}">
        <p style="color:red;">${errmsg}</p>
    </c:if>
    <c:forEach items="${groupList}" var="item" begin="0">
        <span>id:${item.id}</span><br />
        <form action="del.do?groupId=${item.id}" method="post">
            <input type="submit" value="删除"/>
        </form>
        <br />=======<br />
    </c:forEach>

    <form action="add.do" method="post">
        <input type="text" name="groupName" placeholder="输入分组名" />
        <input type="submit" />
    </form>

</body>

</html>
