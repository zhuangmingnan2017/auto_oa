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
    <title>部门管理-基于工作流的办公自动化系统</title>
    <%@ include  file="../common/header.jsp"%>

    <style>
        .choice_tr{
            background-color: lightgrey;
        }
        ul li{
            text-decoration: none;!important;
        }
        .errorInput{
            border: 2px solid red;
        }
        .submenuTr{
            color:black;
            background-color: lightcyan;
        }
        #menuTable button{
            padding:5px 10px;
            font-size:12px;
            line-height:1.5;
            border-radius:3px
        }
    </style>
</head>

<body>
<%@ include  file="../common/barside.jsp"%>
<%--菜单栏--%>
<div class="row">
    <ul style="text-decoration: none;">
        <li>
            <button class="btn btn-primary" onclick="addNewDepartment();">新增部门</button>
        </li>
    </ul>
</div>
<%--权限列表--%>
<div class="row">
    <table class="table table-responsive" id="menuTable">
        <thead>
            <tr>
                <th>序号</th>
                <th>部门名称</th>
                <th>简介</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <tr style="cursor: pointer; display:none;" id="addNewTrEle">
            <td width="5%"></td>
            <form action="${basePath}/oa/human/department/add.html" method="post">
                <td width="20% col-md-2">
                    <input name="depart_name" type="text">
                </td>
                <td width="50% col-md-4">
                    <textarea name="depart_desc" type="text" ></textarea>
                </td>
                <td width="25%">
                    <button class='btn btn-default' style='margin-left:2em;' type="submit">
                        <span class='glyphicon glyphicon-ok' style='color:cornflowerblue;'></span>
                    </button>
                    <button class='btn btn-default' style='margin-left:2em;display: inline;' onclick="addDepartmentCancel(this)" type="button">
                        <span class='glyphicon glyphicon-remove' style='color:cornflowerblue;'></span>
                    </button>
                </td>
            </form>
        </tr>
        <c:forEach items="${departmentList}" var="item" varStatus="status">
            <tr style="cursor: pointer">
                <td width="5%">${status.index+1}</td>
                <td width="20%">${item.depart_name}</td>
                <td width="50%">${item.depart_desc}</td>
                <td width="25%">
                    <button class="btn btn-primary btn-sm" onclick="invokeUpdate(this);">编辑信息</button>
                    <button class="btn btn-danger btn-sm" onclick="del(${item.id});">删除信息</button>
                </td>
            </tr>

            <tr style="cursor: pointer; display:none;">
                <td width="5%">${status.index+1}</td>
                <form action="${basePath}/oa/human/department/update.html" method="post">
                    <td width="20%">
                        <input type="hidden" name="departId" value="${item.id}"/>
                        <input name="depart_name" type="text" value="${item.depart_name}">
                    </td>
                    <td width="50%">
                        <textarea name="depart_desc" type="text">${item.depart_desc}</textarea>
                    </td>
                    <td width="25%">
                        <button class='btn btn-default' style='margin-left:2em;' type="submit">
                            <span class='glyphicon glyphicon-ok' style='color:cornflowerblue;'></span>
                        </button>
                        <button class='btn btn-default' style='margin-left:2em;display: inline;' onclick="addDepartmentCancel(this)" type="button">
                            <span class='glyphicon glyphicon-remove' style='color:cornflowerblue;'></span>
                        </button>
                    </td>
                </form>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<%@ include  file="../common/footer.jsp"%>

<script type="text/javascript">
    // 统一增加样式
    $(function () {
        $("input[type='text']").addClass("form-control");
        var textareaEle = $("textarea");
        textareaEle.addClass("form-control");
        textareaEle.attr("rows", 5);
        textareaEle.attr("cols", 20);
    });

    function addNewDepartment() {
        $("#addNewTrEle").show();
    }

    function addDepartmentCancel(cancelBtnEle){
        var ele = $(cancelBtnEle).parents("tr");
        ele.hide();
        ele.find("input[type='text']").val("");

        ele.prev("tr").show();
    }

    function invokeUpdate(operBtnEle){
        var messTr = $(operBtnEle).parents("tr");
        messTr.hide();
        messTr.next("tr").show();
    }

    function del(departmentId){
        var url = "${basePath}/oa/human/department/del.do?id="+departmentId;
        delNotice(url);
    }
</script>

</body>
</html>
