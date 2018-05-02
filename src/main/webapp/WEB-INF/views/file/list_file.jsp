<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <title>文件管理-基于工作流的办公自动化系统</title>
    <%@ include  file="../common/header.jsp"%>

    <style>
        .errorInput{
            border: 2px solid red;
        }

        .currChooseInput{
            border: 2px solid green;
        }
    </style>
</head>

<body>
<%@ include  file="../common/barside.jsp"%>

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <form action="#" method="post" enctype="multipart/form-data" id="fileUploadForm">
                <div class="form-group">
                    <input type="file" id="fileInput" name="file" class="btn btn-primary form-control" style="display: none;">
                    <button class="btn btn-primary form-control" type="button" onclick="chooseUploadFileInvoke();">
                        <span class="glyphicon glyphicon-cloud-upload" style="margin-right: 1em;"></span>
                        上传
                    </button>
                </div>
            </form>
        </div>
        <div class="col-md-5">
            <button class="btn btn-primary" onclick="addNewFolder();">新建文件夹</button>
            <button class="btn btn-primary" onclick="javascript:$(this).parent('div').next('div[name=\'changeShareTypeDiv\']').show();">修改分享策略</button>
            <button class="btn btn-danger" onclick="batchDeleteOperator();">批量删除</button>
        </div>
        <div class="col-md-4" name="changeShareTypeDiv" style="display: none;">
            <form id="changeShareTypeForm" action="${basePath}/oa/file/change_share_type.html" method="post">
                <input name="fileIdStr" type="hidden">
                <input name="parentId" value="${parentId}" type="hidden">
                <select name="shareType" class="form-control">
                    <option value="1">仅自己</option>
                    <option value="2">部门可见</option>
                    <option value="3">部门所有</option>
                    <option value="4">公开</option>
                    <option value="5">公有</option>
                </select>
            </form>
            <button class="btn btn-success">
                <span class="glyphicon glyphicon-ok" onclick="changeShareType();"></span>
            </button>
            <button class="btn btn-success" onclick="javascript:$(this).parents('div[name=\'changeShareTypeDiv\']').hide();">
                <span class="glyphicon glyphicon-remove"></span>
            </button>
        </div>
    </div>

    <div class="row"  style="overflow-x: hidden; width: 100%; height: 800px;">
        <table class="table table-hover" style="background-color: lightcyan;">
            <thead>
                <tr>
                    <th width="5%"></th>
                    <th width="55%">文件名</th>
                    <th width="10%">上传者</th>
                    <th width="10%">文件大小</th>
                    <th width="10%">修改日期</th>
                    <th width="10%">分享策略</th>
                </tr>
            </thead>
            <tbody>
            <tr id="currLevelRow">
                <td></td>
                <td>
                    <span style="color:yellowgreen;margin-right: 1em;" class="glyphicon glyphicon-folder-close"></span>
                    <a href="${basePath}/oa/file/list.html?parentId=${parentId}">.</a>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr id="pervLevelRow">
                <td></td>
                <td>
                    <span style="color:yellowgreen;margin-right: 1em;" class="glyphicon glyphicon-folder-close"></span>
                    <c:choose>
                        <c:when test="${parentId == 0}">
                            ..
                        </c:when>
                        <c:otherwise>
                            <a href="${basePath}/oa/file/prev_list.html?fileId=${parentId}">..</a>
                        </c:otherwise>
                    </c:choose>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr id="addNewFolderRow" style="display: none;">
                <td></td>
                <td>
                    <span style="color:yellowgreen;margin-right: 1em;" class="glyphicon glyphicon-folder-close"></span>
                    <div name="titleEditDiv" style="display:inline;">
                        <form action="${basePath}/oa/file/add_folder.html" method="post" style="display: inline;">
                            <label>
                                <input name="name" type="text" >
                            </label>
                            <input type="hidden" name="parent_id" value="${parentId}">
                            <button class='btn btn-default' style='margin-left:2em;' type="submit">
                                <span class='glyphicon glyphicon-ok' style='color:cornflowerblue;'></span>
                            </button>
                        </form>
                        <button class='btn btn-default' style='margin-left:2em;display: inline;' onclick="addNewFolderCancel(this)">
                            <span class='glyphicon glyphicon-remove' style='color:cornflowerblue;'></span>
                        </button>
                    </div>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <c:forEach items="${fileList}" varStatus="status" var="item">
                <tr id="fileRow" style="cursor: pointer;" onclick="fileRowTrClick(this);">
                    <input name="fileId" type="hidden" value="${item.id}"/>
                    <input name="parentId" type="hidden" value="${item.parent_id}"/>
                    <input name="isFolder" type="hidden" value="${item.is_folder}">
                    <td><input type="checkbox"></td>
                    <td>
                        <c:if test="${item.is_folder == 1}">
                            <span style="color:yellow; margin-right: 1em;" class="glyphicon glyphicon-folder-close"></span>
                        </c:if>
                        <c:if test="${item.is_folder != 1}">
                            <span style="color:lightgrey; margin-right: 1em;" class="glyphicon glyphicon-file"></span>
                        </c:if>
                        <div style="display: inline" name="titleDiv">
                            <span name="file_title" onclick="fileNameClick(this);">${item.name}</span>
                        </div>
                        <div style="display: none;" name="titleEditDiv">
                            <input name='newTitle' type='text' value="${item.name}" >
                            <button class='btn btn-default' style='margin-left:2em;' onclick="renameTitle(this);">
                                <span class='glyphicon glyphicon-ok' style='color:cornflowerblue;'></span>
                            </button>
                            <button class='btn btn-default' style='margin-left:2em;' onclick="cancelRenameFile(this)">
                                <span class='glyphicon glyphicon-remove' style='color:cornflowerblue;'></span>
                            </button>
                        </div>
                    </td>
                    <td>${item.upload_username}</td>
                    <td>
                        <%-- 容量显示 --%>
                        <c:choose>
                            <c:when test="${item.size >= 1000 and item.size < (1000*1000)}">
                                <fmt:formatNumber type="number" value="${item.size * 0.001}" pattern="0.0" maxFractionDigits="1"/>KB
                            </c:when>
                            <c:when test="${item.size >= (1000 * 1000) and item.size < (1000*1000*1000)}">
                                <fmt:formatNumber type="number" value="${item.size * 0.001 * 0.001}" pattern="0.0" maxFractionDigits="1"/>MB
                            </c:when>
                            <c:when test="${item.size >= (1000 * 1000 * 1000) and item.size < (1000 * 1000 * 1000 * 1000)}">
                                <fmt:formatNumber type="number" value="${item.size * 0.001 * 0.001 * 0.001}" pattern="0.0" maxFractionDigits="1"/>GB
                            </c:when>
                            <c:when test="${item.size == 0}">
                                --
                            </c:when>
                            <c:otherwise>
                                ${item.size}B
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td><fmt:formatDate value="${item.last_modify_datetime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                    <td>
                        <c:choose>
                            <c:when test="${item.share_type == 1}">
                                仅自己
                            </c:when>
                            <c:when test="${item.share_type == 2}">
                                部门可见
                            </c:when>
                            <c:when test="${item.share_type == 3}">
                                部门所有
                            </c:when>
                            <c:when test="${item.share_type == 4}">
                                公开
                            </c:when>
                            <c:when test="${item.share_type == 5}">
                                公有
                            </c:when>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<div style="display: none;">
    <form action="#" id="downloadForm" method="post">
        <input type="text" name="fileId">
    </form>
</div>

<%@ include  file="../common/footer.jsp"%>
<script type="text/javascript">
    $(function () {
        bindContextMenu4FileRow();

        $("#fileInput").change(function () {
            fileInputChange(this);
        });
    });

    // 绑定右键菜单
    function bindContextMenu4FileRow() {
        $.contextMenu({
            selector: '#fileRow',
            callback: function(key, options) {
                switch (options){
                    case 'choose':
                        $(this).find("input[type='checkbox']").click();
                        break;
                    case 'rename':
                        $(this).find("div[name='titleDiv']").css("display", "none");
                        $(this).find("div[name='titleEditDiv']").css("display", "inline");
                        break;
                    case 'delete':
                        var fileId = $(this).find("input[name='fileId']").val();
                        deleteFileByIdStr(fileId);
                        break;
                    default:
                        console.log("a");
                }

            },
            items: {
                "rename": {name: "重命名"},
                "delete": {name: "删除"},
                "choose": {name: "选中"}
            }
        });
    }

    function cancelRenameFile(cancelBtnEle){
        $(cancelBtnEle).parent("div").css("display", "none");
        $(cancelBtnEle).parent("div").prev("div").css("display", "inline");

        $(cancelBtnEle).prevAll("input").val($(cancelBtnEle).parent("div").prev("div").find("span[name='file_title']").text());
    }

    function renameTitle(okBtnEle){
        var newTitle = $(okBtnEle).prevAll("input[name='newTitle']").val();
        var fileId = $(okBtnEle).parents("td").prevAll("input[name='fileId']").val();

        // post
        var url = "${basePath}/oa/file/rename.do?fileId="+fileId+"&fileName="+newTitle;
        //console.log(url);
        $.post(url, {}, function (data, textStatus, jqXHR) {
            if(data.code !== 0){
                swal("哎哟,出错了...", data.message, "error");
                return ;
            }
            window.location.reload();
        });

    }

    // 点击了上传文件按钮
    function chooseUploadFileInvoke(){
        console.log("a");
        $("#fileInput").click();
    }

    // 文件选择了
    function fileInputChange(fileInput){
        var fileInputName = $(fileInput).val();
        // 单击了取消按钮
        if(fileInputName === null || fileInputName === ''){
            return ;
        }

        var index = fileInputName.lastIndexOf("\\");
        fileInputName = fileInputName.substring(index+1);

        console.log(fileInputName);

        var parentId = ${parentId};

        // 选择了文件，则提交表单
        var url = "${basePath}/oa/file/uploadFile.html?shareType=1&parentId="+parentId;
        var fileUploadForm = $("#fileUploadForm");
        fileUploadForm.attr("action", url);
        fileUploadForm.submit();
    }

    // 批量删除
    function batchDeleteOperator(){
        var fileIdListStr = getChooseFileIdStr();

        if(fileIdListStr === null){
            return ;
        }

        console.log(fileIdListStr);
        deleteFileByIdStr(fileIdListStr);
    }

    // 获取选中的文件id列表str
    function getChooseFileIdStr(){
        var fileIdListStr = "";
        $("tr[id='fileRow']").find("input[type='checkbox']:checked").each(function () {
            var fileId = $(this).parent("td").prevAll("input[name='fileId']").val();
            if(fileId !== null && fileId > 0){
                var prefix = ",";
                if(fileIdListStr === ""){
                    prefix = "";
                }
                fileIdListStr += prefix + fileId;
            }
        });
        if(fileIdListStr === ""){
            swal("没有选中要操作的文件", "请先选择要操作的文件", "warning");
            return null;
        }
        return fileIdListStr;
    }

    // 删除文件
    function deleteFileByIdStr(fileIdStr){
        swal({
                title: "确定删除吗？",
                text: "删除内容不可恢复(如果删除文件夹,文件夹内文件也会被删除)",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确认删除！",
                cancelButtonText: "再想想",
                closeOnConfirm: false
            },
            function(){
                var url = "${basePath}/oa/file/del.do?fileIdStr="+fileIdStr;
                $.post(url, {}, function (data, textStatus, jqXHR) {
                    if(data.code !== 0){
                        swal("哎呦,出错了...", data.message, "error");
                        return ;
                    }

                    window.location.reload();
                })
            });
    }

    // 行点击
    function fileRowTrClick(trRow){
        $(trRow).find("input[type='checkbox']").click();
    }

    function fileNameClick(nameSpan) {
        var trRow = $(nameSpan).parents("tr");

        if($(trRow).find("div[name='titleEditDiv']").css("display") !== 'none'){
            // 如果是编辑文件名的状态，则不绑定点击事件
            return ;
        }

        var isFolder = $(trRow).find("input[name='isFolder']").val();
        if(isFolder === '1'){
            var parentId = $(trRow).find("input[name='fileId']").val();
            window.location.replace("${basePath}/oa/file/list.html?parentId="+parentId);
            return ;
        }

        var fileId = $(trRow).find("input[name='fileId']").val();
        var url = "${basePath}/oa/file/download.do?fileId="+fileId;

        var form = $("#downloadForm");
        form.attr("action", url);
        form.submit();
    }

    // 新增文件夹
    function addNewFolder(){
        var addNewFolderRow = $("#addNewFolderRow");
        addNewFolderRow.find("input[name='name']").val("");
        addNewFolderRow.show();
    }

    // 新增文件夹取消
    function addNewFolderCancel(trRowButton){
        $("#addNewFolderRow").hide();
    }

    // 修改分享策略
    function changeShareType(){
        var fileIdStr = getChooseFileIdStr();
        if(fileIdStr === null){
            return ;
        }

        var changeShareTypeForm = $("#changeShareTypeForm");
        changeShareTypeForm.find("input[name='fileIdStr']")
            .val(fileIdStr);
        changeShareTypeForm.submit();
    }
</script>

</body>
</html>
