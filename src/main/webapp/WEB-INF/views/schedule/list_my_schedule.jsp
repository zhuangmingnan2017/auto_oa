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
    <title>用户管理-基于工作流的办公自动化系统</title>
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
        #userRoleSettingModal_having_role_div>div, .operator_div{
            border: 1px solid green;
            display: inline-block;
            background-color: rgba(193,255,193,0.4);
            margin-left: 2px;
            margin-right: 2px;
        }
        #userRoleSettingModal_having_role_div>div{
            margin:20px;
            padding:5px;
        }
    </style>
</head>

<body>
<%@ include  file="../common/barside.jsp"%>
<%--菜单栏--%>
<div class="row">
    <ul style="text-decoration: none;">
        <li><button class="btn btn-primary" onclick="addNewUserMess();">添加用户</button></li>
    </ul>
</div>
<%--权限列表--%>
<div class="row">
    <table class="table table-responsive" id="menuTable">
        <thead>
            <tr>
                <th>序号</th>
                <th>登录账户</th>
                <th>用户名</th>
                <th>手机号码</th>
                <th>电子邮件</th>
                <th>性别</th>
                <th>地址</th>
                <th>操作</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${userList}" var="item" varStatus="status">
            <tr style="cursor: pointer" id="user_tr_${item.id}"}>
                <input type="hidden" name="userId" value="${item.id}" />
                <td>${status.index+1}</td>
                <td>${item.account}</td>
                <td>${item.username}</td>
                <td>${item.phone}</td>
                <td>${item.email}</td>
                <td>
                    <c:if test="${item.sex == 0}">女</c:if>
                    <c:if test="${item.sex == 1}">男</c:if>
                </td>
                <td>${item.address}</td>
                <td>
                    <button class="btn btn-primary btn-sm" onclick="userRoleSet(${item.id},'${item.username}');">分配角色</button>
                    <button class="btn btn-primary btn-sm" onclick="updateUserMess(${item.id}, '${item.username}', this);">编辑用户信息</button>
                    <button class="btn btn-danger btn-sm" onclick="delUserByUserId(${item.id});">删除用户信息</button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<!-- Modal -->
<div class="modal" id="userRoleSettingModal" tabindex="-1" role="dialog" aria-labelledby="userRoleSettingModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="javascript:$('#addPermissionModal').hide(1000);">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="userRoleSettingModalLabel">用户角色配置</h4>
            </div>
                <div class="modal-body">
                    <h4 id="userRoleSettingModal_current_user">当前用户：loading...</h4>
                    <strong>当前用户拥有的角色：</strong>
                    <input type="hidden" id="userRoleSettingModal_choose_user_id" />
                    <div id="userRoleSettingModal_having_role_div">
                        <div id="user_having_role_1">管理员1
                            <span style="cursor: pointer" onmouseover="cancelSpanMouseOver(this)" onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>
                                &nbsp;X&nbsp;
                            </span>
                            <input type="hidden" value="1" />
                        </div>
                        <div id="user_having_role_2">管理员2<span style="cursor: pointer" onmouseover='cancelSpanMouseOver(this);' onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>&nbsp;X&nbsp;</span><input type="hidden" value="2" /></div>
                        <div id="user_having_role_3">管理员3<span style="cursor: pointer" onmouseover='cancelSpanMouseOver(this);' onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>&nbsp;X&nbsp;</span><input type="hidden" value="3" /></div>
                    </div>

                    <div class="row">
                        <div class="col-md-8 form-group">
                            <select id="userRoleSettingModal_add_new_role_select" class="form-control">
                                <option value="1">管理员4</option>
                                <option value="1">管理员5</option>
                                <option value="1">管理员6</option>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <button class="btn btn-primary" onclick="modal_add_new_role();">添加该角色</button>
                        </div>
                    </div>
                </div>
                <div class="modal-footer row">
                    <div class="col-md-12">
                        <button class="btn btn-default" data-dismiss="modal" onclick="javascript:$('#userRoleSettingModal').hide(1000);">关闭</button>
                        <button class="btn btn-primary" onclick="changeUserRole();">确认修改</button>
                    </div>
                </div>
        </div>
    </div>
</div>


<!-- 新增/编辑用户信息 modal start -->
<div class="modal" id="addOrUpdateUserMessModal" tabindex="-1" role="dialog" aria-labelledby="addOrUpdateUserMessModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="javascript:$('#addOrUpdateUserMessModal').hide(1000);">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="addOrUpdateUserMessModalLabel">新增用户信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="addOrUpdateUserMessModalForm" action="#" method="post">
                    <input type="hidden" id="addOrUpdateUserMessModal_userId" name="id" />
                    <div class="form-group">
                        <label for="addOrUpdateUserMessModal_account" class="col-sm-2 control-label">登录账户</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="addOrUpdateUserMessModal_account" name="account" placeholder="登录账户">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="addOrUpdateUserMessModal_username" class="col-sm-2 control-label">用户名</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="addOrUpdateUserMessModal_username" name="username" placeholder="用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="addOrUpdateUserMessModal_password" class="col-sm-2 control-label">登录密码</label>
                        <div class="col-md-10">
                            <input type="password" class="form-control" id="addOrUpdateUserMessModal_password" name="password" placeholder="登录密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="addOrUpdateUserMessModal_repassword" class="col-sm-2 control-label">再输一次密码</label>
                        <div class="col-md-10">
                            <input type="password" class="form-control" id="addOrUpdateUserMessModal_repassword" placeholder="再输入一次密码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="addOrUpdateUserMessModal_phone" class="col-sm-2 control-label">手机号码</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="addOrUpdateUserMessModal_phone" name="phone" placeholder="手机号码">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="addOrUpdateUserMessModal_email" class="col-sm-2 control-label">电子邮件</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="addOrUpdateUserMessModal_email" name="email" placeholder="电子邮件">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">性别</label>
                        <div class="col-md-10">
                            <input type="radio" id="addOrUpdateUserMessModal_sex_0" name="sex" value="0" />
                            <label for="addOrUpdateUserMessModal_sex_0" class="control-label">女生</label>
                            <span style="margin-left: 10%;margin-right: 10%;"></span>
                            <input type="radio" name="sex" value="1" id="addOrUpdateUserMessModal_sex_1" />
                            <label for="addOrUpdateUserMessModal_sex_1" class="control-label">男生</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="addOrUpdateUserMessModal_address" class="col-sm-2 control-label">地址</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" id="addOrUpdateUserMessModal_address" name="address" placeholder="地址">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer row">
                <div class="col-md-12">
                    <button class="btn btn-default" data-dismiss="modal" onclick="javascript:$('#addOrUpdateUserMessModal').hide(1000);">关闭</button>
                    <button class="btn btn-primary" onclick="addOrUpdateUserMessFormSubmit();">确认</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%-- 新增/编辑用户信息 modal end--%>

<%@ include  file="../common/footer.jsp"%>

<script type="text/javascript">
    function addNewUserMess(){
        $("#addOrUpdateUserMessModal input[type='hidden']").val("");
        $("#addOrUpdateUserMessModal input[type='text']").val("");
        $("#addOrUpdateUserMessModal input[type='radio']").css("checked", false);

        $("#addOrUpdateUserMessModal_password").parents("div.form-group").css("display", "block");
        $("#addOrUpdateUserMessModal_repassword").parents("div.form-group").css("display", "block");

        $("#addOrUpdateUserMessModal").show(1000);
    }

    // 编辑用户信息 btnThis是调用者button的引用
    function updateUserMess(userId, username, btnThis){
        $("#addOrUpdateUserMessModalLabel").text("编辑用户["+username+"]的信息");

        $("#addOrUpdateUserMessModal_account").css("disabled", "disabled");
        $("#addOrUpdateUserMessModal_password").parents("div.form-group").css("display", "none");
        $("#addOrUpdateUserMessModal_repassword").parents("div.form-group").css("display", "none");

        var currUserMessTrEle = $(btnThis).parents("tr").eq(0);
        // 填充数据
        $("#addOrUpdateUserMessModal_userId").val(currUserMessTrEle.find("input[name='userId']").val());

        $("#addOrUpdateUserMessModal_account").val(currUserMessTrEle.find("td").eq(1).text());
        $("#addOrUpdateUserMessModal_username").val(currUserMessTrEle.find("td").eq(2).text());
        $("#addOrUpdateUserMessModal_phone").val(currUserMessTrEle.find("td").eq(3).text());
        $("#addOrUpdateUserMessModal_email").val(currUserMessTrEle.find("td").eq(4).text());
        $("#addOrUpdateUserMessModal_address").val(currUserMessTrEle.find("td").eq(6).text());
        var sexValue = currUserMessTrEle.find("td").eq(5).text();
        sexValue = $.trim(sexValue);
        if(sexValue === "男"){
            $("#addOrUpdateUserMessModal_sex_1").click();
        }else if(sexValue === '女'){
            $("#addOrUpdateUserMessModal_sex_0").click();
        }
        $("#addOrUpdateUserMessModal").show(1000);

    }

    /* 表单提交验证 */
    function addOrUpdateUserMessFormSubmit(){
        var is_add = true;

        // 判断是否是编辑
        var userIdVal = $("#addOrUpdateUserMessModal_userId").val();
        if(userIdVal != null && userIdVal !== ''){
            is_add = false;
        }

        var isValidateOK = validateUserMessForm(is_add);

        if(isValidateOK !== true){
            return ;
        }

        var postData = $("#addOrUpdateUserMessModalForm").serializeObject();

        $.ajax({
            type: "post",
            dataType: 'json',
            url: "${basePath}/oa/system/user/add_or_update.do",
            contentType: 'application/json',
            data: JSON.stringify(postData),
            success: function (data) {
                if(data.code !== 0){
                    sweetAlert("哎呦……", "出错了！请稍后重试","error");
                    return ;
                }

                if(is_add !== true){
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

    function validateUserMessForm(is_add){
        var isValidateOK = true;

        var account = $("#addOrUpdateUserMessModal_account");
        if(account.val() === null || account.val() === ''){
            account.after($("<span style='color:red;'>登录账户不能为空</span>"));
            account.addClass("errorInput");
            isValidateOK = false;
        }

        var username = $("#addOrUpdateUserMessModal_username");
        if(username.val() === null || username.val() === ''){
            username.after($("<span style='color:red;'>用户名不能为空</span>"));
            username.addClass("errorInput");
            isValidateOK = false;
        }

        // 是新增还要验证密码
        console.log("is_add:"+is_add);
        if(is_add !== true){
            return isValidateOK;
        }

        var password = $("#addOrUpdateUserMessModal_password");
        if(password.val() === null || password.val() === ''){
            password.after($("<span style='color:red;'>密码不能为空</span>"));
            password.addClass("errorInput");
            isValidateOK = false;
        }

        var repassword = $("#addOrUpdateUserMessModal_repassword");
        if(password.val() !== repassword.val()){
            repassword.after($("<span style='color:red;'>两次密码不一致</span>"));
            repassword.addClass("errorInput");
            isValidateOK = false;
        }

        return isValidateOK;
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
                swal("删除！", "你的虚拟文件已经被删除。", "success");
            });

        /*$.post(url, {}, function (data) {

        })*/
    }

    /* 分配用户角色 */
    function userRoleSet(userId, username){
        // 先获取已经有的角色，展示出来，再提供列表勾选
        $("#userRoleSettingModal_current_user").text("当前操作用户："+username);
        $("#userRoleSettingModal_choose_user_id").val(userId);

        loadModalUserRoleByUserId(userId);
        loadModalAllRole();

        $("#userRoleSettingModal").show(1000);
    }


    /* 新增角色 */
    function modal_add_new_role() {
        var selectEle = $("#userRoleSettingModal_add_new_role_select>option:selected");

        var roleId = selectEle.val();

        if($("#user_having_role_"+roleId).length > 0){
            swal("该角色已经在列表中了！");
            return ;
        }

        $("#userRoleSettingModal_having_role_div").append(
            $("<div id='user_having_role_"+roleId+"'>"+selectEle.text()+"" +
                "<span style='cursor: pointer'" +
                "onmouseover='cancelSpanMouseOver(this);' onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>&nbsp;X&nbsp;</span>" +
                "<input type='hidden' value='"+roleId+"' /></div>")
        )

    }

    function cancelSpanMouseOver(ele) {
        $(ele).parent("div").css("background-color", "rgba(0,0,0,0.2)");
    }

    function cancelSpanMouseout(ele) {
        $(ele).parent("div").css("background-color", "rgba(193,255,193,0.4)");
    }

    function cancelSpanClick(ele){
        $(ele).parent("div").eq(0).remove();
    }

    function changeUserRole() {
        console.log("changeUserRole");
        var currRoleId = "";
        var currUserId = $("#userRoleSettingModal_choose_user_id").val();

        $("#userRoleSettingModal_having_role_div input[type='hidden']").each(function () {
            if(currRoleId !== ""){
                currRoleId += ",";
            }
            currRoleId += $(this).val();
        });

        var url = "${basePath}/oa/system/role/user_role/set_user_role.do";
        var postData = "{\"userId\":"+currUserId+",\"roleIdListStr\":\""+currRoleId+"\"}";

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

    /* 根据userId加载用户的已经配置的用户 */
    function loadModalUserRoleByUserId(userId) {
        var url = "${basePath}/oa/system/role/user_role/list.do?userId="+userId;
        $.get(url, function (data) {
            if(data.code !== 0){
                sweetAlert("哎呦……出错了！", data.message,"error");
                return ;
            }

            if(data.data == null || data.data === ''){
                return ;
            }

            $("#userRoleSettingModal_having_role_div").html("");
            $.each( data.data, function(index, content)
            {
                $("#userRoleSettingModal_having_role_div").append(
                    $("<div id='user_having_role_"+content.id+"'>"+content.role_name+"" +
                        "<span style='cursor: pointer'" +
                        "onmouseover='cancelSpanMouseOver(this);' onmouseout='cancelSpanMouseout(this);' onclick='cancelSpanClick(this);'>&nbsp;X&nbsp;</span>" +
                        "<input type='hidden' value='"+content.id+"' /></div>")
                )
            });
        });
    }

    // 获取所有角色
    function loadModalAllRole(){
        var url = "${basePath}/oa/system/role/list.do";
        var modalSelectEle = $("#userRoleSettingModal_add_new_role_select");

        modalSelectEle.html("");
        $.get(url, function (data) {
            $.each(data.data, function (index, content) {
                modalSelectEle.append($("<option value='"+content.id+"'>"+content.role_name+"</option>"))
            });
        });
    }

    // 删除指定用户
    function delUserByUserId(userId){
        var url = "${basePath}/oa/system/user/del.do?userId="+userId;

        swal({
                title: "确定删除吗？",
                text: "该操作将无法撤销",
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
