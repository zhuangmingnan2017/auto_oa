<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="list_model" />
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
    <%@ include  file="../common/header.jsp"%>
</head>
<body>
<%@ include  file="../common/barside.jsp"%>

    <table class="table">
        <thead>
            <tr>
                <th>序号</th>
                <th>模型名称</th>
                <th>模型分类</th>
                <th>创建时间</th>
                <th>修改时间</th>
                <th>版本</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
    <c:forEach items="${modelList}" begin="0" var="item" varStatus="varStatus">
        <tr>
        <td>${varStatus.index+1}</td>
        <td>${item.name}</td>
        <td>${item.category}</td>
        <td><fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        <td><fmt:formatDate value="${item.lastUpdateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        <td>V${item.version}</td>
        <td>
            <button class="btn btn-small btn-success" onclick="deployment(${item.id});">发布</button>
            <a class="btn btn-small btn-primary" href="${basePath}/activiti-editor/modeler.html?modelId=${item.id}" target="_blank" >设计流程</a>
            <button class="btn btn-small btn-primary" onclick="exportXml(${item.id}, '${item.name}');">导出XML</button>
            <button class="btn btn-small btn-primary" onclick="exportPic(${item.id}, '${item.name}');">导出图片</button>
            <button class="btn btn-small btn-danger" onclick="delModel(${item.id}, '${item.name}');">删除</button>
        </td>
        </tr>
    </c:forEach>
        </tbody>
    </table>
    <%--<button onclick="javascript:window.location='/ac/model/add'" class="button">新增部署</button><br />--%>
    <%--<button id="myModal" class="button">新增部署</button><br />--%>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addNewModerModal">
        新增流程模型
    </button>

<!-- 新增流程模型 模态框 -->
<div class="modal" id="addNewModerModal" tabindex="-1" role="dialog" aria-labelledby="addNewModerModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="addNewModerModalLabel">新增流程模型</h4>
            </div>
            <div class="modal-body">
                <form action="${modelPre}editor.html" method="post" id="addNewModelForm">
                    <div class="form-group">
                        <label for="new_process_author">流程作者：</label>
                        <input type="text" id="new_process_author" name="process_author" class="form-control" value="${sessionScope.user.username}"/>
                    </div>
                    <div class="form-group">
                        <label for="new_process_name">流程名称：</label>
                        <input type="text" id="new_process_name" name="process_name" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="new_process_id">流程编码：</label>
                        <input type="text" id="new_process_id" name="process_id" class="form-control"/>
                    </div>
                    <div class="form-group" style="display: none;">
                        <label for="new_model_name">模型名称：</label>
                        <input type="text" id="new_model_name" name="model_name" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="new_description">模型描述：</label>
                        <input type="text" id="new_description" name="description" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="new_category">模型分类：</label>
                        <input type="text" id="new_category" name="category" class="form-control"/>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary" onclick="addNewModel();">开始设计流程</button>
                <button class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<%@ include  file="../common/footer.jsp"%>
<script src="${basePath}/static/js/list_model.js"></script>
<script type="text/javascript">

</script>
</body>

</html>
