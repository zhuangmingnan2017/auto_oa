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
    <%@ include  file="../../common/header.jsp"%>
</head>
<body>
<%@ include  file="../../common/barside.jsp"%>

    <table class="table">
        <thead>
            <tr>
                <td>序号</td>
                <td>模型名称</td>
                <td>分类</td>
                <td>创建时间</td>
                <td>最后更新时间</td>
                <td>版本</td>
                <td>操作</td>
            </tr>
        </thead>
        <tbody>
    <c:forEach items="${list}" begin="0" var="item" varStatus="varStatus">
        <tr>
        <td>${varStatus.index+1}</td>
        <td>${item.name}</td>
        <td>${item.category}</td>
        <td><fmt:formatDate value="${item.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        <td><fmt:formatDate value="${item.lastUpdateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
        <td>V${item.version}</td>
        <td>
            <a class="btn btn-small btn-primary" href="/activiti-editor/modeler.html?modelId=${item.id}" target="_blank" >设计流程</a>
            <button class="btn btn-small btn-success" onclick="javascript:deployment(${item.id});">部署</button>
            <button class="btn btn-small btn-primary" onclick="javascript:viewXmlDialog(${item.id}, '${item.name}');">预览XML</button>
            <button class="btn btn-small btn-primary" onclick="javascript:viewPicDialog(${item.id}, '${item.name}');">预览图片</button>
            <%--<a class="btn btn-small btn-primary" href="">导出XML</a>
            <a class="btn btn-small btn-primary" href="">导出图片</a>--%>
            <button class="btn btn-small btn-danger" onclick="javascript:delModelConfirm(${item.id});">删除</button>
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

<!-- 新增部署模态框 -->
<%--<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                    &lt;%&ndash;<button type="button" class="btn btn-primary">确认部署</button>&ndash;%&gt;
                </div>
            </form>
        </div>
    </div>
</div>--%>

<!-- xml 模态框 -->
<div class="modal" id="viewXmlModal" tabindex="-1" role="dialog" aria-labelledby="viewXmlModalLabel">
    <div class="modal-dialog" role="document" style="width: 80%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="viewXmlModalLabel">xml预览</h4>
            </div>
                <div class="modal-body">
                    <textarea id="viewXmlModalBody" style="width: 100%; height:800px;"></textarea>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <%--<button type="button" class="btn btn-primary">确认部署</button>--%>
                </div>
        </div>
    </div>
</div>


<!-- 图片 模态框 -->
<div class="modal" id="viewPicModal" tabindex="-1" role="dialog" aria-labelledby="viewPicModalLabel">
    <div class="modal-dialog" role="document" style="width: 80%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="viewPicModalLabel">xml预览</h4>
            </div>
            <div class="modal-body">
                <img id="viewPicModalBody" style="width: 100%; height:500px;" />
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <%--<button type="button" class="btn btn-primary">确认部署</button>--%>
            </div>
        </div>
    </div>
</div>

<!-- 新增流程模型 模态框 -->
<div class="modal" id="addNewModerModal" tabindex="-1" role="dialog" aria-labelledby="addNewModerModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="addNewModerModalLabel">新增流程模型</h4>
            </div>
            <div class="modal-body">
                <form action="${pageContext.request.contextPath}/ac/modeler/editor.do" method="get" id="addNewModelForm">
                    <div class="form-group">
                        <label for="new_process_author">流程作者：</label>
                        <input type="text" id="new_process_author" name="process_author" class="form-control" value="${sessionScope.USER_NAME}"/>
                    </div>
                    <div class="form-group">
                        <label for="new_process_name">流程名称：</label>
                        <input type="text" id="new_process_name" name="process_name" class="form-control"/>
                    </div>
                    <div class="form-group">
                        <label for="new_process_id">流程编码：</label>
                        <input type="text" id="new_process_id" name="process_id" class="form-control"/>
                    </div>
                    <div class="form-group">
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
<%@ include  file="../../common/footer.jsp"%>
<script src="${pageContext.request.contextPath}/static/js/list_model.js"></script>
<script type="text/javascript">

</script>
</body>

</html>
