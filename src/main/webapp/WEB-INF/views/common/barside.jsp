<%@ page import="org.apache.shiro.SecurityUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="projectPath" value="${pageContext.request.contextPath}" />

<style>
    .currMenu{
        background-color: #495A80;
    }

    #sidebarDiv dt{
        padding-top: 5px;
        padding-bottom: 5px;
    }
    #sidebarDiv dt,#sidebarDiv dt *{
        color:white;
        font-size: 1.3em;
    }
    #sidebarDiv dd, #sidebarDiv dd *{
        color:white;
        font-size: 1.1em;
    }

    #sidebarDiv{
        margin-top: -10px;
        margin-right: 5px;
        padding:0;
        background-color: #3992d0;
        height: 100%;
    }
    #sidebarDiv dl{
        width: 100%;
        color:white;
        padding: 0;
        margin-left: 0;
    }
    #sidebarDiv dt, #sidebarDiv dd{
        width: 100%;
        color:white;

        padding-left: 2em;
        padding-right: 2em;
    }
    #sidebarDiv dt:hover, #sidebarDiv dd:hover{
        background-color: #317eb4;
    }
</style>

<div id="maskDiv"></div>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <span class="glyphicon glyphicon-home"></span>
                基于工作流的办公自动化系统
            </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
                <li><a href="#">
                    <c:choose>
                        <c:when test="${sessionScope.user == null or sessionScope.user == ''}">
                            用户
                        </c:when>
                        <c:otherwise>
                            ${sessionScope.user.username}
                        </c:otherwise>
                    </c:choose>
                </a>
                </li>
                <li><a href="${pageContext.request.contextPath}/logout">退出登录</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid" style="margin-top:60px;" >
    <div class="row">
        <div class="col-sm-4 col-md-4 col-lg-1 sidebar" id="sidebarDiv">
            <dl class="menu1">
                <dt>人事管理</dt>
                <dd class="first_dd"><a href="#">部门管理</a></dd>
                <dd><a href="#">员工管理</a></dd>
                <dd><a href="#">通讯录管理</a></dd>
            </dl>
            <dl class="menu2">
                <dt>日程管理</dt>
                <dd><a href="#">部门日程</a></dd>
                <dd><a href="#">我的日程</a></dd>
                <dd><a href="#">我的便签</a></dd>
            </dl>
            <dl class="menu3">
                <dt>文件管理</dt>
                <dd><a href="#">文件管理</a></dd>
                <dd><a href="#">回收站</a></dd>
            </dl>
            <dl class="menu3">
                <dt>消息管理</dt>
                <dd><a href="#">短信管理</a></dd>
                <dd><a href="#">邮件管理</a></dd>
                <dd><a href="#">论坛</a></dd>
            </dl>
            <dl class="menu3">
                <dt>工作流管理</dt>
                <dd class="first_dd"><a href="#">流程管理</a></dd>
                <dd><a href="#">表单管理</a></dd>
                <dd><a href="#">运行中的流程</a></dd>
                <dd><a href="#">我的流程</a></dd>
            </dl>
            <dl class="menu3">
                <dt>系统管理</dt>
                <dd class="first_dd"><a href="#">角色管理</a></dd>
                <dd><a href="#">登录日志</a></dd>
                <dd><a href="#">操作日志</a></dd>
                <dd><a href="#">设置</a></dd>
            </dl>
        </div>
<div class="col-sm-7 col-md-7 col-lg-10 main" style="margin-left: 30px;">
<script type="text/javascript">
    $(function () {
        // 先获取菜单，再执行隐藏操作
        listMenu();

        // 当前菜单高亮
        var currParentMenuId = chooseCurrMenu();

        sidebarMenuClick(currParentMenuId);

        // 将dd和a链接绑定
        ddClickBindLink();
    });

    function ddClickBindLink(){
        $("dd").each(function () {
            var ddEle = $(this);
            ddEle.click(function () {
                var url = ddEle.find("a").attr("href");
                window.location.replace(url);
            });
        });
    }

    /* 获取菜单 */
    function listMenu(){
        /*获取当前的登录名*/
        var account = "<%=SecurityUtils.getSubject().getPrincipal()%>";

        console.log("当前登录账户名：" + account);
        var loginUrl = "${pageContext.request.contextPath}/login.html";
        if(account == null || account === '' || account === 'null'){
            console.log(loginUrl);
            swal({
                title: "请登录后操作",
                text: "3秒后为您跳转登录页面,您可以点击<a href="+loginUrl+" style='cursor:pointer'>这里</a>进行跳转...",
                html: true
            });

            setTimeout(function () {
                window.location.replace(loginUrl);
            }, 3000);
            return ;
        }

        $.ajax({
            url : "${pageContext.request.contextPath}/oa/system/menu/allmenu/list.do?account="+account,
            type : 'get',
            async: false,       //使用同步的方式,true为异步方式
            success : function(data){
                $("#sidebarDiv").html("");  // 清空内容
                /* 第一遍遍历，添加一级菜单 */
                $.each(data.data, function (n, value) {
                    if(value.parent_id !== 0){
                        return ;
                    }

                    var eleId = "sidebar_dl_"+value.id;
                    var newDl = $("<dl id='"+eleId+"' style='cursor:pointer;' onclick='javascript:sidebarMenuClick(\""+eleId+"\");'><dt>"+value.name+"</dt></dl>");
                    $("#sidebarDiv").append(newDl);
                });

                /* 第二遍遍历，添加到二级菜单 */
                $.each(data.data, function (n, value) {
                    if(value.parent_id === 0){
                        return ;
                    }

                    var newDd = $("<dd style='display:none;'><a href='"+value.url+"'>"+value.name+"</a></dd>");
                    $("#sidebar_dl_"+value.parent_id).append(newDd);
                    //console.log(value);
                });
            },
            fail:function(){
            }
        });

    }

    /*  菜单点击显示/收缩js */
    function sidebarMenuClick(parentMenuId) {
        console.log(parentMenuId+"=====");
        var chooseDd = $("dl[id='"+parentMenuId+"']").find("dd");
        if(chooseDd.eq(0).css("display") === "block"){
            chooseDd.hide(1000);
            return ;
        }

        var notChooseDd = $("dl[id!='"+parentMenuId+"']").find("dd");
        notChooseDd.hide(1000);

        chooseDd.addClass("choice_menu");
        chooseDd.removeClass("not_choice_menu");
        chooseDd.show(1000);

        chooseCurrMenu();
    };

    // 当前菜单高亮
    function chooseCurrMenu(){
        var currPathName = window.location.pathname;

        $("dd").removeClass("currMenu");
        var sel = "a[href='"+currPathName+"']";
        console.log(sel);
        var currDd = $(sel).parent("dd");
        currDd.addClass("currMenu");

        return currDd.parent("dl").attr("id");
    }
</script>