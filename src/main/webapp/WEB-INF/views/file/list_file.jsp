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
        <button class="col-md-3 btn btn-primary">上传</button>
        <button class="col-md-3 btn btn-primary">新建文件夹</button>
        <button class="col-md-3 btn btn-danger">批量删除</button>
        <button class="col-md-3 btn btn-danger">修改分享策略</button>
    </div>

    <div clas="row">
        <table class="table table-hover" style="background-color: lightcyan">
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
                    <span style="color:yellowgreen;margin-right: 1em;" class="glyphicon glyphicon-folder-close"></span>/.
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr id="pervLevelRow">
                <td></td>
                <td>
                    <span style="color:yellowgreen;margin-right: 1em;" class="glyphicon glyphicon-folder-close"></span>/..
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <c:forEach items="${fileList}" varStatus="status" var="item">
                <tr id="fileRow">
                    <input name="fileId" type="hidden" value="${item.id}"/>
                    <td><input type="checkbox"></td>
                    <td>
                        <c:if test="${item.is_folder == 1}">
                            <span style="color:yellow; margin-right: 1em;" class="glyphicon glyphicon-folder-close"></span>
                        </c:if>
                        <c:if test="${item.is_folder != 1}">
                            <span style="color:lightgrey; margin-right: 1em;" class="glyphicon glyphicon-file"></span>
                        </c:if>
                        <div style="display: inline" name="titleDiv">
                            <span name="file_title">${item.name}</span>
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
                    <td>${item.size}B</td>
                    <td><fmt:formatDate value="${item.last_modify_datetime}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                    <td>
                        <c:choose>
                            <c:when test="${item.share_type == 1}">
                                仅自己可见
                            </c:when>
                            <c:when test="${item.share_type == 2}">
                                仅本部门可见
                            </c:when>
                            <c:when test="${item.share_type == 3}">
                                本部门拥有编辑权
                            </c:when>
                            <c:when test="${item.share_type == 4}">
                                所有人可见
                            </c:when>
                            <c:when test="${item.share_type == 5}">
                               所有人拥有编辑权
                            </c:when>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<%@ include  file="../common/footer.jsp"%>
<script type="text/javascript">
    $(function () {
        bindContextMenu4FileRow();


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
    }

    function renameTitle(okBtnEle){
        var newTitle = $(okBtnEle).prev("input").val();
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
</script>

</body>
</html>
