<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: zhuangmingnan
  Date: 18-4-4
  Time: 上午10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>基于工作流的办公自动化系统</title>
    <%@ include  file="common/header.jsp"%>
</head>

<body>
<%@ include  file="common/barside.jsp"%>
<div class="row-fluid">
    <h1>AUTO-OA基于工作流的办公自动化系统</h1>
    <h2>当前时间：<fmt:formatDate value="<%=new Date()%>" pattern="yyyy-MM-dd HH:mm:ss"/></h2>
    <h4>欢迎${sessionScope.USER_NAME}</h4>
</div>
<%@ include  file="common/footer.jsp"%>
</body>
</html>
