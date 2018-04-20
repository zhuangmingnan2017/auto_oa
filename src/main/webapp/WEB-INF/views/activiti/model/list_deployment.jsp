<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>模型管理-基于工作流的办公自动化系统</title>
    <%@ include  file="../../common/header.jsp"%>
</head>
<body>
<%@ include  file="../../common/barside.jsp"%>

<!-- Modal -->
<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <form action="/ac/model/add.do" method="post" enctype="multipart/form-data">
                <div class="modal-body">
                    xml文件：<input type="file" name="file" />
                    <label>
                        分类：
                        <select name="category_name">
                            <c:forEach items="${category_list}" var="item">
                                <option value="${item.category_name}">${item.category_name}</option>
                            </c:forEach>
                        </select>
                    </label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <input type="submit" class="btn btn-primary" value="确认部署"/>
                    <%--<button type="button" class="btn btn-primary">确认部署</button>--%>
                </div>
            </form>
        </div>
    </div>
</div>

    <table class="table">
        <thead>
            <tr>
                <td>名称</td>
                <td>编码</td>
                <td>分类</td>
                <td>部署时间</td>
                <td>版本</td>
                <td>操作</td>
            </tr>
        </thead>
        <tbody>
    <c:forEach items="${list}" begin="0" var="item">
        <tr>
        <td>${item.name}</td>
        <td>${item.key}</td>
        <td>${item.category}</td>
        <td><fmt:formatDate value="${item.deploymentTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        <td>V1.0</td>
        <td>
            <form action="/ac/model/del.do" method="post">
                <input type="hidden" name="deploymentId" value="${item.id}" />
                <input type="submit" value="删除" />
            </form>
        </td>
        </tr>
    </c:forEach>
        </tbody>
    </table>
    <%--<button onclick="javascript:window.location='/ac/model/add'" class="button">新增部署</button><br />--%>
    <%--<button id="myModal" class="button">新增部署</button><br />--%>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
        新增流程模型
    </button>
<%@ include  file="../../common/footer.jsp"%>
</body>
<%--
<c:forEach items="${list}" begin="0" var="item">
        部署流程id:${item.id}<br />
        名称：${item.name}<br />
        部署时间：<fmt:formatDate value="${item.deploymentTime}" pattern="yyyy-MM-dd"/><br />
        流程分类：${item.category}<br />
        流程的key：${item.key}<br />
        tenantId:${item.tenantId} <br />
        <form action="/ac/model/del.do" method="post" >
            <input type="hidden" name="deploymentId" value="${item.id}" />
            <input type="submit" value="删除流程部署" />
        </form>
    </c:forEach>
--%>
</html>
