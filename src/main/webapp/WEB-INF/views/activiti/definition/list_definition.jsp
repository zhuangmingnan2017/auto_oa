<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="list_definition" />
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
    <title>流程管理-基于工作流的办公自动化系统</title>
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
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">启动流程</button>
                </div>
        </div>
    </div>
</div>

<table class="table table-hover">
    <thead>
    <tr>
        <td>序号</td>
        <td>名称</td>
        <td>编码</td>
        <td>版本</td>
        <td>部署时间</td>
       <%-- <td>bpmn名称</td>
        <td>流程图片名称</td>--%>
        <td>状态</td>
        <td>操作</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" begin="0" var="item" varStatus="varStatus">
        <tr>
            <td>${varStatus.index+1}</td>
            <td>${item.name}</td>
            <td>${item.key}</td>
            <td>V${item.version}</td>
            <td>wait</td>
            <%--<td>${item.resourceName}</td>
            <td>${item.diagramResourceName}</td>--%>
            <td>
                <c:choose>
                    <c:when test="${item.suspended == false}"><span style="color:green">可用</span></c:when>
                    <c:otherwise><span style="color:red">挂起</span></c:otherwise>
                </c:choose>
            </td>
            <td>
                <form action="${projectPath}/process/instance/start.do" method    ="post">
                    <input type="hidden" name="userId" value="${sessionScope.ACCOUNT}"/>
                    <input type="hidden" name="defintionId" value="${item.id}" />
                    <label>
                        选择关联表单：
                        <select name="formId">
                        <c:forEach items="${formList}" var="formItem">
                            <option value="${formItem.id}">${formItem.form_name}</option>
                        </c:forEach>
                        </select>
                    </label>
                    <label>
                        <input type="text" name="content" />
                    </label>
                    <input type="submit" value="启动流程" />
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                        新增部署
                    </button>
                </form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%@ include  file="../../common/footer.jsp"%>
</body>
<script type="text/javascript">
    function getStartForm(definitionId) {
        $.ajax({
            type:'GET',
            url: '',
            data: '',
            dataType:'',
            sucess:function(data){

            }
        });
    }
</script>
</html>

