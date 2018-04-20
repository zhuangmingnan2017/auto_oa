<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="list_invoke_process" />
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
    <title>发起流程-基于工作流的办公自动化系统</title>
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
                <h4 class="modal-title" id="myModalLabel">发起流程<span id="modalDefinitionName"></span></h4>
            </div>
                <div class="modal-body">
                    <form id="modalForm">
                        <div class="form-group">
                            <label>
                                发起人：
                                <input class="form-control" type="text" value="${sessionScope.USER_NAME}" disabled/>
                            </label>
                        </div>
                        <input type="hidden" id="definitionId" />
                        <%-- 自定义表单的内容--%>
                       <div class="row" id="associationFormBody">

                       </div>
                        <input type="hidden" id="modalFormId" />
                        <input type="hidden" id="modalDefinitionId" />
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" onclick="invokeDefinition()">发起流程</button>
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
            <td>
                <c:choose>
                    <c:when test="${item.suspended == false}"><span style="color:green">可用</span></c:when>
                    <c:otherwise><span style="color:red">挂起</span></c:otherwise>
                </c:choose>
            </td>
            <td>
                <button class="btn btn-primary" onclick="initStartDefinition('${item.id}', '${item.name}');">发起流程</button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%@ include  file="../../common/footer.jsp"%>
</body>
<script type="text/javascript">
    /* 初始化流程、调起流程初始化表单 */
    function initStartDefinition(definitionId, definitionName){
        var url = '${projectPath}/ac/form/'+definitionId+'/startform.do';
        $.get(url,function (data, status) {
            console.log(data);
            if(data.data != null && data.data.content !== null){
                $('#associationFormBody').html(data.data.content);
                $('#modalFormId').val(data.data.formId);
            }
            $('#modalDefinitionId').val(definitionId);
            $('#modalDefinitionName').text("["+definitionName+"]");
        });
        $("#myModal").modal("show");
    }

    function fillFormEle(){
        /* 处理文本类型 */
        $('input').each(function(){
            var value = $(this).val();
            $(this).attr('value',value);
        });
        /* 处理多行文本 */
            $('textarea').each(function(){
                var value = $(this).val();
                $(this).val(value);
            });
        /* 处理单选按钮 */
        $('input[type="radio"]:checked').each(function(){
            radioEleName = $(this).attr('name');
            var selector = 'input[name="'+radioEleName+'"]';
            $(selector).each(function () {
                $(this).removeProp('checked');
            });
            $(this).prop('checked', true);
        });
        /* 处理下拉列表*/
        $('select').each(function () {
            var selectedOptionValue = $(this).find('option:selected').val();
            $(this).find('option').each(function () {
                if($(this).val() === selectedOptionValue){
                    $(this).attr('selected', true);
                }else{
                    $(this).attr('selected', false);
                }
            });
        });
        /* 处理复选框 */
        $('input[type="checkbox"]').each(function () {
            if($(this).attr('checked') === true || $(this).attr('checked') === 'checked'){
                $(this).attr('checked', true);
            }else {
                $(this).attr('checked', false);
            }
        });
    }
    function invokeDefinition() {
        setTimeout(fillFormEle(), 300);

        console.log($('#associationFormBody').html());
   <%   /* $.post({
           url : "${projectPath}/process/instance/start.do",
           data:{
               formId:$('#modalFormId').val(),
               content:$('#associationFormBody').html(),
               definitionId: $('#modalDefinitionId').val(),
               userId: "${sessionScope.ACCOUNT}"
           },
           success: function(data, textStatus, jqXHR){
                console.log(data);
                setTimeout(
                window.location.replace("${projectPath}/process/instance/list.do?userId=${sessionScope.ACCOUNT}"),
                    3000);
           }
       });*/ %>
    }
</script>
</html>

