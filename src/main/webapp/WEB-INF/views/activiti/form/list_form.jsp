<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="list_form" />
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
    <title>表单管理-基于工作流的办公自动化系统</title>
    <%@ include  file="../../common/header.jsp"%>
    <style>
        #components{
            min-height: 600px;
        }
        #target{
            min-height: 200px;
            border: 1px solid #ccc;
            padding: 5px;
        }
        #target .component{
            border: 1px solid #fff;
        }
        #temp{
            width: 500px;
            background: white;
            border: 1px dotted #ccc;
            border-radius: 10px;
        }

        .popover-content form {
            margin: 0 auto;
            width: 213px;
        }
        .popover-content form .btn{
            margin-right: 10px
        }
        #source{
            min-height: 500px;
        }
    </style>
</head>
<body>
<%@ include  file="../../common/barside.jsp"%>
<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <form action="${pageContext.request.contextPath}/ac/form/add.do" method="post">
                <div class="modal-body">
                    <label>
                        表单名称：
                        <input type="text" name="form_name" />
                    </label>
                    <label>
                        描述：
                        <input type="text" name="description" />
                    </label>
                    <label>
                        内容(HTML)：
                        <textarea name="content"></textarea>
                    </label>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <input type="submit" class="btn btn-primary" value="添加"/>
                    <%--<button type="button" class="btn btn-primary">确认部署</button>--%>
                </div>
            </form>
        </div>
    </div>
</div>

<c:forEach items="${list}" varStatus="varStatus" var="item">

    <!-- Modal -->
    <div class="modal" id="myModal_${varStatus.index}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_${varStatus.index}">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel_${varStatus.index}">预览表单[${item.form_name}]</h4>
                </div>
                <div class="modal-body row" style="width: 100%;padding: auto;">
                   ${item.content}
                </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    </div>
            </div>
        </div>
    </div>
</c:forEach>

    <table class="table">
        <thead>
            <tr>
                <td>编码</td>
                <td>名称</td>
                <td>描述</td>
                <td>内容</td>
                <td>操作</td>
            </tr>
        </thead>
        <tbody>
    <c:forEach items="${list}" begin="0" var="item" varStatus="varStatus">
        <tr>
        <td>${item.form_key}</td>
        <td>${item.form_name}</td>
        <td>${item.description}</td>
        <td>
            <a href='#' onclick="javascript:$('#myModal_${varStatus.index}').modal('show');">
                预览
            </a>
        </td>
        <td>
            <form action="${pageContext.request.contextPath}/ac/form/edit.do" method="post" style="display: inline-block;">
                <input type="hidden" value="${item.id}" name="formId"   />
                <input type="submit" class="btn btn-primary" value="编辑" />
            </form>
            <button class="btn btn-danger" onclick="delForm(${item.id}, '${item.form_name}')">删除</button>
        </td>
        </tr>
    </c:forEach>
        </tbody>
    </table>
    <a class="btn btn-success"
       href="${pageContext.request.contextPath}/ac/form/go_add_new_form.do" >新增表单设计</a>
<%@ include  file="../../common/footer.jsp"%>
<script type="text/javascript">
    function delForm(formId, formName) {

        swal({
                title: "确定删除吗？",
                text: "你将无法恢复表单["+formName+']!',
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确定删除！",
                cancelButtonText: "取消删除！",
                closeOnConfirm: false,
                closeOnCancel: true
            },
            function(isConfirm){
                if (!isConfirm) {
                    return;
                }
                $.post({
                    url:'${pageContext.request.contextPath}/ac/form/del.do',
                    data:{
                        formId:formId
                    },
                    success(data, textStatus, jqXHR){
                        console.log(data);
                        if(data.code === 0){
                            swal("删除成功！", "表单"+formName+"已经被删除。", "success");
                            setTimeout(function () {
                                window.location.reload();
                            }, 2000);
                            return ;
                        }
                        swal("删除失败！", "表单"+formName+"删除失败,原因：["+data.message+"]", "error");
                    }
                });
            });
    }
</script>
</body>
</html>
