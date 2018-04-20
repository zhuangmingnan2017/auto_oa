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
    <title>模型xml预览-基于工作流的办公自动化系统</title>
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
            <form action="${pageContext.request.contextPath}/ac/model/add.do" method="post" enctype="multipart/form-data">
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
            <a class="btn btn-small btn-primary" href="/ac/model/viewXml.do?modelId=${item.id}" target="_blank">预览XML</a>
            <a class="btn btn-small btn-primary" href="">预览图片</a>
            <a class="btn btn-small btn-primary" href="">导出XML</a>
            <a class="btn btn-small btn-primary" href="">导出图片</a>
            <a class="btn btn-small btn-danger" href="">删除</a>
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
<script type="text/javascript">
    function deployment(modelId){
        $.post("/ac/model/deployment.do",
            {
                modelId:modelId
            },
            function(data,status){
                if('success' == status){
                    layer.msg('部署成功');

                    var ii = layer.load();
                    //此处用setTimeout演示ajax的回调
                    setTimeout(function(){
                        layer.close(ii);
                    }, 1000);

                    window.location="#";

                }else{
                    layer.msg('部署失败');
                }
                console.log("数据：" + data + "\n状态：" + status);
            });
    }
</script>
</body>

</html>
