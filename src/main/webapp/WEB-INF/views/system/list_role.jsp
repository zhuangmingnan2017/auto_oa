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
    <title>角色管理-基于工作流的办公自动化系统</title>
    <%@ include  file="../common/header.jsp"%>

    <style>
        ul li{
            text-decoration: none;!important;
        }
        #rolePermissionSettingModal_having_permission_div>div, .operator_div{
            border: 1px solid green;
            display: inline-block;
            background-color: rgba(193,255,193,0.4);
            /*margin-left: 2px;
            margin-right: 2px;*/
        }
        #rolePermissionSettingModal_having_permission_div>div{
            margin:2px;
            padding:5px;
        }
        .fatherMenu{
            background-color: lightskyblue;
        }
    </style>
</head>

<body>
<%@ include  file="../common/barside.jsp"%>
<%--菜单栏--%>
<div class="row">
    <ul style="text-decoration: none;">
        <li>
            <button class="btn btn-primary" onclick="addNewRole();">添加角色</button>
        </li>
    </ul>
</div>
<%--权限列表--%>
<div class="row">
    <table class="table table-responsive" id="menuTable">
        <thead>
            <tr>
                <th>序号</th>
                <th>角色编码</th>
                <th>角色名称</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <tr style="cursor: pointer;display: none;" id="addNewRowTr"}>
            <form action="${basePath}add_or_update.do" method="post">
                <td>新增</td>
                <td><input type="text" name="role_code"></td>
                <td><input type="text" name="role_name"></td>
                <td>
                    <button class='btn btn-default' style='margin-left:2em;' type="submit">
                        <span class='glyphicon glyphicon-ok' style='color:cornflowerblue;'></span>
                    </button>
                    <button class='btn btn-default' style='margin-left:2em;display: inline;' type="button" onclick="addNewRoleCancel(this)">
                        <span class='glyphicon glyphicon-remove' style='color:cornflowerblue;'></span>
                    </button>
                </td>
            </form>
        </tr>

        <c:forEach items="${roleList}" var="item" varStatus="status">
            <tr style="cursor: pointer" id="user_tr_${item.id}"}>
                <input type="hidden" name="role_id" value="${item.id}"/>
                <td>${status.index+1}</td>
                <td>${item.role_code}</td>
                <td>${item.role_name}</td>
                <form action="${basePath}add_or_update.do" method="post">
                    <input type="hidden" name="id" value="${item.id}">
                    <td style="display: none;">${status.index+1}</td>
                    <td style="display: none;"><input type="text" name="role_code" value="${item.role_code}"></td>
                    <td style="display: none;"><input type="text" name="role_name" value="${item.role_name}"></td>
                    <td style="display: none;">
                        <button class='btn btn-default' style='margin-left:2em;' type="submit">
                            <span class='glyphicon glyphicon-ok' style='color:cornflowerblue;'></span>
                        </button>
                        <button class='btn btn-default' style='margin-left:2em;display: inline;' type="button" onclick="editNewRoleCancel(this)">
                            <span class='glyphicon glyphicon-remove' style='color:cornflowerblue;'></span>
                        </button>
                    </td>
                </form>
                <td>
                    <button class="btn btn-primary btn-sm" onclick="rolePermissionSet(${item.id},'${item.role_name}');">分配权限</button>
                    <button class="btn btn-primary btn-sm" onclick="editRoleMess('#user_tr_${item.id}');">编辑角色信息</button>
                    <button class="btn btn-danger btn-sm" onclick="delRole(${item.id}, '${item.role_name}');">删除角色信息</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<!-- Modal -->
<div class="modal" id="rolePermissionSettingModal" tabindex="-1" role="dialog" aria-labelledby="rolePermissionSettingModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="javascript:$('#rolePermissionSettingModal').hide(1000);">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="rolePermissionSettingModalLabel">角色权限配置</h4>
            </div>
            <div class="modal-body">
                <h4 id="rolePermissionSettingModal_current_role">当前角色：loading...</h4>
                <strong>当前角色拥有的系统权限：</strong>
                <input type="hidden" id="rolePermissionSettingModal_choose_role_id" />
                <div id="rolePermissionSettingModal_having_permission_div">
                    <div id="role_having_permission_1">管理员1
                        <span style="cursor: pointer" onmouseover="cancelSpanMouseOver(this)" onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>
                                &nbsp;X&nbsp;
                            </span>
                        <input type="hidden" value="1" />
                    </div>
                    <div id="role_having_permission_2">管理员2<span style="cursor: pointer" onmouseover='cancelSpanMouseOver(this);' onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>&nbsp;X&nbsp;</span><input type="hidden" value="2" /></div>
                    <div id="role_having_permission_3">管理员3<span style="cursor: pointer" onmouseover='cancelSpanMouseOver(this);' onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>&nbsp;X&nbsp;</span><input type="hidden" value="3" /></div>
                </div>

                <div class="row">
                    <div class="col-md-8 form-group">
                        <select id="rolePermissionSettingModal_add_new_permission_select" class="form-control">
                            <option value="1">系统管理</option>
                            <option value="1">系统管理</option>
                            <option value="1">系统管理</option>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-primary" onclick="modal_add_new_permission();">添加该权限</button>
                    </div>
                </div>
            </div>
            <div class="modal-footer row">
                <div class="col-md-12">
                    <button class="btn btn-default" data-dismiss="modal" onclick="javascript:$('#rolePermissionSettingModal').hide(1000);">关闭</button>
                    <button class="btn btn-primary" onclick="change_role_permission();">确认修改</button>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include  file="../common/footer.jsp"%>

<script type="text/javascript">

    function cancelSpanMouseOver(ele) {
        $(ele).parent("div").css("background-color", "rgba(0,0,0,0.2)");
    }

    function cancelSpanMouseout(ele) {
        $(ele).parent("div").css("background-color", "rgba(193,255,193,0.4)");
    }

    function cancelSpanClick(ele){
        $(ele).parent("div").eq(0).remove();
    }
    
    function rolePermissionSet(roleId, roleName) {
        // 先获取已经有的角色，展示出来，再提供列表勾选
        $("#rolePermissionSettingModal_current_role").text("当前角色："+roleName);
        $("#rolePermissionSettingModal_choose_role_id").val(roleId);

        loadModalRolePermissionByRoleId(roleId);
        loadModalAllPermission();

        $("#rolePermissionSettingModal").show(1000);
    }

    /* 根据userId加载用户的已经配置的用户 */
    function loadModalRolePermissionByRoleId(roleId) {
        var url = "${basePath}/oa/system/permission/role_permission/list.do?roleId="+roleId;
        $.get(url, function (data) {
            if(data.code !== 0){
                sweetAlert("哎呦……出错了！", data.message,"error");
                return ;
            }

            if(data.data == null || data.data === ''){
                return ;
            }

            $("#rolePermissionSettingModal_having_permission_div").html("");
            $.each( data.data, function(index, content)
            {
                var newDivEle =
                    $("<div id='role_having_permission_"+content.id+"'>"+content.permission_name+
                    "<span style='cursor: pointer'" +
                    "onmouseover='cancelSpanMouseOver(this);' onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>&nbsp;X&nbsp;</span>" +
                    "<input type='hidden' value='"+content.id+"' /></div>");

                $("#rolePermissionSettingModal_having_permission_div").append(newDivEle);
            });
        });
    }

    // 获取所有角色
    function loadModalAllPermission(){
        var url = "${basePath}/oa/system/permission/list.do";
        var modalSelectEle = $("#rolePermissionSettingModal_add_new_permission_select");

        modalSelectEle.html("");
        $.get(url, function (data) {
            $.each(data.data, function (index, content) {
                // only if the role doesn't have the permission to add it into option
                if($("#role_having_permission_"+content.id).length <= 0){
                    modalSelectEle.append($("<option value='"+content.id+"'>"+content.permission_name+"</option>"));
                }
            });
        });
    }

    function change_role_permission(){
        console.log("change_role_permission");
        var currPermissionIdListStr = "";
        var currRoleId = $("#rolePermissionSettingModal_choose_role_id").val();

        $("#rolePermissionSettingModal_having_permission_div input[type='hidden']").each(function () {
            if(currPermissionIdListStr !== ""){
                currPermissionIdListStr += ",";
            }
            currPermissionIdListStr += $(this).val();
        });

        var url = "${basePath}/oa/system/permission/role_permission/set_role_permission.do";
        var postData = "{\"roleId\":"+currRoleId+",\"permissionIdListStr\":\""+currPermissionIdListStr+"\"}";

        $.post({
            url: url,
            data: postData,
            dataType: "json",
            contentType: 'application/json',
            success: function(result){
                if(result.code !== 0){
                    sweetAlert("哎呦……出错了！", data.message,"error");
                    return ;
                }
                sweetAlert("设置成功!", "即将为您刷新页面","success");
                setTimeout(function () {
                    window.location.reload();
                },1000);
            }
        });
    }

    function modal_add_new_permission(){
        var selectEle = $("#rolePermissionSettingModal_add_new_permission_select>option:selected");

        var permissionId = selectEle.val();

        if($("#role_having_permission_"+permissionId).length > 0){
            swal("该权限已经在列表中了！");
            return ;
        }

        if(selectEle === undefined || permissionId === undefined){
            swal("没有权限了");
            return;
        }

        $("#rolePermissionSettingModal_having_permission_div").append(
            $("<div id='role_having_permission_"+permissionId+"'>"+selectEle.text()+"" +
                "<span style='cursor: pointer'" +
                "onmouseover='cancelSpanMouseOver(this);' onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>&nbsp;X&nbsp;</span>" +
                "<input type='hidden' value='"+permissionId+"' /></div>")
        );

        // after add this permission, we need to remove it from select's option
        var modalSelectEle = $("#rolePermissionSettingModal_add_new_permission_select");
        modalSelectEle.find("option[value="+permissionId+"]").remove();
    }

    // 编辑角色点击了取消按钮
    function editNewRoleCancel(btnEle){
        $(btnEle).parents("tr").find("td").toggle();
    }

    // 编辑角色信息操作
    function editRoleMess(trId){
        $(trId).find("td").toggle();
    }

    // 新增角色
    function addNewRole(){
        var newRow = $("#addNewRowTr");
        newRow.find("input").text("");
        newRow.show();
    }

    // 新增角色点击了取消按钮
    function addNewRoleCancel(btnEle){
        $("#addNewRowTr").hide();
    }

    // 删除角色
    function delRole(roleId, roleName){
        delNotice("${rolePre}del.do?id="+roleId, {});
    }

    // 刷新select中option选项
    function refreshSelectOption(){

    }
</script>

</body>
</html>
