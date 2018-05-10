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
    <title>基于工作流的办公自动化系统</title>
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
        <li><button class="btn btn-primary" onclick="javascript:$('#addPermissionModal').show(1000);">新增菜单</button></li>
    </ul>
</div>
<%--权限列表--%>
<div class="row">
    <table class="table table-responsive" id="menuTable">
        <thead>
            <tr>
                <th>序号</th>
                <th>菜单名称</th>
                <th>url地址</th>
                <th>权限编码</th>
                <th>描述</th>
                <th>id</th>
                <th>parent_id</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${menuList}" var="item" varStatus="status">
            <tr onclick="showSubMenu(${item.id}, this);" style="cursor: pointer" id="menu_tr_${item.id}"}>
                <td width="5%">${status.index+1}</td>
                <td width="10%">${item.name}</td>
                <td width="20%">${item.url}</td>
                <td width="20%">${item.permission}</td>
                <td width="20%">${item.description}</td>
                <td width="5%">${item.id}</td>
                <td width="5%">${item.parent_id}</td>
                <td width="15%">
                    <button class="btn btn-primary btn-sm" onclick="updateMenu('menu_tr_${item.id}');">编辑菜单</button>
                    <button class="btn btn-danger btn-sm" onclick="delMenu(${item.id}, ${item.parent_id});">删除菜单</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<!-- Modal -->
<div class="modal" id="addPermissionModal" tabindex="-1" role="dialog" aria-labelledby="addPermissionModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="javascript:$('#addPermissionModal').hide(1000);">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="addPermissionModalLabel">新增菜单</h4>
            </div>
                <div class="modal-body">
                      <form class="form-horizontal" id="addNewPermissionForm" action="#" method="post">
                          <input type="hidden" id="permissionId" name="id"/>
                          <div class="form-group">
                              <label for="parent_id" class="col-sm-2 control-label">所属菜单</label>
                              <div class="col-md-10">
                                  <select name="parent_id" class="form-control" id="parent_id">
                                        <option value="0">==一级菜单==</option>
                                      <c:forEach items="${menuList}" var="item">
                                          <option value="${item.id}">${item.name}[${item.description}]</option>
                                      </c:forEach>
                                  </select>
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="permission_code" class="col-sm-2 control-label">权限编码</label>
                              <div class="col-md-10">
                                  <input type="text" class="form-control" id="permission_code" name="permission" placeholder="权限编码,例如：system_managment">
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="permission_name" class="col-sm-2 control-label">菜单名称</label>
                              <div class="col-md-10">
                                  <input type="text" class="form-control" id="permission_name" name="name" placeholder="菜单名称,例如：系统管理">
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="url" class="col-sm-2 control-label">url地址</label>
                              <div class="col-md-10">
                                  <input type="text" class="form-control" id="url" name="url" placeholder="url地址,例如：/oa/system/menu/list.html">
                              </div>
                          </div>
                          <div class="form-group">
                              <label for="description" class="col-sm-2 control-label">菜单描述</label>
                              <div class="col-md-10">
                                  <input type="text" class="form-control" id="description" name="description" placeholder="菜单描述,例如：系统管理主菜单">
                              </div>
                          </div>
                      </form>
                    </div>
                <div class="modal-footer row">
                    <div class="col-md-12">
                        <button class="btn btn-default" data-dismiss="modal" onclick="javascript:$('#addPermissionModal').hide(1000);">关闭</button>
                        <button class="btn btn-primary" onclick="addNewFormSubmit();">添加</button>
                    </div>
                </div>
        </div>
    </div>
</div>

<%@ include  file="../common/footer.jsp"%>

<script type="text/javascript">
    function showSubMenu(parentId, invokeTr) {

        console.log("showSubMenu invoked, parentId=" + parentId);

        $("#menuTable tr[name^='submenu_tr_']").hide(1000);
       // $("#menuTable tr[id^='menu_tr_']").removeClass("choice_tr");

        var alreadyExistTr = $("tr[name=submenu_tr_"+parentId+"]");
        if(alreadyExistTr.length > 0){
            if(alreadyExistTr.eq(0).css('display') === 'none'){
                alreadyExistTr.show(1000);
            }else{
                alreadyExistTr.hide(1000);
            }
            return ;
        }

        var currTr = $(invokeTr);

        var url = "${basePath}/oa/system/menu/submenu/list.do?parentId="+parentId;
        $.get(url,function (result) {
            if(result.code !== 0){
                console.log(result);
                return ;
            }
            var arr = result.data;
            $.each( arr, function(index, content)
            {
                var submenutr = $("<tr name=submenu_tr_"+content.parent_id+" class='submenuTr' id=menu_tr_"+content.id+">" +
                    "<td>"+(index+1)+"</td>" +
                    "<td>"+content.name+"</td>" +
                    "<td>"+content.url+"</td>" +
                    "<td>"+content.permission+"</td>" +
                    "<td>"+content.description+"</td>" +
                    "<td>"+content.id+"</td>" +
                    "<td>"+content.parent_id+"</td>" +
                    "<td>" +
                    "<button class=\"btn btn-primary btn-small\" onclick=\"updateMenu('menu_tr_"+content.id+"');\">编辑菜单</button>" +
                    "<button class=\"btn btn-danger btn-small\" onclick=\"delMenu("+content.id+", "+content.parent_id+");\">删除菜单</button>" +
                    "</td>" +
                    "<td></td>" +
                    "</tr>");

                currTr.after(submenutr);
                currTr = submenutr;
            });
        });

        // $(invokeTr).addClass("choice_tr");
       // $("tr[name=submenu_tr_"+parentId+"]").show(1000);
    }

    /* 表单提交验证 */
    function addNewFormSubmit(){
        var isValidateOK = true;

        var permission_code_input = $("#permission_code");
        if(permission_code_input.val() === null || permission_code_input.val() === ''){
            permission_code_input.after($("<span style='color:red;'>权限编码不能为空</span>"));
            permission_code_input.addClass("errorInput");
            isValidateOK = false;
        }

        var permission_name_input = $("#permission_name");
        if(permission_name_input.val() === null || permission_name_input.val() === ''){
            permission_name_input.after($("<span style='color:red;'>权限名称不能为空</span>"));
            permission_name_input.addClass("errorInput");
            isValidateOK = false;
        }

        var url_input = $("#url");
        if(url_input.val() === null || url_input.val() === ''){
            url_input.after($("<span style='color:red;'>url地址不能为空</span>"));
            url_input.addClass("errorInput");
            isValidateOK = false;
        }

        if(!isValidateOK){
            return ;
        }

        var postData = $("#addNewPermissionForm").serializeObject();
        console.log(postData);

        $.ajax({
            type: "post",
            dataType: 'json',
            url: "${basePath}/oa/system/menu/add_or_update.do",
            contentType: 'application/json',
            data: JSON.stringify(postData),
            success: function (data) {
                if(data.code !== 0){
                    sweetAlert("哎呦……", data.message,"error");
                    return ;
                }

                var permissionIdValue = $("#permissionId").val();
                if(permissionIdValue !== null && permissionIdValue !== ''){
                    // 编辑
                    sweetAlert("更新成功!", "即将为您刷新页面","success");
                }else{
                    // 新增
                    sweetAlert("添加成功!", "即将为您刷新页面","success");
                }
                setTimeout(function () {
                    window.location.reload();
                },1000);
            }
        });

    }

    /* 更新菜单信息 */
    function updateMenu(trId){
        var chooseTr = $("#"+trId);

        // 填充数据
        $("#permission_name").val(chooseTr.find("td").eq(1).text());
        $("#url").val(chooseTr.find("td").eq(2).text());
        $("#permission_code").val(chooseTr.find("td").eq(3).text());
        $("#description").val(chooseTr.find("td").eq(4).text());
        $("#permissionId").val(chooseTr.find("td").eq(5).text());   // 该键标识是更新权限
        $("#parent_id").find("option[value="+chooseTr.find("td").eq(6).text()+"]").attr("selected","selected");

        $("#addPermissionModalLabel").text("更新菜单资源");

        $("#addPermissionModal").show(1000);
    }

    // 删除菜单（包括一级、二级删除）
    function delMenu(menuId, parentId){
        var url = "${basePath}/oa/system/menu/del.do?menuId="+menuId;

        var alterText = "该操作将无法撤销";
        // 一级菜单
        if(parentId === null || parentId === 0){
            alterText = "删除一级菜单将会级联删除关联的所有二级菜单！且不可恢复"
        }
        swal({
                title: "确定删除吗？",
                text: alterText,
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确认删除！",
                cancelButtonText: "再想想",
                closeOnConfirm: false
            },
            function(){

                $.post(url, {}, function (data) {
                    if(data.code === 0){
                        swal("删除！", "用户删除成功。", "success");
                        setTimeout(function () {
                            window.location.reload();
                        },2000);
                        return ;
                    }
                    swal("删除！", data.message, "error");
                })
            });
    }
</script>

</body>
</html>
