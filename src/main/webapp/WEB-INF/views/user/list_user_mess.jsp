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
    <title>用户列表</title>
</head>
<body>
    <c:if test="${errno != 0}">
        <p style="color:red;">${errmsg}</p>
    </c:if>
    <c:forEach items="${userList}" var="item" begin="0">
        <form action="update.do" method="post">
            id:<input type="text" name="id" value="${item.id}" /> <br />
            firstName:<input type="text" name="firstName" value="${item.firstName}" /><br />
            lastName:<input type="text" name="lastName" value="${item.lastName}" /><br />
            email:<input type="text" name="email" value="${item.email}" /><br />
            password:<input type="text" name="password" value="${item.password}" /><br />
            <input type="submit" value="确认修改"/>
        </form>
        <form action="del.do?userId=${item.id}" method="post">
            <input type="submit" value="删除"/>
        </form>
        <br />=======<br />
    </c:forEach>

    <form action="add.do" method="post">
        <input type="text" name="id" placeholder="输入员工编号" />
        <input type="text" name="firstName" placeholder="输入firstName" />
        <input type="text" name="lastName" placeholder="lastName" />
        <input type="text" name="email" placeholder="输入email" />
        <input type="password" name="password" placeholder="输入password" />
        <input type="submit" />
    </form>

</body>

</html>
